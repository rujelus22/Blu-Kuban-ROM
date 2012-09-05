.class public Lcom/android/musicvis/GenericWaveRS;
.super Lcom/android/musicvis/RenderScriptScene;
.source "GenericWaveRS.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/musicvis/GenericWaveRS$WorldState;
    }
.end annotation


# instance fields
.field protected mAudioCapture:Lcom/android/musicvis/AudioCapture;

.field private mCubeMesh:Landroid/renderscript/Mesh;

.field private final mDrawCube:Ljava/lang/Runnable;

.field private final mHandler:Landroid/os/Handler;

.field private mIndexData:[S

.field private mLineIdxAlloc:Landroid/renderscript/Allocation;

.field private mPVAlloc:Landroid/renderscript/ProgramVertexFixedFunction$Constants;

.field private mPVBackground:Landroid/renderscript/ProgramVertex;

.field private mPfBackground:Landroid/renderscript/ProgramFragment;

.field protected mPointAlloc:Landroid/renderscript/Allocation;

.field protected mPointData:[F

.field private mSampler:Landroid/renderscript/Sampler;

.field mScript:Lcom/android/musicvis/ScriptC_waveform;

.field private mTexId:I

.field private mTexture:Landroid/renderscript/Allocation;

.field private mVertexBuffer:Lcom/android/musicvis/ScriptField_Vertex;

.field private mVisible:Z

.field protected mVizData:[I

.field protected mWorldState:Lcom/android/musicvis/GenericWaveRS$WorldState;


# direct methods
.method protected constructor <init>(III)V
    .registers 11
    .parameter "width"
    .parameter "height"
    .parameter "texid"

    .prologue
    const/4 v6, 0x0

    .line 82
    invoke-direct {p0, p1, p2}, Lcom/android/musicvis/RenderScriptScene;-><init>(II)V

    .line 34
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/android/musicvis/GenericWaveRS;->mHandler:Landroid/os/Handler;

    .line 35
    new-instance v3, Lcom/android/musicvis/GenericWaveRS$1;

    invoke-direct {v3, p0}, Lcom/android/musicvis/GenericWaveRS$1;-><init>(Lcom/android/musicvis/GenericWaveRS;)V

    iput-object v3, p0, Lcom/android/musicvis/GenericWaveRS;->mDrawCube:Ljava/lang/Runnable;

    .line 49
    new-instance v3, Lcom/android/musicvis/GenericWaveRS$WorldState;

    invoke-direct {v3}, Lcom/android/musicvis/GenericWaveRS$WorldState;-><init>()V

    iput-object v3, p0, Lcom/android/musicvis/GenericWaveRS;->mWorldState:Lcom/android/musicvis/GenericWaveRS$WorldState;

    .line 60
    const/16 v3, 0x2000

    new-array v3, v3, [F

    iput-object v3, p0, Lcom/android/musicvis/GenericWaveRS;->mPointData:[F

    .line 64
    const/16 v3, 0x800

    new-array v3, v3, [S

    iput-object v3, p0, Lcom/android/musicvis/GenericWaveRS;->mIndexData:[S

    .line 69
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/musicvis/GenericWaveRS;->mAudioCapture:Lcom/android/musicvis/AudioCapture;

    .line 70
    const/16 v3, 0x400

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/musicvis/GenericWaveRS;->mVizData:[I

    .line 83
    iput p3, p0, Lcom/android/musicvis/GenericWaveRS;->mTexId:I

    .line 84
    iput p1, p0, Lcom/android/musicvis/RenderScriptScene;->mWidth:I

    .line 85
    iput p2, p0, Lcom/android/musicvis/RenderScriptScene;->mHeight:I

    .line 87
    iget-object v3, p0, Lcom/android/musicvis/GenericWaveRS;->mPointData:[F

    array-length v3, v3

    div-int/lit8 v2, v3, 0x8

    .line 88
    .local v2, outlen:I
    div-int/lit8 v0, v2, 0x2

    .line 89
    .local v0, half:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3c
    if-ge v1, v2, :cond_77

    .line 90
    iget-object v3, p0, Lcom/android/musicvis/GenericWaveRS;->mPointData:[F

    mul-int/lit8 v4, v1, 0x8

    sub-int v5, v1, v0

    int-to-float v5, v5

    aput v5, v3, v4

    .line 91
    iget-object v3, p0, Lcom/android/musicvis/GenericWaveRS;->mPointData:[F

    mul-int/lit8 v4, v1, 0x8

    add-int/lit8 v4, v4, 0x2

    aput v6, v3, v4

    .line 92
    iget-object v3, p0, Lcom/android/musicvis/GenericWaveRS;->mPointData:[F

    mul-int/lit8 v4, v1, 0x8

    add-int/lit8 v4, v4, 0x3

    aput v6, v3, v4

    .line 93
    iget-object v3, p0, Lcom/android/musicvis/GenericWaveRS;->mPointData:[F

    mul-int/lit8 v4, v1, 0x8

    add-int/lit8 v4, v4, 0x4

    sub-int v5, v1, v0

    int-to-float v5, v5

    aput v5, v3, v4

    .line 94
    iget-object v3, p0, Lcom/android/musicvis/GenericWaveRS;->mPointData:[F

    mul-int/lit8 v4, v1, 0x8

    add-int/lit8 v4, v4, 0x6

    const/high16 v5, 0x3f80

    aput v5, v3, v4

    .line 95
    iget-object v3, p0, Lcom/android/musicvis/GenericWaveRS;->mPointData:[F

    mul-int/lit8 v4, v1, 0x8

    add-int/lit8 v4, v4, 0x7

    aput v6, v3, v4

    .line 89
    add-int/lit8 v1, v1, 0x1

    goto :goto_3c

    .line 97
    :cond_77
    return-void
.end method


# virtual methods
.method protected createScript()Landroid/renderscript/ScriptC;
    .registers 12

    .prologue
    const/4 v10, 0x0

    .line 113
    new-instance v6, Lcom/android/musicvis/ScriptC_waveform;

    iget-object v7, p0, Lcom/android/musicvis/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    iget-object v8, p0, Lcom/android/musicvis/RenderScriptScene;->mResources:Landroid/content/res/Resources;

    const v9, 0x7f040002

    invoke-direct {v6, v7, v8, v9}, Lcom/android/musicvis/ScriptC_waveform;-><init>(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)V

    iput-object v6, p0, Lcom/android/musicvis/GenericWaveRS;->mScript:Lcom/android/musicvis/ScriptC_waveform;

    .line 116
    iget-object v6, p0, Lcom/android/musicvis/GenericWaveRS;->mWorldState:Lcom/android/musicvis/GenericWaveRS$WorldState;

    const/4 v7, 0x0

    iput v7, v6, Lcom/android/musicvis/GenericWaveRS$WorldState;->yRotation:F

    .line 117
    iget-object v6, p0, Lcom/android/musicvis/GenericWaveRS;->mWorldState:Lcom/android/musicvis/GenericWaveRS$WorldState;

    iget v7, p0, Lcom/android/musicvis/RenderScriptScene;->mWidth:I

    iput v7, v6, Lcom/android/musicvis/GenericWaveRS$WorldState;->width:I

    .line 118
    invoke-virtual {p0}, Lcom/android/musicvis/GenericWaveRS;->updateWorldState()V

    .line 126
    new-instance v4, Landroid/renderscript/ProgramVertexFixedFunction$Builder;

    iget-object v6, p0, Lcom/android/musicvis/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v4, v6}, Landroid/renderscript/ProgramVertexFixedFunction$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 127
    .local v4, pvb:Landroid/renderscript/ProgramVertexFixedFunction$Builder;
    invoke-virtual {v4}, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->create()Landroid/renderscript/ProgramVertexFixedFunction;

    move-result-object v6

    iput-object v6, p0, Lcom/android/musicvis/GenericWaveRS;->mPVBackground:Landroid/renderscript/ProgramVertex;

    .line 128
    new-instance v6, Landroid/renderscript/ProgramVertexFixedFunction$Constants;

    iget-object v7, p0, Lcom/android/musicvis/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v6, v7}, Landroid/renderscript/ProgramVertexFixedFunction$Constants;-><init>(Landroid/renderscript/RenderScript;)V

    iput-object v6, p0, Lcom/android/musicvis/GenericWaveRS;->mPVAlloc:Landroid/renderscript/ProgramVertexFixedFunction$Constants;

    .line 129
    iget-object v6, p0, Lcom/android/musicvis/GenericWaveRS;->mPVBackground:Landroid/renderscript/ProgramVertex;

    check-cast v6, Landroid/renderscript/ProgramVertexFixedFunction;

    iget-object v7, p0, Lcom/android/musicvis/GenericWaveRS;->mPVAlloc:Landroid/renderscript/ProgramVertexFixedFunction$Constants;

    invoke-virtual {v6, v7}, Landroid/renderscript/ProgramVertexFixedFunction;->bindConstants(Landroid/renderscript/ProgramVertexFixedFunction$Constants;)V

    .line 130
    new-instance v3, Landroid/renderscript/Matrix4f;

    invoke-direct {v3}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 131
    .local v3, proj:Landroid/renderscript/Matrix4f;
    iget v6, p0, Lcom/android/musicvis/RenderScriptScene;->mWidth:I

    iget v7, p0, Lcom/android/musicvis/RenderScriptScene;->mHeight:I

    invoke-virtual {v3, v6, v7}, Landroid/renderscript/Matrix4f;->loadProjectionNormalized(II)V

    .line 132
    iget-object v6, p0, Lcom/android/musicvis/GenericWaveRS;->mPVAlloc:Landroid/renderscript/ProgramVertexFixedFunction$Constants;

    invoke-virtual {v6, v3}, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->setProjection(Landroid/renderscript/Matrix4f;)V

    .line 134
    iget-object v6, p0, Lcom/android/musicvis/GenericWaveRS;->mScript:Lcom/android/musicvis/ScriptC_waveform;

    iget-object v7, p0, Lcom/android/musicvis/GenericWaveRS;->mPVBackground:Landroid/renderscript/ProgramVertex;

    invoke-virtual {v6, v7}, Lcom/android/musicvis/ScriptC_waveform;->set_gPVBackground(Landroid/renderscript/ProgramVertex;)V

    .line 136
    new-instance v6, Lcom/android/musicvis/ScriptField_Vertex;

    iget-object v7, p0, Lcom/android/musicvis/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    iget-object v8, p0, Lcom/android/musicvis/GenericWaveRS;->mPointData:[F

    array-length v8, v8

    div-int/lit8 v8, v8, 0x4

    invoke-direct {v6, v7, v8}, Lcom/android/musicvis/ScriptField_Vertex;-><init>(Landroid/renderscript/RenderScript;I)V

    iput-object v6, p0, Lcom/android/musicvis/GenericWaveRS;->mVertexBuffer:Lcom/android/musicvis/ScriptField_Vertex;

    .line 139
    new-instance v2, Landroid/renderscript/Mesh$AllocationBuilder;

    iget-object v6, p0, Lcom/android/musicvis/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v2, v6}, Landroid/renderscript/Mesh$AllocationBuilder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 140
    .local v2, meshBuilder:Landroid/renderscript/Mesh$AllocationBuilder;
    iget-object v6, p0, Lcom/android/musicvis/GenericWaveRS;->mVertexBuffer:Lcom/android/musicvis/ScriptField_Vertex;

    invoke-virtual {v6}, Lcom/android/musicvis/ScriptField_Vertex;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/renderscript/Mesh$AllocationBuilder;->addVertexAllocation(Landroid/renderscript/Allocation;)Landroid/renderscript/Mesh$AllocationBuilder;

    .line 142
    iget-object v6, p0, Lcom/android/musicvis/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    iget-object v7, p0, Lcom/android/musicvis/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-static {v7}, Landroid/renderscript/Element;->U16(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v7

    iget-object v8, p0, Lcom/android/musicvis/GenericWaveRS;->mIndexData:[S

    array-length v8, v8

    const/4 v9, 0x5

    invoke-static {v6, v7, v8, v9}, Landroid/renderscript/Allocation;->createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;II)Landroid/renderscript/Allocation;

    move-result-object v6

    iput-object v6, p0, Lcom/android/musicvis/GenericWaveRS;->mLineIdxAlloc:Landroid/renderscript/Allocation;

    .line 146
    iget-object v6, p0, Lcom/android/musicvis/GenericWaveRS;->mLineIdxAlloc:Landroid/renderscript/Allocation;

    sget-object v7, Landroid/renderscript/Mesh$Primitive;->LINE:Landroid/renderscript/Mesh$Primitive;

    invoke-virtual {v2, v6, v7}, Landroid/renderscript/Mesh$AllocationBuilder;->addIndexSetAllocation(Landroid/renderscript/Allocation;Landroid/renderscript/Mesh$Primitive;)Landroid/renderscript/Mesh$AllocationBuilder;

    .line 149
    invoke-virtual {v2}, Landroid/renderscript/Mesh$AllocationBuilder;->create()Landroid/renderscript/Mesh;

    move-result-object v6

    iput-object v6, p0, Lcom/android/musicvis/GenericWaveRS;->mCubeMesh:Landroid/renderscript/Mesh;

    .line 151
    iget-object v6, p0, Lcom/android/musicvis/GenericWaveRS;->mVertexBuffer:Lcom/android/musicvis/ScriptField_Vertex;

    invoke-virtual {v6}, Lcom/android/musicvis/ScriptField_Vertex;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v6

    iput-object v6, p0, Lcom/android/musicvis/GenericWaveRS;->mPointAlloc:Landroid/renderscript/Allocation;

    .line 153
    iget-object v6, p0, Lcom/android/musicvis/GenericWaveRS;->mScript:Lcom/android/musicvis/ScriptC_waveform;

    iget-object v7, p0, Lcom/android/musicvis/GenericWaveRS;->mVertexBuffer:Lcom/android/musicvis/ScriptField_Vertex;

    invoke-virtual {v6, v7}, Lcom/android/musicvis/ScriptC_waveform;->bind_gPoints(Lcom/android/musicvis/ScriptField_Vertex;)V

    .line 154
    iget-object v6, p0, Lcom/android/musicvis/GenericWaveRS;->mScript:Lcom/android/musicvis/ScriptC_waveform;

    iget-object v7, p0, Lcom/android/musicvis/GenericWaveRS;->mPointAlloc:Landroid/renderscript/Allocation;

    invoke-virtual {v6, v7}, Lcom/android/musicvis/ScriptC_waveform;->set_gPointBuffer(Landroid/renderscript/Allocation;)V

    .line 155
    iget-object v6, p0, Lcom/android/musicvis/GenericWaveRS;->mScript:Lcom/android/musicvis/ScriptC_waveform;

    iget-object v7, p0, Lcom/android/musicvis/GenericWaveRS;->mCubeMesh:Landroid/renderscript/Mesh;

    invoke-virtual {v6, v7}, Lcom/android/musicvis/ScriptC_waveform;->set_gCubeMesh(Landroid/renderscript/Mesh;)V

    .line 158
    invoke-virtual {p0}, Lcom/android/musicvis/GenericWaveRS;->updateWave()V

    .line 159
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b2
    iget-object v6, p0, Lcom/android/musicvis/GenericWaveRS;->mIndexData:[S

    array-length v6, v6

    if-ge v1, v6, :cond_bf

    .line 160
    iget-object v6, p0, Lcom/android/musicvis/GenericWaveRS;->mIndexData:[S

    int-to-short v7, v1

    aput-short v7, v6, v1

    .line 159
    add-int/lit8 v1, v1, 0x1

    goto :goto_b2

    .line 164
    :cond_bf
    iget-object v6, p0, Lcom/android/musicvis/GenericWaveRS;->mPointAlloc:Landroid/renderscript/Allocation;

    iget-object v7, p0, Lcom/android/musicvis/GenericWaveRS;->mPointData:[F

    invoke-virtual {v6, v7}, Landroid/renderscript/Allocation;->copyFromUnchecked([F)V

    .line 165
    iget-object v6, p0, Lcom/android/musicvis/GenericWaveRS;->mLineIdxAlloc:Landroid/renderscript/Allocation;

    iget-object v7, p0, Lcom/android/musicvis/GenericWaveRS;->mIndexData:[S

    invoke-virtual {v6, v7}, Landroid/renderscript/Allocation;->copyFrom([S)V

    .line 166
    iget-object v6, p0, Lcom/android/musicvis/GenericWaveRS;->mLineIdxAlloc:Landroid/renderscript/Allocation;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/renderscript/Allocation;->syncAll(I)V

    .line 169
    iget-object v6, p0, Lcom/android/musicvis/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    iget-object v7, p0, Lcom/android/musicvis/RenderScriptScene;->mResources:Landroid/content/res/Resources;

    iget v8, p0, Lcom/android/musicvis/GenericWaveRS;->mTexId:I

    invoke-static {v6, v7, v8}, Landroid/renderscript/Allocation;->createFromBitmapResource(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)Landroid/renderscript/Allocation;

    move-result-object v6

    iput-object v6, p0, Lcom/android/musicvis/GenericWaveRS;->mTexture:Landroid/renderscript/Allocation;

    .line 171
    iget-object v6, p0, Lcom/android/musicvis/GenericWaveRS;->mScript:Lcom/android/musicvis/ScriptC_waveform;

    iget-object v7, p0, Lcom/android/musicvis/GenericWaveRS;->mTexture:Landroid/renderscript/Allocation;

    invoke-virtual {v6, v7}, Lcom/android/musicvis/ScriptC_waveform;->set_gTlinetexture(Landroid/renderscript/Allocation;)V

    .line 176
    new-instance v5, Landroid/renderscript/Sampler$Builder;

    iget-object v6, p0, Lcom/android/musicvis/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v5, v6}, Landroid/renderscript/Sampler$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 177
    .local v5, samplerBuilder:Landroid/renderscript/Sampler$Builder;
    sget-object v6, Landroid/renderscript/Sampler$Value;->LINEAR:Landroid/renderscript/Sampler$Value;

    invoke-virtual {v5, v6}, Landroid/renderscript/Sampler$Builder;->setMinification(Landroid/renderscript/Sampler$Value;)V

    .line 178
    sget-object v6, Landroid/renderscript/Sampler$Value;->LINEAR:Landroid/renderscript/Sampler$Value;

    invoke-virtual {v5, v6}, Landroid/renderscript/Sampler$Builder;->setMagnification(Landroid/renderscript/Sampler$Value;)V

    .line 179
    sget-object v6, Landroid/renderscript/Sampler$Value;->WRAP:Landroid/renderscript/Sampler$Value;

    invoke-virtual {v5, v6}, Landroid/renderscript/Sampler$Builder;->setWrapS(Landroid/renderscript/Sampler$Value;)V

    .line 180
    sget-object v6, Landroid/renderscript/Sampler$Value;->WRAP:Landroid/renderscript/Sampler$Value;

    invoke-virtual {v5, v6}, Landroid/renderscript/Sampler$Builder;->setWrapT(Landroid/renderscript/Sampler$Value;)V

    .line 181
    invoke-virtual {v5}, Landroid/renderscript/Sampler$Builder;->create()Landroid/renderscript/Sampler;

    move-result-object v6

    iput-object v6, p0, Lcom/android/musicvis/GenericWaveRS;->mSampler:Landroid/renderscript/Sampler;

    .line 183
    new-instance v0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;

    iget-object v6, p0, Lcom/android/musicvis/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v0, v6}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 184
    .local v0, builder:Landroid/renderscript/ProgramFragmentFixedFunction$Builder;
    sget-object v6, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;->REPLACE:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;

    sget-object v7, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;->RGBA:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;

    invoke-virtual {v0, v6, v7, v10}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->setTexture(Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;I)Landroid/renderscript/ProgramFragmentFixedFunction$Builder;

    .line 186
    invoke-virtual {v0}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->create()Landroid/renderscript/ProgramFragmentFixedFunction;

    move-result-object v6

    iput-object v6, p0, Lcom/android/musicvis/GenericWaveRS;->mPfBackground:Landroid/renderscript/ProgramFragment;

    .line 187
    iget-object v6, p0, Lcom/android/musicvis/GenericWaveRS;->mPfBackground:Landroid/renderscript/ProgramFragment;

    iget-object v7, p0, Lcom/android/musicvis/GenericWaveRS;->mSampler:Landroid/renderscript/Sampler;

    invoke-virtual {v6, v7, v10}, Landroid/renderscript/ProgramFragment;->bindSampler(Landroid/renderscript/Sampler;I)V

    .line 189
    iget-object v6, p0, Lcom/android/musicvis/GenericWaveRS;->mScript:Lcom/android/musicvis/ScriptC_waveform;

    iget-object v7, p0, Lcom/android/musicvis/GenericWaveRS;->mPfBackground:Landroid/renderscript/ProgramFragment;

    invoke-virtual {v6, v7}, Lcom/android/musicvis/ScriptC_waveform;->set_gPFBackground(Landroid/renderscript/ProgramFragment;)V

    .line 191
    iget-object v6, p0, Lcom/android/musicvis/GenericWaveRS;->mScript:Lcom/android/musicvis/ScriptC_waveform;

    return-object v6
.end method

.method public resize(II)V
    .registers 6
    .parameter "width"
    .parameter "height"

    .prologue
    .line 101
    invoke-super {p0, p1, p2}, Lcom/android/musicvis/RenderScriptScene;->resize(II)V

    .line 102
    iget-object v1, p0, Lcom/android/musicvis/GenericWaveRS;->mWorldState:Lcom/android/musicvis/GenericWaveRS$WorldState;

    iput p1, v1, Lcom/android/musicvis/GenericWaveRS$WorldState;->width:I

    .line 103
    iget-object v1, p0, Lcom/android/musicvis/GenericWaveRS;->mPVAlloc:Landroid/renderscript/ProgramVertexFixedFunction$Constants;

    if-eqz v1, :cond_1c

    .line 104
    new-instance v0, Landroid/renderscript/Matrix4f;

    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 105
    .local v0, proj:Landroid/renderscript/Matrix4f;
    iget v1, p0, Lcom/android/musicvis/RenderScriptScene;->mWidth:I

    iget v2, p0, Lcom/android/musicvis/RenderScriptScene;->mHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Matrix4f;->loadProjectionNormalized(II)V

    .line 106
    iget-object v1, p0, Lcom/android/musicvis/GenericWaveRS;->mPVAlloc:Landroid/renderscript/ProgramVertexFixedFunction$Constants;

    invoke-virtual {v1, v0}, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->setProjection(Landroid/renderscript/Matrix4f;)V

    .line 108
    .end local v0           #proj:Landroid/renderscript/Matrix4f;
    :cond_1c
    return-void
.end method

.method public setOffset(FFII)V
    .registers 8
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "xPixels"
    .parameter "yPixels"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/musicvis/GenericWaveRS;->mWorldState:Lcom/android/musicvis/GenericWaveRS$WorldState;

    const/high16 v1, 0x4080

    mul-float/2addr v1, p1

    const/high16 v2, 0x4334

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/android/musicvis/GenericWaveRS$WorldState;->yRotation:F

    .line 197
    invoke-virtual {p0}, Lcom/android/musicvis/GenericWaveRS;->updateWorldState()V

    .line 198
    return-void
.end method

.method public start()V
    .registers 3

    .prologue
    .line 202
    invoke-super {p0}, Lcom/android/musicvis/RenderScriptScene;->start()V

    .line 203
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/musicvis/GenericWaveRS;->mVisible:Z

    .line 204
    iget-object v0, p0, Lcom/android/musicvis/GenericWaveRS;->mAudioCapture:Lcom/android/musicvis/AudioCapture;

    if-eqz v0, :cond_f

    .line 205
    iget-object v0, p0, Lcom/android/musicvis/GenericWaveRS;->mAudioCapture:Lcom/android/musicvis/AudioCapture;

    invoke-virtual {v0}, Lcom/android/musicvis/AudioCapture;->start()V

    .line 207
    :cond_f
    const-wide/16 v0, 0xc8

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 208
    invoke-virtual {p0}, Lcom/android/musicvis/GenericWaveRS;->updateWave()V

    .line 209
    return-void
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 213
    invoke-super {p0}, Lcom/android/musicvis/RenderScriptScene;->stop()V

    .line 214
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/musicvis/GenericWaveRS;->mVisible:Z

    .line 215
    iget-object v0, p0, Lcom/android/musicvis/GenericWaveRS;->mAudioCapture:Lcom/android/musicvis/AudioCapture;

    if-eqz v0, :cond_f

    .line 216
    iget-object v0, p0, Lcom/android/musicvis/GenericWaveRS;->mAudioCapture:Lcom/android/musicvis/AudioCapture;

    invoke-virtual {v0}, Lcom/android/musicvis/AudioCapture;->stop()V

    .line 218
    :cond_f
    invoke-virtual {p0}, Lcom/android/musicvis/GenericWaveRS;->updateWave()V

    .line 219
    return-void
.end method

.method public update()V
    .registers 1

    .prologue
    .line 222
    return-void
.end method

.method updateWave()V
    .registers 5

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/musicvis/GenericWaveRS;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/musicvis/GenericWaveRS;->mDrawCube:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 226
    iget-boolean v0, p0, Lcom/android/musicvis/GenericWaveRS;->mVisible:Z

    if-nez v0, :cond_c

    .line 233
    :goto_b
    return-void

    .line 229
    :cond_c
    iget-object v0, p0, Lcom/android/musicvis/GenericWaveRS;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/musicvis/GenericWaveRS;->mDrawCube:Ljava/lang/Runnable;

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 230
    invoke-virtual {p0}, Lcom/android/musicvis/GenericWaveRS;->update()V

    .line 231
    iget-object v0, p0, Lcom/android/musicvis/GenericWaveRS;->mWorldState:Lcom/android/musicvis/GenericWaveRS$WorldState;

    iget v1, v0, Lcom/android/musicvis/GenericWaveRS$WorldState;->waveCounter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/musicvis/GenericWaveRS$WorldState;->waveCounter:I

    .line 232
    invoke-virtual {p0}, Lcom/android/musicvis/GenericWaveRS;->updateWorldState()V

    goto :goto_b
.end method

.method protected updateWorldState()V
    .registers 3

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/musicvis/GenericWaveRS;->mScript:Lcom/android/musicvis/ScriptC_waveform;

    iget-object v1, p0, Lcom/android/musicvis/GenericWaveRS;->mWorldState:Lcom/android/musicvis/GenericWaveRS$WorldState;

    iget v1, v1, Lcom/android/musicvis/GenericWaveRS$WorldState;->yRotation:F

    invoke-virtual {v0, v1}, Lcom/android/musicvis/ScriptC_waveform;->set_gYRotation(F)V

    .line 237
    iget-object v0, p0, Lcom/android/musicvis/GenericWaveRS;->mScript:Lcom/android/musicvis/ScriptC_waveform;

    iget-object v1, p0, Lcom/android/musicvis/GenericWaveRS;->mWorldState:Lcom/android/musicvis/GenericWaveRS$WorldState;

    iget v1, v1, Lcom/android/musicvis/GenericWaveRS$WorldState;->idle:I

    invoke-virtual {v0, v1}, Lcom/android/musicvis/ScriptC_waveform;->set_gIdle(I)V

    .line 238
    iget-object v0, p0, Lcom/android/musicvis/GenericWaveRS;->mScript:Lcom/android/musicvis/ScriptC_waveform;

    iget-object v1, p0, Lcom/android/musicvis/GenericWaveRS;->mWorldState:Lcom/android/musicvis/GenericWaveRS$WorldState;

    iget v1, v1, Lcom/android/musicvis/GenericWaveRS$WorldState;->waveCounter:I

    invoke-virtual {v0, v1}, Lcom/android/musicvis/ScriptC_waveform;->set_gWaveCounter(I)V

    .line 239
    iget-object v0, p0, Lcom/android/musicvis/GenericWaveRS;->mScript:Lcom/android/musicvis/ScriptC_waveform;

    iget-object v1, p0, Lcom/android/musicvis/GenericWaveRS;->mWorldState:Lcom/android/musicvis/GenericWaveRS$WorldState;

    iget v1, v1, Lcom/android/musicvis/GenericWaveRS$WorldState;->width:I

    invoke-virtual {v0, v1}, Lcom/android/musicvis/ScriptC_waveform;->set_gWidth(I)V

    .line 240
    return-void
.end method
