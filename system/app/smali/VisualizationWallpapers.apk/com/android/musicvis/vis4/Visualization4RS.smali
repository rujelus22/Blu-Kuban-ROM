.class Lcom/android/musicvis/vis4/Visualization4RS;
.super Lcom/android/musicvis/RenderScriptScene;
.source "Visualization4RS.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/musicvis/vis4/Visualization4RS$WorldState;
    }
.end annotation


# instance fields
.field private mAudioCapture:Lcom/android/musicvis/AudioCapture;

.field private final mDrawCube:Ljava/lang/Runnable;

.field private final mHandler:Landroid/os/Handler;

.field private mNeedleMass:I

.field private mNeedlePos:I

.field private mNeedleSpeed:I

.field private mPVAlloc:Landroid/renderscript/ProgramVertexFixedFunction$Constants;

.field private mPVBackground:Landroid/renderscript/ProgramVertex;

.field private mPfBackground:Landroid/renderscript/ProgramFragment;

.field private mPfsBackground:Landroid/renderscript/ProgramStore;

.field private mSampler:Landroid/renderscript/Sampler;

.field mScript:Lcom/android/musicvis/vis4/ScriptC_vu;

.field private mSpringForceAtOrigin:I

.field private mTextures:[Landroid/renderscript/Allocation;

.field private mVisible:Z

.field private mVizData:[I

.field mWorldState:Lcom/android/musicvis/vis4/Visualization4RS$WorldState;


# direct methods
.method constructor <init>(II)V
    .registers 5
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/android/musicvis/RenderScriptScene;-><init>(II)V

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/musicvis/vis4/Visualization4RS;->mHandler:Landroid/os/Handler;

    .line 38
    new-instance v0, Lcom/android/musicvis/vis4/Visualization4RS$1;

    invoke-direct {v0, p0}, Lcom/android/musicvis/vis4/Visualization4RS$1;-><init>(Lcom/android/musicvis/vis4/Visualization4RS;)V

    iput-object v0, p0, Lcom/android/musicvis/vis4/Visualization4RS;->mDrawCube:Ljava/lang/Runnable;

    .line 45
    iput v1, p0, Lcom/android/musicvis/vis4/Visualization4RS;->mNeedlePos:I

    .line 46
    iput v1, p0, Lcom/android/musicvis/vis4/Visualization4RS;->mNeedleSpeed:I

    .line 48
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/musicvis/vis4/Visualization4RS;->mNeedleMass:I

    .line 49
    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/musicvis/vis4/Visualization4RS;->mSpringForceAtOrigin:I

    .line 55
    new-instance v0, Lcom/android/musicvis/vis4/Visualization4RS$WorldState;

    invoke-direct {v0}, Lcom/android/musicvis/vis4/Visualization4RS$WorldState;-><init>()V

    iput-object v0, p0, Lcom/android/musicvis/vis4/Visualization4RS;->mWorldState:Lcom/android/musicvis/vis4/Visualization4RS$WorldState;

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/musicvis/vis4/Visualization4RS;->mAudioCapture:Lcom/android/musicvis/AudioCapture;

    .line 68
    const/16 v0, 0x400

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/musicvis/vis4/Visualization4RS;->mVizData:[I

    .line 78
    iput p1, p0, Lcom/android/musicvis/RenderScriptScene;->mWidth:I

    .line 79
    iput p2, p0, Lcom/android/musicvis/RenderScriptScene;->mHeight:I

    .line 80
    return-void
.end method


# virtual methods
.method protected createScript()Landroid/renderscript/ScriptC;
    .registers 14

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v8, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 95
    new-instance v4, Lcom/android/musicvis/vis4/ScriptC_vu;

    iget-object v5, p0, Lcom/android/musicvis/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    iget-object v6, p0, Lcom/android/musicvis/RenderScriptScene;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f040001

    invoke-direct {v4, v5, v6, v7}, Lcom/android/musicvis/vis4/ScriptC_vu;-><init>(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)V

    iput-object v4, p0, Lcom/android/musicvis/vis4/Visualization4RS;->mScript:Lcom/android/musicvis/vis4/ScriptC_vu;

    .line 98
    new-instance v2, Landroid/renderscript/ProgramVertexFixedFunction$Builder;

    iget-object v4, p0, Lcom/android/musicvis/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v2, v4}, Landroid/renderscript/ProgramVertexFixedFunction$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 99
    .local v2, pvb:Landroid/renderscript/ProgramVertexFixedFunction$Builder;
    invoke-virtual {v2}, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->create()Landroid/renderscript/ProgramVertexFixedFunction;

    move-result-object v4

    iput-object v4, p0, Lcom/android/musicvis/vis4/Visualization4RS;->mPVBackground:Landroid/renderscript/ProgramVertex;

    .line 100
    new-instance v4, Landroid/renderscript/ProgramVertexFixedFunction$Constants;

    iget-object v5, p0, Lcom/android/musicvis/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v4, v5}, Landroid/renderscript/ProgramVertexFixedFunction$Constants;-><init>(Landroid/renderscript/RenderScript;)V

    iput-object v4, p0, Lcom/android/musicvis/vis4/Visualization4RS;->mPVAlloc:Landroid/renderscript/ProgramVertexFixedFunction$Constants;

    .line 101
    iget-object v4, p0, Lcom/android/musicvis/vis4/Visualization4RS;->mPVBackground:Landroid/renderscript/ProgramVertex;

    check-cast v4, Landroid/renderscript/ProgramVertexFixedFunction;

    iget-object v5, p0, Lcom/android/musicvis/vis4/Visualization4RS;->mPVAlloc:Landroid/renderscript/ProgramVertexFixedFunction$Constants;

    invoke-virtual {v4, v5}, Landroid/renderscript/ProgramVertexFixedFunction;->bindConstants(Landroid/renderscript/ProgramVertexFixedFunction$Constants;)V

    .line 102
    new-instance v1, Landroid/renderscript/Matrix4f;

    invoke-direct {v1}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 103
    .local v1, proj:Landroid/renderscript/Matrix4f;
    iget v4, p0, Lcom/android/musicvis/RenderScriptScene;->mWidth:I

    iget v5, p0, Lcom/android/musicvis/RenderScriptScene;->mHeight:I

    invoke-virtual {v1, v4, v5}, Landroid/renderscript/Matrix4f;->loadProjectionNormalized(II)V

    .line 104
    iget-object v4, p0, Lcom/android/musicvis/vis4/Visualization4RS;->mPVAlloc:Landroid/renderscript/ProgramVertexFixedFunction$Constants;

    invoke-virtual {v4, v1}, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->setProjection(Landroid/renderscript/Matrix4f;)V

    .line 106
    iget-object v4, p0, Lcom/android/musicvis/vis4/Visualization4RS;->mScript:Lcom/android/musicvis/vis4/ScriptC_vu;

    iget-object v5, p0, Lcom/android/musicvis/vis4/Visualization4RS;->mPVBackground:Landroid/renderscript/ProgramVertex;

    invoke-virtual {v4, v5}, Lcom/android/musicvis/vis4/ScriptC_vu;->set_gPVBackground(Landroid/renderscript/ProgramVertex;)V

    .line 108
    invoke-virtual {p0}, Lcom/android/musicvis/vis4/Visualization4RS;->updateWave()V

    .line 110
    const/4 v4, 0x6

    new-array v4, v4, [Landroid/renderscript/Allocation;

    iput-object v4, p0, Lcom/android/musicvis/vis4/Visualization4RS;->mTextures:[Landroid/renderscript/Allocation;

    .line 111
    iget-object v4, p0, Lcom/android/musicvis/vis4/Visualization4RS;->mTextures:[Landroid/renderscript/Allocation;

    iget-object v5, p0, Lcom/android/musicvis/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    iget-object v6, p0, Lcom/android/musicvis/RenderScriptScene;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f020001

    invoke-static {v5, v6, v7}, Landroid/renderscript/Allocation;->createFromBitmapResource(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)Landroid/renderscript/Allocation;

    move-result-object v5

    aput-object v5, v4, v9

    .line 112
    iget-object v4, p0, Lcom/android/musicvis/vis4/Visualization4RS;->mScript:Lcom/android/musicvis/vis4/ScriptC_vu;

    iget-object v5, p0, Lcom/android/musicvis/vis4/Visualization4RS;->mTextures:[Landroid/renderscript/Allocation;

    aget-object v5, v5, v9

    invoke-virtual {v4, v5}, Lcom/android/musicvis/vis4/ScriptC_vu;->set_gTvumeter_background(Landroid/renderscript/Allocation;)V

    .line 113
    iget-object v4, p0, Lcom/android/musicvis/vis4/Visualization4RS;->mTextures:[Landroid/renderscript/Allocation;

    iget-object v5, p0, Lcom/android/musicvis/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    iget-object v6, p0, Lcom/android/musicvis/RenderScriptScene;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f020004

    invoke-static {v5, v6, v7}, Landroid/renderscript/Allocation;->createFromBitmapResource(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)Landroid/renderscript/Allocation;

    move-result-object v5

    aput-object v5, v4, v10

    .line 114
    iget-object v4, p0, Lcom/android/musicvis/vis4/Visualization4RS;->mScript:Lcom/android/musicvis/vis4/ScriptC_vu;

    iget-object v5, p0, Lcom/android/musicvis/vis4/Visualization4RS;->mTextures:[Landroid/renderscript/Allocation;

    aget-object v5, v5, v10

    invoke-virtual {v4, v5}, Lcom/android/musicvis/vis4/ScriptC_vu;->set_gTvumeter_frame(Landroid/renderscript/Allocation;)V

    .line 115
    iget-object v4, p0, Lcom/android/musicvis/vis4/Visualization4RS;->mTextures:[Landroid/renderscript/Allocation;

    iget-object v5, p0, Lcom/android/musicvis/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    iget-object v6, p0, Lcom/android/musicvis/RenderScriptScene;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f020009

    invoke-static {v5, v6, v7}, Landroid/renderscript/Allocation;->createFromBitmapResource(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)Landroid/renderscript/Allocation;

    move-result-object v5

    aput-object v5, v4, v8

    .line 116
    iget-object v4, p0, Lcom/android/musicvis/vis4/Visualization4RS;->mScript:Lcom/android/musicvis/vis4/ScriptC_vu;

    iget-object v5, p0, Lcom/android/musicvis/vis4/Visualization4RS;->mTextures:[Landroid/renderscript/Allocation;

    aget-object v5, v5, v8

    invoke-virtual {v4, v5}, Lcom/android/musicvis/vis4/ScriptC_vu;->set_gTvumeter_peak_on(Landroid/renderscript/Allocation;)V

    .line 117
    iget-object v4, p0, Lcom/android/musicvis/vis4/Visualization4RS;->mTextures:[Landroid/renderscript/Allocation;

    iget-object v5, p0, Lcom/android/musicvis/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    iget-object v6, p0, Lcom/android/musicvis/RenderScriptScene;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f020008

    invoke-static {v5, v6, v7}, Landroid/renderscript/Allocation;->createFromBitmapResource(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)Landroid/renderscript/Allocation;

    move-result-object v5

    aput-object v5, v4, v11

    .line 118
    iget-object v4, p0, Lcom/android/musicvis/vis4/Visualization4RS;->mScript:Lcom/android/musicvis/vis4/ScriptC_vu;

    iget-object v5, p0, Lcom/android/musicvis/vis4/Visualization4RS;->mTextures:[Landroid/renderscript/Allocation;

    aget-object v5, v5, v11

    invoke-virtual {v4, v5}, Lcom/android/musicvis/vis4/ScriptC_vu;->set_gTvumeter_peak_off(Landroid/renderscript/Allocation;)V

    .line 119
    iget-object v4, p0, Lcom/android/musicvis/vis4/Visualization4RS;->mTextures:[Landroid/renderscript/Allocation;

    iget-object v5, p0, Lcom/android/musicvis/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    iget-object v6, p0, Lcom/android/musicvis/RenderScriptScene;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f020007

    invoke-static {v5, v6, v7}, Landroid/renderscript/Allocation;->createFromBitmapResource(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)Landroid/renderscript/Allocation;

    move-result-object v5

    aput-object v5, v4, v12

    .line 120
    iget-object v4, p0, Lcom/android/musicvis/vis4/Visualization4RS;->mScript:Lcom/android/musicvis/vis4/ScriptC_vu;

    iget-object v5, p0, Lcom/android/musicvis/vis4/Visualization4RS;->mTextures:[Landroid/renderscript/Allocation;

    aget-object v5, v5, v12

    invoke-virtual {v4, v5}, Lcom/android/musicvis/vis4/ScriptC_vu;->set_gTvumeter_needle(Landroid/renderscript/Allocation;)V

    .line 121
    iget-object v4, p0, Lcom/android/musicvis/vis4/Visualization4RS;->mTextures:[Landroid/renderscript/Allocation;

    const/4 v5, 0x5

    iget-object v6, p0, Lcom/android/musicvis/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    iget-object v7, p0, Lcom/android/musicvis/RenderScriptScene;->mResources:Landroid/content/res/Resources;

    const v8, 0x7f020002

    invoke-static {v6, v7, v8}, Landroid/renderscript/Allocation;->createFromBitmapResource(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)Landroid/renderscript/Allocation;

    move-result-object v6

    aput-object v6, v4, v5

    .line 122
    iget-object v4, p0, Lcom/android/musicvis/vis4/Visualization4RS;->mScript:Lcom/android/musicvis/vis4/ScriptC_vu;

    iget-object v5, p0, Lcom/android/musicvis/vis4/Visualization4RS;->mTextures:[Landroid/renderscript/Allocation;

    const/4 v6, 0x5

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Lcom/android/musicvis/vis4/ScriptC_vu;->set_gTvumeter_black(Landroid/renderscript/Allocation;)V

    .line 124
    new-instance v3, Landroid/renderscript/Sampler$Builder;

    iget-object v4, p0, Lcom/android/musicvis/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v3, v4}, Landroid/renderscript/Sampler$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 125
    .local v3, samplerBuilder:Landroid/renderscript/Sampler$Builder;
    sget-object v4, Landroid/renderscript/Sampler$Value;->LINEAR:Landroid/renderscript/Sampler$Value;

    invoke-virtual {v3, v4}, Landroid/renderscript/Sampler$Builder;->setMinification(Landroid/renderscript/Sampler$Value;)V

    .line 126
    sget-object v4, Landroid/renderscript/Sampler$Value;->LINEAR:Landroid/renderscript/Sampler$Value;

    invoke-virtual {v3, v4}, Landroid/renderscript/Sampler$Builder;->setMagnification(Landroid/renderscript/Sampler$Value;)V

    .line 127
    sget-object v4, Landroid/renderscript/Sampler$Value;->WRAP:Landroid/renderscript/Sampler$Value;

    invoke-virtual {v3, v4}, Landroid/renderscript/Sampler$Builder;->setWrapS(Landroid/renderscript/Sampler$Value;)V

    .line 128
    sget-object v4, Landroid/renderscript/Sampler$Value;->WRAP:Landroid/renderscript/Sampler$Value;

    invoke-virtual {v3, v4}, Landroid/renderscript/Sampler$Builder;->setWrapT(Landroid/renderscript/Sampler$Value;)V

    .line 129
    invoke-virtual {v3}, Landroid/renderscript/Sampler$Builder;->create()Landroid/renderscript/Sampler;

    move-result-object v4

    iput-object v4, p0, Lcom/android/musicvis/vis4/Visualization4RS;->mSampler:Landroid/renderscript/Sampler;

    .line 132
    new-instance v0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;

    iget-object v4, p0, Lcom/android/musicvis/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v0, v4}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 133
    .local v0, builder:Landroid/renderscript/ProgramFragmentFixedFunction$Builder;
    sget-object v4, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;->REPLACE:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;

    sget-object v5, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;->RGBA:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;

    invoke-virtual {v0, v4, v5, v9}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->setTexture(Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;I)Landroid/renderscript/ProgramFragmentFixedFunction$Builder;

    .line 135
    invoke-virtual {v0}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->create()Landroid/renderscript/ProgramFragmentFixedFunction;

    move-result-object v4

    iput-object v4, p0, Lcom/android/musicvis/vis4/Visualization4RS;->mPfBackground:Landroid/renderscript/ProgramFragment;

    .line 136
    iget-object v4, p0, Lcom/android/musicvis/vis4/Visualization4RS;->mPfBackground:Landroid/renderscript/ProgramFragment;

    iget-object v5, p0, Lcom/android/musicvis/vis4/Visualization4RS;->mSampler:Landroid/renderscript/Sampler;

    invoke-virtual {v4, v5, v9}, Landroid/renderscript/ProgramFragment;->bindSampler(Landroid/renderscript/Sampler;I)V

    .line 138
    iget-object v4, p0, Lcom/android/musicvis/vis4/Visualization4RS;->mScript:Lcom/android/musicvis/vis4/ScriptC_vu;

    iget-object v5, p0, Lcom/android/musicvis/vis4/Visualization4RS;->mPfBackground:Landroid/renderscript/ProgramFragment;

    invoke-virtual {v4, v5}, Lcom/android/musicvis/vis4/ScriptC_vu;->set_gPFBackground(Landroid/renderscript/ProgramFragment;)V

    .line 142
    new-instance v0, Landroid/renderscript/ProgramStore$Builder;

    .end local v0           #builder:Landroid/renderscript/ProgramFragmentFixedFunction$Builder;
    iget-object v4, p0, Lcom/android/musicvis/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v0, v4}, Landroid/renderscript/ProgramStore$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 143
    .local v0, builder:Landroid/renderscript/ProgramStore$Builder;
    sget-object v4, Landroid/renderscript/ProgramStore$DepthFunc;->ALWAYS:Landroid/renderscript/ProgramStore$DepthFunc;

    invoke-virtual {v0, v4}, Landroid/renderscript/ProgramStore$Builder;->setDepthFunc(Landroid/renderscript/ProgramStore$DepthFunc;)Landroid/renderscript/ProgramStore$Builder;

    .line 145
    sget-object v4, Landroid/renderscript/ProgramStore$BlendSrcFunc;->ONE:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    sget-object v5, Landroid/renderscript/ProgramStore$BlendDstFunc;->ONE_MINUS_SRC_ALPHA:Landroid/renderscript/ProgramStore$BlendDstFunc;

    invoke-virtual {v0, v4, v5}, Landroid/renderscript/ProgramStore$Builder;->setBlendFunc(Landroid/renderscript/ProgramStore$BlendSrcFunc;Landroid/renderscript/ProgramStore$BlendDstFunc;)Landroid/renderscript/ProgramStore$Builder;

    .line 146
    invoke-virtual {v0, v10}, Landroid/renderscript/ProgramStore$Builder;->setDitherEnabled(Z)Landroid/renderscript/ProgramStore$Builder;

    .line 147
    invoke-virtual {v0, v9}, Landroid/renderscript/ProgramStore$Builder;->setDepthMaskEnabled(Z)Landroid/renderscript/ProgramStore$Builder;

    .line 148
    invoke-virtual {v0}, Landroid/renderscript/ProgramStore$Builder;->create()Landroid/renderscript/ProgramStore;

    move-result-object v4

    iput-object v4, p0, Lcom/android/musicvis/vis4/Visualization4RS;->mPfsBackground:Landroid/renderscript/ProgramStore;

    .line 150
    iget-object v4, p0, Lcom/android/musicvis/vis4/Visualization4RS;->mScript:Lcom/android/musicvis/vis4/ScriptC_vu;

    iget-object v5, p0, Lcom/android/musicvis/vis4/Visualization4RS;->mPfsBackground:Landroid/renderscript/ProgramStore;

    invoke-virtual {v4, v5}, Lcom/android/musicvis/vis4/ScriptC_vu;->set_gPFSBackground(Landroid/renderscript/ProgramStore;)V

    .line 153
    iget-object v4, p0, Lcom/android/musicvis/vis4/Visualization4RS;->mScript:Lcom/android/musicvis/vis4/ScriptC_vu;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/musicvis/vis4/ScriptC_vu;->setTimeZone(Ljava/lang/String;)V

    .line 155
    iget-object v4, p0, Lcom/android/musicvis/vis4/Visualization4RS;->mScript:Lcom/android/musicvis/vis4/ScriptC_vu;

    return-object v4
.end method

.method public resize(II)V
    .registers 5
    .parameter "width"
    .parameter "height"

    .prologue
    .line 84
    invoke-super {p0, p1, p2}, Lcom/android/musicvis/RenderScriptScene;->resize(II)V

    .line 85
    iget-object v1, p0, Lcom/android/musicvis/vis4/Visualization4RS;->mPVAlloc:Landroid/renderscript/ProgramVertexFixedFunction$Constants;

    if-eqz v1, :cond_14

    .line 86
    new-instance v0, Landroid/renderscript/Matrix4f;

    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 87
    .local v0, proj:Landroid/renderscript/Matrix4f;
    invoke-virtual {v0, p1, p2}, Landroid/renderscript/Matrix4f;->loadProjectionNormalized(II)V

    .line 88
    iget-object v1, p0, Lcom/android/musicvis/vis4/Visualization4RS;->mPVAlloc:Landroid/renderscript/ProgramVertexFixedFunction$Constants;

    invoke-virtual {v1, v0}, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->setProjection(Landroid/renderscript/Matrix4f;)V

    .line 90
    .end local v0           #proj:Landroid/renderscript/Matrix4f;
    :cond_14
    return-void
.end method

.method public start()V
    .registers 4

    .prologue
    .line 160
    invoke-super {p0}, Lcom/android/musicvis/RenderScriptScene;->start()V

    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/musicvis/vis4/Visualization4RS;->mVisible:Z

    .line 162
    iget-object v0, p0, Lcom/android/musicvis/vis4/Visualization4RS;->mAudioCapture:Lcom/android/musicvis/AudioCapture;

    if-nez v0, :cond_14

    .line 163
    new-instance v0, Lcom/android/musicvis/AudioCapture;

    const/4 v1, 0x0

    const/16 v2, 0x400

    invoke-direct {v0, v1, v2}, Lcom/android/musicvis/AudioCapture;-><init>(II)V

    iput-object v0, p0, Lcom/android/musicvis/vis4/Visualization4RS;->mAudioCapture:Lcom/android/musicvis/AudioCapture;

    .line 165
    :cond_14
    iget-object v0, p0, Lcom/android/musicvis/vis4/Visualization4RS;->mAudioCapture:Lcom/android/musicvis/AudioCapture;

    invoke-virtual {v0}, Lcom/android/musicvis/AudioCapture;->start()V

    .line 166
    invoke-virtual {p0}, Lcom/android/musicvis/vis4/Visualization4RS;->updateWave()V

    .line 167
    return-void
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 171
    invoke-super {p0}, Lcom/android/musicvis/RenderScriptScene;->stop()V

    .line 172
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/musicvis/vis4/Visualization4RS;->mVisible:Z

    .line 173
    iget-object v0, p0, Lcom/android/musicvis/vis4/Visualization4RS;->mAudioCapture:Lcom/android/musicvis/AudioCapture;

    if-eqz v0, :cond_17

    .line 174
    iget-object v0, p0, Lcom/android/musicvis/vis4/Visualization4RS;->mAudioCapture:Lcom/android/musicvis/AudioCapture;

    invoke-virtual {v0}, Lcom/android/musicvis/AudioCapture;->stop()V

    .line 175
    iget-object v0, p0, Lcom/android/musicvis/vis4/Visualization4RS;->mAudioCapture:Lcom/android/musicvis/AudioCapture;

    invoke-virtual {v0}, Lcom/android/musicvis/AudioCapture;->release()V

    .line 176
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/musicvis/vis4/Visualization4RS;->mAudioCapture:Lcom/android/musicvis/AudioCapture;

    .line 178
    :cond_17
    return-void
.end method

.method updateWave()V
    .registers 13

    .prologue
    const/16 v11, 0x7fff

    const/4 v10, 0x0

    .line 181
    iget-object v6, p0, Lcom/android/musicvis/vis4/Visualization4RS;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/musicvis/vis4/Visualization4RS;->mDrawCube:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 182
    iget-boolean v6, p0, Lcom/android/musicvis/vis4/Visualization4RS;->mVisible:Z

    if-nez v6, :cond_f

    .line 247
    :goto_e
    return-void

    .line 185
    :cond_f
    iget-object v6, p0, Lcom/android/musicvis/vis4/Visualization4RS;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/musicvis/vis4/Visualization4RS;->mDrawCube:Ljava/lang/Runnable;

    const-wide/16 v8, 0x14

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 187
    const/4 v2, 0x0

    .line 188
    .local v2, len:I
    iget-object v6, p0, Lcom/android/musicvis/vis4/Visualization4RS;->mAudioCapture:Lcom/android/musicvis/AudioCapture;

    if-eqz v6, :cond_2b

    .line 190
    iget-object v6, p0, Lcom/android/musicvis/vis4/Visualization4RS;->mAudioCapture:Lcom/android/musicvis/AudioCapture;

    const/16 v7, 0x200

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lcom/android/musicvis/AudioCapture;->getFormattedData(II)[I

    move-result-object v6

    iput-object v6, p0, Lcom/android/musicvis/vis4/Visualization4RS;->mVizData:[I

    .line 191
    iget-object v6, p0, Lcom/android/musicvis/vis4/Visualization4RS;->mVizData:[I

    array-length v2, v6

    .line 196
    :cond_2b
    const/4 v5, 0x0

    .line 197
    .local v5, volt:I
    if-lez v2, :cond_3d

    .line 198
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2f
    if-ge v1, v2, :cond_3c

    .line 199
    iget-object v6, p0, Lcom/android/musicvis/vis4/Visualization4RS;->mVizData:[I

    aget v4, v6, v1

    .line 200
    .local v4, val:I
    if-gez v4, :cond_38

    .line 201
    neg-int v4, v4

    .line 203
    :cond_38
    add-int/2addr v5, v4

    .line 198
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    .line 205
    .end local v4           #val:I
    :cond_3c
    div-int/2addr v5, v2

    .line 226
    .end local v1           #i:I
    :cond_3d
    iget v6, p0, Lcom/android/musicvis/vis4/Visualization4RS;->mNeedleSpeed:I

    mul-int/lit8 v6, v6, 0x3

    sub-int v6, v5, v6

    iget v7, p0, Lcom/android/musicvis/vis4/Visualization4RS;->mNeedlePos:I

    iget v8, p0, Lcom/android/musicvis/vis4/Visualization4RS;->mSpringForceAtOrigin:I

    add-int/2addr v7, v8

    sub-int v3, v6, v7

    .line 227
    .local v3, netforce:I
    iget v6, p0, Lcom/android/musicvis/vis4/Visualization4RS;->mNeedleMass:I

    div-int v0, v3, v6

    .line 228
    .local v0, acceleration:I
    iget v6, p0, Lcom/android/musicvis/vis4/Visualization4RS;->mNeedleSpeed:I

    add-int/2addr v6, v0

    iput v6, p0, Lcom/android/musicvis/vis4/Visualization4RS;->mNeedleSpeed:I

    .line 229
    iget v6, p0, Lcom/android/musicvis/vis4/Visualization4RS;->mNeedlePos:I

    iget v7, p0, Lcom/android/musicvis/vis4/Visualization4RS;->mNeedleSpeed:I

    add-int/2addr v6, v7

    iput v6, p0, Lcom/android/musicvis/vis4/Visualization4RS;->mNeedlePos:I

    .line 230
    iget v6, p0, Lcom/android/musicvis/vis4/Visualization4RS;->mNeedlePos:I

    if-gez v6, :cond_91

    .line 231
    iput v10, p0, Lcom/android/musicvis/vis4/Visualization4RS;->mNeedlePos:I

    .line 232
    iput v10, p0, Lcom/android/musicvis/vis4/Visualization4RS;->mNeedleSpeed:I

    .line 240
    :cond_62
    :goto_62
    iget-object v6, p0, Lcom/android/musicvis/vis4/Visualization4RS;->mWorldState:Lcom/android/musicvis/vis4/Visualization4RS$WorldState;

    iget v6, v6, Lcom/android/musicvis/vis4/Visualization4RS$WorldState;->mPeak:I

    if-lez v6, :cond_70

    .line 241
    iget-object v6, p0, Lcom/android/musicvis/vis4/Visualization4RS;->mWorldState:Lcom/android/musicvis/vis4/Visualization4RS$WorldState;

    iget v7, v6, Lcom/android/musicvis/vis4/Visualization4RS$WorldState;->mPeak:I

    add-int/lit8 v7, v7, -0x1

    iput v7, v6, Lcom/android/musicvis/vis4/Visualization4RS$WorldState;->mPeak:I

    .line 244
    :cond_70
    iget-object v6, p0, Lcom/android/musicvis/vis4/Visualization4RS;->mWorldState:Lcom/android/musicvis/vis4/Visualization4RS$WorldState;

    const/high16 v7, 0x4303

    iget v8, p0, Lcom/android/musicvis/vis4/Visualization4RS;->mNeedlePos:I

    int-to-float v8, v8

    const/high16 v9, 0x43cd

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    iput v7, v6, Lcom/android/musicvis/vis4/Visualization4RS$WorldState;->mAngle:F

    .line 245
    iget-object v6, p0, Lcom/android/musicvis/vis4/Visualization4RS;->mScript:Lcom/android/musicvis/vis4/ScriptC_vu;

    iget-object v7, p0, Lcom/android/musicvis/vis4/Visualization4RS;->mWorldState:Lcom/android/musicvis/vis4/Visualization4RS$WorldState;

    iget v7, v7, Lcom/android/musicvis/vis4/Visualization4RS$WorldState;->mAngle:F

    invoke-virtual {v6, v7}, Lcom/android/musicvis/vis4/ScriptC_vu;->set_gAngle(F)V

    .line 246
    iget-object v6, p0, Lcom/android/musicvis/vis4/Visualization4RS;->mScript:Lcom/android/musicvis/vis4/ScriptC_vu;

    iget-object v7, p0, Lcom/android/musicvis/vis4/Visualization4RS;->mWorldState:Lcom/android/musicvis/vis4/Visualization4RS$WorldState;

    iget v7, v7, Lcom/android/musicvis/vis4/Visualization4RS$WorldState;->mPeak:I

    invoke-virtual {v6, v7}, Lcom/android/musicvis/vis4/ScriptC_vu;->set_gPeak(I)V

    goto/16 :goto_e

    .line 233
    :cond_91
    iget v6, p0, Lcom/android/musicvis/vis4/Visualization4RS;->mNeedlePos:I

    if-le v6, v11, :cond_62

    .line 234
    iget v6, p0, Lcom/android/musicvis/vis4/Visualization4RS;->mNeedlePos:I

    const v7, 0x8235

    if-le v6, v7, :cond_a2

    .line 235
    iget-object v6, p0, Lcom/android/musicvis/vis4/Visualization4RS;->mWorldState:Lcom/android/musicvis/vis4/Visualization4RS$WorldState;

    const/16 v7, 0xa

    iput v7, v6, Lcom/android/musicvis/vis4/Visualization4RS$WorldState;->mPeak:I

    .line 237
    :cond_a2
    iput v11, p0, Lcom/android/musicvis/vis4/Visualization4RS;->mNeedlePos:I

    .line 238
    iput v10, p0, Lcom/android/musicvis/vis4/Visualization4RS;->mNeedleSpeed:I

    goto :goto_62
.end method
