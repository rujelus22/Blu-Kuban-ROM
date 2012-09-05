.class Lcom/android/musicvis/vis5/Visualization5RS;
.super Lcom/android/musicvis/RenderScriptScene;
.source "Visualization5RS.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/musicvis/vis5/Visualization5RS$WorldState;
    }
.end annotation


# instance fields
.field private mAudioCapture:Lcom/android/musicvis/AudioCapture;

.field private mCubeMesh:Landroid/renderscript/Mesh;

.field private final mDrawCube:Ljava/lang/Runnable;

.field private final mHandler:Landroid/os/Handler;

.field private mIndexData:[S

.field private mLineIdxAlloc:Landroid/renderscript/Allocation;

.field private mNeedleMass:I

.field private mNeedlePos:I

.field private mNeedleSpeed:I

.field private mPVAlloc:Landroid/renderscript/ProgramVertexFixedFunction$Constants;

.field private mPVBackground:Landroid/renderscript/ProgramVertex;

.field private mPfBackgroundMip:Landroid/renderscript/ProgramFragment;

.field private mPfBackgroundNoMip:Landroid/renderscript/ProgramFragment;

.field private mPfsBackground:Landroid/renderscript/ProgramStore;

.field protected mPointAlloc:Landroid/renderscript/Allocation;

.field protected mPointData:[F

.field private mPr:Landroid/renderscript/ProgramRaster;

.field private mSamplerMip:Landroid/renderscript/Sampler;

.field private mSamplerNoMip:Landroid/renderscript/Sampler;

.field mScript:Lcom/android/musicvis/vis5/ScriptC_many;

.field private mSpringForceAtOrigin:I

.field private mTextures:[Landroid/renderscript/Allocation;

.field private mVertexBuffer:Lcom/android/musicvis/vis5/ScriptField_Vertex;

.field private mVisible:Z

.field private mVizData:[I

.field mWorldState:Lcom/android/musicvis/vis5/Visualization5RS$WorldState;


# direct methods
.method constructor <init>(II)V
    .registers 10
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 97
    invoke-direct {p0, p1, p2}, Lcom/android/musicvis/RenderScriptScene;-><init>(II)V

    .line 37
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mHandler:Landroid/os/Handler;

    .line 38
    new-instance v3, Lcom/android/musicvis/vis5/Visualization5RS$1;

    invoke-direct {v3, p0}, Lcom/android/musicvis/vis5/Visualization5RS$1;-><init>(Lcom/android/musicvis/vis5/Visualization5RS;)V

    iput-object v3, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mDrawCube:Ljava/lang/Runnable;

    .line 45
    iput v4, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mNeedlePos:I

    .line 46
    iput v4, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mNeedleSpeed:I

    .line 48
    const/16 v3, 0xa

    iput v3, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mNeedleMass:I

    .line 49
    const/16 v3, 0xc8

    iput v3, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mSpringForceAtOrigin:I

    .line 59
    new-instance v3, Lcom/android/musicvis/vis5/Visualization5RS$WorldState;

    invoke-direct {v3}, Lcom/android/musicvis/vis5/Visualization5RS$WorldState;-><init>()V

    iput-object v3, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mWorldState:Lcom/android/musicvis/vis5/Visualization5RS$WorldState;

    .line 80
    const/16 v3, 0x800

    new-array v3, v3, [F

    iput-object v3, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mPointData:[F

    .line 84
    const/16 v3, 0x200

    new-array v3, v3, [S

    iput-object v3, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mIndexData:[S

    .line 86
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mAudioCapture:Lcom/android/musicvis/AudioCapture;

    .line 87
    const/16 v3, 0x400

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mVizData:[I

    .line 98
    iput p1, p0, Lcom/android/musicvis/RenderScriptScene;->mWidth:I

    .line 99
    iput p2, p0, Lcom/android/musicvis/RenderScriptScene;->mHeight:I

    .line 101
    iget-object v3, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mPointData:[F

    array-length v3, v3

    div-int/lit8 v2, v3, 0x8

    .line 102
    .local v2, outlen:I
    div-int/lit8 v0, v2, 0x2

    .line 103
    .local v0, half:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_47
    if-ge v1, v2, :cond_82

    .line 104
    iget-object v3, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mPointData:[F

    mul-int/lit8 v4, v1, 0x8

    sub-int v5, v1, v0

    int-to-float v5, v5

    aput v5, v3, v4

    .line 105
    iget-object v3, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mPointData:[F

    mul-int/lit8 v4, v1, 0x8

    add-int/lit8 v4, v4, 0x2

    aput v6, v3, v4

    .line 106
    iget-object v3, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mPointData:[F

    mul-int/lit8 v4, v1, 0x8

    add-int/lit8 v4, v4, 0x3

    aput v6, v3, v4

    .line 107
    iget-object v3, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mPointData:[F

    mul-int/lit8 v4, v1, 0x8

    add-int/lit8 v4, v4, 0x4

    sub-int v5, v1, v0

    int-to-float v5, v5

    aput v5, v3, v4

    .line 108
    iget-object v3, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mPointData:[F

    mul-int/lit8 v4, v1, 0x8

    add-int/lit8 v4, v4, 0x6

    const/high16 v5, 0x3f80

    aput v5, v3, v4

    .line 109
    iget-object v3, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mPointData:[F

    mul-int/lit8 v4, v1, 0x8

    add-int/lit8 v4, v4, 0x7

    aput v6, v3, v4

    .line 103
    add-int/lit8 v1, v1, 0x1

    goto :goto_47

    .line 111
    :cond_82
    return-void
.end method


# virtual methods
.method protected createScript()Landroid/renderscript/ScriptC;
    .registers 16

    .prologue
    const/4 v10, 0x3

    const/4 v14, 0x5

    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v11, 0x2

    .line 155
    new-instance v5, Lcom/android/musicvis/vis5/ScriptC_many;

    iget-object v6, p0, Lcom/android/musicvis/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    iget-object v7, p0, Lcom/android/musicvis/RenderScriptScene;->mResources:Landroid/content/res/Resources;

    const/high16 v8, 0x7f04

    invoke-direct {v5, v6, v7, v8}, Lcom/android/musicvis/vis5/ScriptC_many;-><init>(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)V

    iput-object v5, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mScript:Lcom/android/musicvis/vis5/ScriptC_many;

    .line 158
    new-instance v4, Landroid/renderscript/ProgramVertexFixedFunction$Builder;

    iget-object v5, p0, Lcom/android/musicvis/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v4, v5}, Landroid/renderscript/ProgramVertexFixedFunction$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 159
    .local v4, pvb:Landroid/renderscript/ProgramVertexFixedFunction$Builder;
    invoke-virtual {v4}, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->create()Landroid/renderscript/ProgramVertexFixedFunction;

    move-result-object v5

    iput-object v5, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mPVBackground:Landroid/renderscript/ProgramVertex;

    .line 160
    new-instance v5, Landroid/renderscript/ProgramVertexFixedFunction$Constants;

    iget-object v6, p0, Lcom/android/musicvis/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v5, v6}, Landroid/renderscript/ProgramVertexFixedFunction$Constants;-><init>(Landroid/renderscript/RenderScript;)V

    iput-object v5, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mPVAlloc:Landroid/renderscript/ProgramVertexFixedFunction$Constants;

    .line 161
    iget-object v5, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mPVBackground:Landroid/renderscript/ProgramVertex;

    check-cast v5, Landroid/renderscript/ProgramVertexFixedFunction;

    iget-object v6, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mPVAlloc:Landroid/renderscript/ProgramVertexFixedFunction$Constants;

    invoke-virtual {v5, v6}, Landroid/renderscript/ProgramVertexFixedFunction;->bindConstants(Landroid/renderscript/ProgramVertexFixedFunction$Constants;)V

    .line 162
    new-instance v3, Landroid/renderscript/Matrix4f;

    invoke-direct {v3}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 163
    .local v3, proj:Landroid/renderscript/Matrix4f;
    iget v5, p0, Lcom/android/musicvis/RenderScriptScene;->mWidth:I

    iget v6, p0, Lcom/android/musicvis/RenderScriptScene;->mHeight:I

    invoke-virtual {v3, v5, v6}, Landroid/renderscript/Matrix4f;->loadProjectionNormalized(II)V

    .line 164
    iget-object v5, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mPVAlloc:Landroid/renderscript/ProgramVertexFixedFunction$Constants;

    invoke-virtual {v5, v3}, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->setProjection(Landroid/renderscript/Matrix4f;)V

    .line 166
    iget-object v5, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mScript:Lcom/android/musicvis/vis5/ScriptC_many;

    iget-object v6, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mPVBackground:Landroid/renderscript/ProgramVertex;

    invoke-virtual {v5, v6}, Lcom/android/musicvis/vis5/ScriptC_many;->set_gPVBackground(Landroid/renderscript/ProgramVertex;)V

    .line 168
    const/16 v5, 0x8

    new-array v5, v5, [Landroid/renderscript/Allocation;

    iput-object v5, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mTextures:[Landroid/renderscript/Allocation;

    .line 169
    iget-object v5, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mTextures:[Landroid/renderscript/Allocation;

    iget-object v6, p0, Lcom/android/musicvis/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    iget-object v7, p0, Lcom/android/musicvis/RenderScriptScene;->mResources:Landroid/content/res/Resources;

    const v8, 0x7f020001

    sget-object v9, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_ON_SYNC_TO_TEXTURE:Landroid/renderscript/Allocation$MipmapControl;

    invoke-static {v6, v7, v8, v9, v11}, Landroid/renderscript/Allocation;->createFromBitmapResource(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;ILandroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v6

    aput-object v6, v5, v12

    .line 172
    iget-object v5, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mScript:Lcom/android/musicvis/vis5/ScriptC_many;

    iget-object v6, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mTextures:[Landroid/renderscript/Allocation;

    aget-object v6, v6, v12

    invoke-virtual {v5, v6}, Lcom/android/musicvis/vis5/ScriptC_many;->set_gTvumeter_background(Landroid/renderscript/Allocation;)V

    .line 173
    iget-object v5, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mTextures:[Landroid/renderscript/Allocation;

    iget-object v6, p0, Lcom/android/musicvis/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    iget-object v7, p0, Lcom/android/musicvis/RenderScriptScene;->mResources:Landroid/content/res/Resources;

    const v8, 0x7f020004

    sget-object v9, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_ON_SYNC_TO_TEXTURE:Landroid/renderscript/Allocation$MipmapControl;

    invoke-static {v6, v7, v8, v9, v11}, Landroid/renderscript/Allocation;->createFromBitmapResource(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;ILandroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v6

    aput-object v6, v5, v13

    .line 176
    iget-object v5, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mScript:Lcom/android/musicvis/vis5/ScriptC_many;

    iget-object v6, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mTextures:[Landroid/renderscript/Allocation;

    aget-object v6, v6, v13

    invoke-virtual {v5, v6}, Lcom/android/musicvis/vis5/ScriptC_many;->set_gTvumeter_frame(Landroid/renderscript/Allocation;)V

    .line 177
    iget-object v5, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mTextures:[Landroid/renderscript/Allocation;

    iget-object v6, p0, Lcom/android/musicvis/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    iget-object v7, p0, Lcom/android/musicvis/RenderScriptScene;->mResources:Landroid/content/res/Resources;

    const v8, 0x7f020009

    sget-object v9, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_ON_SYNC_TO_TEXTURE:Landroid/renderscript/Allocation$MipmapControl;

    invoke-static {v6, v7, v8, v9, v11}, Landroid/renderscript/Allocation;->createFromBitmapResource(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;ILandroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v6

    aput-object v6, v5, v11

    .line 180
    iget-object v5, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mScript:Lcom/android/musicvis/vis5/ScriptC_many;

    iget-object v6, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mTextures:[Landroid/renderscript/Allocation;

    aget-object v6, v6, v11

    invoke-virtual {v5, v6}, Lcom/android/musicvis/vis5/ScriptC_many;->set_gTvumeter_peak_on(Landroid/renderscript/Allocation;)V

    .line 181
    iget-object v5, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mTextures:[Landroid/renderscript/Allocation;

    iget-object v6, p0, Lcom/android/musicvis/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    iget-object v7, p0, Lcom/android/musicvis/RenderScriptScene;->mResources:Landroid/content/res/Resources;

    const v8, 0x7f020008

    sget-object v9, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_ON_SYNC_TO_TEXTURE:Landroid/renderscript/Allocation$MipmapControl;

    invoke-static {v6, v7, v8, v9, v11}, Landroid/renderscript/Allocation;->createFromBitmapResource(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;ILandroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v6

    aput-object v6, v5, v10

    .line 184
    iget-object v5, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mScript:Lcom/android/musicvis/vis5/ScriptC_many;

    iget-object v6, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mTextures:[Landroid/renderscript/Allocation;

    aget-object v6, v6, v10

    invoke-virtual {v5, v6}, Lcom/android/musicvis/vis5/ScriptC_many;->set_gTvumeter_peak_off(Landroid/renderscript/Allocation;)V

    .line 185
    iget-object v5, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mTextures:[Landroid/renderscript/Allocation;

    const/4 v6, 0x4

    iget-object v7, p0, Lcom/android/musicvis/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    iget-object v8, p0, Lcom/android/musicvis/RenderScriptScene;->mResources:Landroid/content/res/Resources;

    const v9, 0x7f020007

    sget-object v10, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_ON_SYNC_TO_TEXTURE:Landroid/renderscript/Allocation$MipmapControl;

    invoke-static {v7, v8, v9, v10, v11}, Landroid/renderscript/Allocation;->createFromBitmapResource(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;ILandroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v7

    aput-object v7, v5, v6

    .line 188
    iget-object v5, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mScript:Lcom/android/musicvis/vis5/ScriptC_many;

    iget-object v6, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mTextures:[Landroid/renderscript/Allocation;

    const/4 v7, 0x4

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Lcom/android/musicvis/vis5/ScriptC_many;->set_gTvumeter_needle(Landroid/renderscript/Allocation;)V

    .line 189
    iget-object v5, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mTextures:[Landroid/renderscript/Allocation;

    iget-object v6, p0, Lcom/android/musicvis/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    iget-object v7, p0, Lcom/android/musicvis/RenderScriptScene;->mResources:Landroid/content/res/Resources;

    const v8, 0x7f020002

    sget-object v9, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_ON_SYNC_TO_TEXTURE:Landroid/renderscript/Allocation$MipmapControl;

    invoke-static {v6, v7, v8, v9, v11}, Landroid/renderscript/Allocation;->createFromBitmapResource(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;ILandroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v6

    aput-object v6, v5, v14

    .line 192
    iget-object v5, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mScript:Lcom/android/musicvis/vis5/ScriptC_many;

    iget-object v6, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mTextures:[Landroid/renderscript/Allocation;

    aget-object v6, v6, v14

    invoke-virtual {v5, v6}, Lcom/android/musicvis/vis5/ScriptC_many;->set_gTvumeter_black(Landroid/renderscript/Allocation;)V

    .line 193
    iget-object v5, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mTextures:[Landroid/renderscript/Allocation;

    const/4 v6, 0x6

    iget-object v7, p0, Lcom/android/musicvis/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    iget-object v8, p0, Lcom/android/musicvis/RenderScriptScene;->mResources:Landroid/content/res/Resources;

    const/high16 v9, 0x7f02

    sget-object v10, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_ON_SYNC_TO_TEXTURE:Landroid/renderscript/Allocation$MipmapControl;

    invoke-static {v7, v8, v9, v10, v11}, Landroid/renderscript/Allocation;->createFromBitmapResource(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;ILandroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v7

    aput-object v7, v5, v6

    .line 196
    iget-object v5, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mScript:Lcom/android/musicvis/vis5/ScriptC_many;

    iget-object v6, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mTextures:[Landroid/renderscript/Allocation;

    const/4 v7, 0x6

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Lcom/android/musicvis/vis5/ScriptC_many;->set_gTvumeter_album(Landroid/renderscript/Allocation;)V

    .line 197
    iget-object v5, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mTextures:[Landroid/renderscript/Allocation;

    const/4 v6, 0x7

    iget-object v7, p0, Lcom/android/musicvis/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    iget-object v8, p0, Lcom/android/musicvis/RenderScriptScene;->mResources:Landroid/content/res/Resources;

    const v9, 0x7f020003

    sget-object v10, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_ON_SYNC_TO_TEXTURE:Landroid/renderscript/Allocation$MipmapControl;

    invoke-static {v7, v8, v9, v10, v11}, Landroid/renderscript/Allocation;->createFromBitmapResource(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;ILandroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v7

    aput-object v7, v5, v6

    .line 200
    iget-object v5, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mScript:Lcom/android/musicvis/vis5/ScriptC_many;

    iget-object v6, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mTextures:[Landroid/renderscript/Allocation;

    const/4 v7, 0x7

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Lcom/android/musicvis/vis5/ScriptC_many;->set_gTlinetexture(Landroid/renderscript/Allocation;)V

    .line 203
    new-instance v0, Landroid/renderscript/Sampler$Builder;

    iget-object v5, p0, Lcom/android/musicvis/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v0, v5}, Landroid/renderscript/Sampler$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 204
    .local v0, builder:Landroid/renderscript/Sampler$Builder;
    sget-object v5, Landroid/renderscript/Sampler$Value;->LINEAR:Landroid/renderscript/Sampler$Value;

    invoke-virtual {v0, v5}, Landroid/renderscript/Sampler$Builder;->setMinification(Landroid/renderscript/Sampler$Value;)V

    .line 205
    sget-object v5, Landroid/renderscript/Sampler$Value;->LINEAR:Landroid/renderscript/Sampler$Value;

    invoke-virtual {v0, v5}, Landroid/renderscript/Sampler$Builder;->setMagnification(Landroid/renderscript/Sampler$Value;)V

    .line 206
    sget-object v5, Landroid/renderscript/Sampler$Value;->WRAP:Landroid/renderscript/Sampler$Value;

    invoke-virtual {v0, v5}, Landroid/renderscript/Sampler$Builder;->setWrapS(Landroid/renderscript/Sampler$Value;)V

    .line 207
    sget-object v5, Landroid/renderscript/Sampler$Value;->WRAP:Landroid/renderscript/Sampler$Value;

    invoke-virtual {v0, v5}, Landroid/renderscript/Sampler$Builder;->setWrapT(Landroid/renderscript/Sampler$Value;)V

    .line 208
    invoke-virtual {v0}, Landroid/renderscript/Sampler$Builder;->create()Landroid/renderscript/Sampler;

    move-result-object v5

    iput-object v5, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mSamplerNoMip:Landroid/renderscript/Sampler;

    .line 212
    new-instance v0, Landroid/renderscript/Sampler$Builder;

    .end local v0           #builder:Landroid/renderscript/Sampler$Builder;
    iget-object v5, p0, Lcom/android/musicvis/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v0, v5}, Landroid/renderscript/Sampler$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 213
    .restart local v0       #builder:Landroid/renderscript/Sampler$Builder;
    sget-object v5, Landroid/renderscript/Sampler$Value;->LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler$Value;

    invoke-virtual {v0, v5}, Landroid/renderscript/Sampler$Builder;->setMinification(Landroid/renderscript/Sampler$Value;)V

    .line 214
    sget-object v5, Landroid/renderscript/Sampler$Value;->LINEAR:Landroid/renderscript/Sampler$Value;

    invoke-virtual {v0, v5}, Landroid/renderscript/Sampler$Builder;->setMagnification(Landroid/renderscript/Sampler$Value;)V

    .line 215
    sget-object v5, Landroid/renderscript/Sampler$Value;->WRAP:Landroid/renderscript/Sampler$Value;

    invoke-virtual {v0, v5}, Landroid/renderscript/Sampler$Builder;->setWrapS(Landroid/renderscript/Sampler$Value;)V

    .line 216
    sget-object v5, Landroid/renderscript/Sampler$Value;->WRAP:Landroid/renderscript/Sampler$Value;

    invoke-virtual {v0, v5}, Landroid/renderscript/Sampler$Builder;->setWrapT(Landroid/renderscript/Sampler$Value;)V

    .line 217
    invoke-virtual {v0}, Landroid/renderscript/Sampler$Builder;->create()Landroid/renderscript/Sampler;

    move-result-object v5

    iput-object v5, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mSamplerMip:Landroid/renderscript/Sampler;

    .line 221
    new-instance v0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;

    .end local v0           #builder:Landroid/renderscript/Sampler$Builder;
    iget-object v5, p0, Lcom/android/musicvis/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v0, v5}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 222
    .local v0, builder:Landroid/renderscript/ProgramFragmentFixedFunction$Builder;
    sget-object v5, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;->REPLACE:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;

    sget-object v6, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;->RGBA:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;

    invoke-virtual {v0, v5, v6, v12}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->setTexture(Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;I)Landroid/renderscript/ProgramFragmentFixedFunction$Builder;

    .line 224
    invoke-virtual {v0}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->create()Landroid/renderscript/ProgramFragmentFixedFunction;

    move-result-object v5

    iput-object v5, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mPfBackgroundNoMip:Landroid/renderscript/ProgramFragment;

    .line 225
    iget-object v5, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mPfBackgroundNoMip:Landroid/renderscript/ProgramFragment;

    iget-object v6, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mSamplerNoMip:Landroid/renderscript/Sampler;

    invoke-virtual {v5, v6, v12}, Landroid/renderscript/ProgramFragment;->bindSampler(Landroid/renderscript/Sampler;I)V

    .line 226
    iget-object v5, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mScript:Lcom/android/musicvis/vis5/ScriptC_many;

    iget-object v6, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mPfBackgroundNoMip:Landroid/renderscript/ProgramFragment;

    invoke-virtual {v5, v6}, Lcom/android/musicvis/vis5/ScriptC_many;->set_gPFBackgroundNoMip(Landroid/renderscript/ProgramFragment;)V

    .line 230
    new-instance v0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;

    .end local v0           #builder:Landroid/renderscript/ProgramFragmentFixedFunction$Builder;
    iget-object v5, p0, Lcom/android/musicvis/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v0, v5}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 231
    .restart local v0       #builder:Landroid/renderscript/ProgramFragmentFixedFunction$Builder;
    sget-object v5, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;->REPLACE:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;

    sget-object v6, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;->RGBA:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;

    invoke-virtual {v0, v5, v6, v12}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->setTexture(Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;I)Landroid/renderscript/ProgramFragmentFixedFunction$Builder;

    .line 233
    invoke-virtual {v0}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->create()Landroid/renderscript/ProgramFragmentFixedFunction;

    move-result-object v5

    iput-object v5, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mPfBackgroundMip:Landroid/renderscript/ProgramFragment;

    .line 234
    iget-object v5, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mPfBackgroundMip:Landroid/renderscript/ProgramFragment;

    iget-object v6, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mSamplerMip:Landroid/renderscript/Sampler;

    invoke-virtual {v5, v6, v12}, Landroid/renderscript/ProgramFragment;->bindSampler(Landroid/renderscript/Sampler;I)V

    .line 235
    iget-object v5, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mScript:Lcom/android/musicvis/vis5/ScriptC_many;

    iget-object v6, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mPfBackgroundMip:Landroid/renderscript/ProgramFragment;

    invoke-virtual {v5, v6}, Lcom/android/musicvis/vis5/ScriptC_many;->set_gPFBackgroundMip(Landroid/renderscript/ProgramFragment;)V

    .line 239
    new-instance v0, Landroid/renderscript/ProgramRaster$Builder;

    .end local v0           #builder:Landroid/renderscript/ProgramFragmentFixedFunction$Builder;
    iget-object v5, p0, Lcom/android/musicvis/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v0, v5}, Landroid/renderscript/ProgramRaster$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 240
    .local v0, builder:Landroid/renderscript/ProgramRaster$Builder;
    sget-object v5, Landroid/renderscript/ProgramRaster$CullMode;->NONE:Landroid/renderscript/ProgramRaster$CullMode;

    invoke-virtual {v0, v5}, Landroid/renderscript/ProgramRaster$Builder;->setCullMode(Landroid/renderscript/ProgramRaster$CullMode;)Landroid/renderscript/ProgramRaster$Builder;

    .line 241
    invoke-virtual {v0}, Landroid/renderscript/ProgramRaster$Builder;->create()Landroid/renderscript/ProgramRaster;

    move-result-object v5

    iput-object v5, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mPr:Landroid/renderscript/ProgramRaster;

    .line 242
    iget-object v5, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mScript:Lcom/android/musicvis/vis5/ScriptC_many;

    iget-object v6, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mPr:Landroid/renderscript/ProgramRaster;

    invoke-virtual {v5, v6}, Lcom/android/musicvis/vis5/ScriptC_many;->set_gPR(Landroid/renderscript/ProgramRaster;)V

    .line 246
    new-instance v0, Landroid/renderscript/ProgramStore$Builder;

    .end local v0           #builder:Landroid/renderscript/ProgramRaster$Builder;
    iget-object v5, p0, Lcom/android/musicvis/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v0, v5}, Landroid/renderscript/ProgramStore$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 247
    .local v0, builder:Landroid/renderscript/ProgramStore$Builder;
    sget-object v5, Landroid/renderscript/ProgramStore$DepthFunc;->EQUAL:Landroid/renderscript/ProgramStore$DepthFunc;

    invoke-virtual {v0, v5}, Landroid/renderscript/ProgramStore$Builder;->setDepthFunc(Landroid/renderscript/ProgramStore$DepthFunc;)Landroid/renderscript/ProgramStore$Builder;

    .line 249
    sget-object v5, Landroid/renderscript/ProgramStore$BlendSrcFunc;->ONE:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    sget-object v6, Landroid/renderscript/ProgramStore$BlendDstFunc;->ONE_MINUS_SRC_ALPHA:Landroid/renderscript/ProgramStore$BlendDstFunc;

    invoke-virtual {v0, v5, v6}, Landroid/renderscript/ProgramStore$Builder;->setBlendFunc(Landroid/renderscript/ProgramStore$BlendSrcFunc;Landroid/renderscript/ProgramStore$BlendDstFunc;)Landroid/renderscript/ProgramStore$Builder;

    .line 250
    invoke-virtual {v0, v13}, Landroid/renderscript/ProgramStore$Builder;->setDitherEnabled(Z)Landroid/renderscript/ProgramStore$Builder;

    .line 251
    invoke-virtual {v0, v12}, Landroid/renderscript/ProgramStore$Builder;->setDepthMaskEnabled(Z)Landroid/renderscript/ProgramStore$Builder;

    .line 252
    invoke-virtual {v0}, Landroid/renderscript/ProgramStore$Builder;->create()Landroid/renderscript/ProgramStore;

    move-result-object v5

    iput-object v5, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mPfsBackground:Landroid/renderscript/ProgramStore;

    .line 254
    iget-object v5, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mScript:Lcom/android/musicvis/vis5/ScriptC_many;

    iget-object v6, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mPfsBackground:Landroid/renderscript/ProgramStore;

    invoke-virtual {v5, v6}, Lcom/android/musicvis/vis5/ScriptC_many;->set_gPFSBackground(Landroid/renderscript/ProgramStore;)V

    .line 258
    new-instance v5, Lcom/android/musicvis/vis5/ScriptField_Vertex;

    iget-object v6, p0, Lcom/android/musicvis/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    iget-object v7, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mPointData:[F

    array-length v7, v7

    div-int/lit8 v7, v7, 0x4

    invoke-direct {v5, v6, v7}, Lcom/android/musicvis/vis5/ScriptField_Vertex;-><init>(Landroid/renderscript/RenderScript;I)V

    iput-object v5, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mVertexBuffer:Lcom/android/musicvis/vis5/ScriptField_Vertex;

    .line 260
    new-instance v2, Landroid/renderscript/Mesh$AllocationBuilder;

    iget-object v5, p0, Lcom/android/musicvis/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v2, v5}, Landroid/renderscript/Mesh$AllocationBuilder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 261
    .local v2, meshBuilder:Landroid/renderscript/Mesh$AllocationBuilder;
    iget-object v5, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mVertexBuffer:Lcom/android/musicvis/vis5/ScriptField_Vertex;

    invoke-virtual {v5}, Lcom/android/musicvis/vis5/ScriptField_Vertex;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/renderscript/Mesh$AllocationBuilder;->addVertexAllocation(Landroid/renderscript/Allocation;)Landroid/renderscript/Mesh$AllocationBuilder;

    .line 263
    iget-object v5, p0, Lcom/android/musicvis/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    iget-object v6, p0, Lcom/android/musicvis/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-static {v6}, Landroid/renderscript/Element;->U16(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v6

    iget-object v7, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mIndexData:[S

    array-length v7, v7

    invoke-static {v5, v6, v7, v14}, Landroid/renderscript/Allocation;->createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;II)Landroid/renderscript/Allocation;

    move-result-object v5

    iput-object v5, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mLineIdxAlloc:Landroid/renderscript/Allocation;

    .line 267
    iget-object v5, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mLineIdxAlloc:Landroid/renderscript/Allocation;

    sget-object v6, Landroid/renderscript/Mesh$Primitive;->LINE:Landroid/renderscript/Mesh$Primitive;

    invoke-virtual {v2, v5, v6}, Landroid/renderscript/Mesh$AllocationBuilder;->addIndexSetAllocation(Landroid/renderscript/Allocation;Landroid/renderscript/Mesh$Primitive;)Landroid/renderscript/Mesh$AllocationBuilder;

    .line 270
    invoke-virtual {v2}, Landroid/renderscript/Mesh$AllocationBuilder;->create()Landroid/renderscript/Mesh;

    move-result-object v5

    iput-object v5, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mCubeMesh:Landroid/renderscript/Mesh;

    .line 272
    iget-object v5, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mVertexBuffer:Lcom/android/musicvis/vis5/ScriptField_Vertex;

    invoke-virtual {v5}, Lcom/android/musicvis/vis5/ScriptField_Vertex;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v5

    iput-object v5, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mPointAlloc:Landroid/renderscript/Allocation;

    .line 274
    iget-object v5, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mScript:Lcom/android/musicvis/vis5/ScriptC_many;

    iget-object v6, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mVertexBuffer:Lcom/android/musicvis/vis5/ScriptField_Vertex;

    invoke-virtual {v5, v6}, Lcom/android/musicvis/vis5/ScriptC_many;->bind_gPoints(Lcom/android/musicvis/vis5/ScriptField_Vertex;)V

    .line 275
    iget-object v5, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mScript:Lcom/android/musicvis/vis5/ScriptC_many;

    iget-object v6, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mPointAlloc:Landroid/renderscript/Allocation;

    invoke-virtual {v5, v6}, Lcom/android/musicvis/vis5/ScriptC_many;->set_gPointBuffer(Landroid/renderscript/Allocation;)V

    .line 276
    iget-object v5, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mScript:Lcom/android/musicvis/vis5/ScriptC_many;

    iget-object v6, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mCubeMesh:Landroid/renderscript/Mesh;

    invoke-virtual {v5, v6}, Lcom/android/musicvis/vis5/ScriptC_many;->set_gCubeMesh(Landroid/renderscript/Mesh;)V

    .line 279
    invoke-virtual {p0}, Lcom/android/musicvis/vis5/Visualization5RS;->updateWave()V

    .line 280
    const/4 v1, 0x0

    .local v1, i:I
    :goto_246
    iget-object v5, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mIndexData:[S

    array-length v5, v5

    if-ge v1, v5, :cond_253

    .line 281
    iget-object v5, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mIndexData:[S

    int-to-short v6, v1

    aput-short v6, v5, v1

    .line 280
    add-int/lit8 v1, v1, 0x1

    goto :goto_246

    .line 285
    :cond_253
    iget-object v5, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mPointAlloc:Landroid/renderscript/Allocation;

    iget-object v6, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mPointData:[F

    invoke-virtual {v5, v6}, Landroid/renderscript/Allocation;->copyFromUnchecked([F)V

    .line 286
    iget-object v5, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mLineIdxAlloc:Landroid/renderscript/Allocation;

    iget-object v6, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mIndexData:[S

    invoke-virtual {v5, v6}, Landroid/renderscript/Allocation;->copyFrom([S)V

    .line 287
    iget-object v5, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mLineIdxAlloc:Landroid/renderscript/Allocation;

    invoke-virtual {v5, v13}, Landroid/renderscript/Allocation;->syncAll(I)V

    .line 289
    iget-object v5, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mScript:Lcom/android/musicvis/vis5/ScriptC_many;

    return-object v5
.end method

.method public resize(II)V
    .registers 6
    .parameter "width"
    .parameter "height"

    .prologue
    .line 115
    invoke-super {p0, p1, p2}, Lcom/android/musicvis/RenderScriptScene;->resize(II)V

    .line 116
    iget-object v1, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mPVAlloc:Landroid/renderscript/ProgramVertexFixedFunction$Constants;

    if-eqz v1, :cond_14

    .line 117
    new-instance v0, Landroid/renderscript/Matrix4f;

    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 118
    .local v0, proj:Landroid/renderscript/Matrix4f;
    invoke-virtual {v0, p1, p2}, Landroid/renderscript/Matrix4f;->loadProjectionNormalized(II)V

    .line 119
    iget-object v1, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mPVAlloc:Landroid/renderscript/ProgramVertexFixedFunction$Constants;

    invoke-virtual {v1, v0}, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->setProjection(Landroid/renderscript/Matrix4f;)V

    .line 121
    .end local v0           #proj:Landroid/renderscript/Matrix4f;
    :cond_14
    iget-object v1, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mWorldState:Lcom/android/musicvis/vis5/Visualization5RS$WorldState;

    const/high16 v2, -0x3e60

    iput v2, v1, Lcom/android/musicvis/vis5/Visualization5RS$WorldState;->mTilt:F

    .line 122
    return-void
.end method

.method public setOffset(FFII)V
    .registers 8
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "xPixels"
    .parameter "yPixels"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mWorldState:Lcom/android/musicvis/vis5/Visualization5RS$WorldState;

    const/high16 v1, 0x3f00

    sub-float v1, p1, v1

    const/high16 v2, 0x42b4

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/android/musicvis/vis5/Visualization5RS$WorldState;->mRotate:F

    .line 150
    invoke-virtual {p0}, Lcom/android/musicvis/vis5/Visualization5RS;->updateWorldState()V

    .line 151
    return-void
.end method

.method public start()V
    .registers 4

    .prologue
    .line 294
    invoke-super {p0}, Lcom/android/musicvis/RenderScriptScene;->start()V

    .line 295
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mVisible:Z

    .line 296
    iget-object v0, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mAudioCapture:Lcom/android/musicvis/AudioCapture;

    if-nez v0, :cond_14

    .line 297
    new-instance v0, Lcom/android/musicvis/AudioCapture;

    const/4 v1, 0x0

    const/16 v2, 0x400

    invoke-direct {v0, v1, v2}, Lcom/android/musicvis/AudioCapture;-><init>(II)V

    iput-object v0, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mAudioCapture:Lcom/android/musicvis/AudioCapture;

    .line 299
    :cond_14
    iget-object v0, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mAudioCapture:Lcom/android/musicvis/AudioCapture;

    invoke-virtual {v0}, Lcom/android/musicvis/AudioCapture;->start()V

    .line 300
    invoke-virtual {p0}, Lcom/android/musicvis/vis5/Visualization5RS;->updateWave()V

    .line 301
    return-void
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 305
    invoke-super {p0}, Lcom/android/musicvis/RenderScriptScene;->stop()V

    .line 306
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mVisible:Z

    .line 307
    iget-object v0, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mAudioCapture:Lcom/android/musicvis/AudioCapture;

    if-eqz v0, :cond_17

    .line 308
    iget-object v0, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mAudioCapture:Lcom/android/musicvis/AudioCapture;

    invoke-virtual {v0}, Lcom/android/musicvis/AudioCapture;->stop()V

    .line 309
    iget-object v0, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mAudioCapture:Lcom/android/musicvis/AudioCapture;

    invoke-virtual {v0}, Lcom/android/musicvis/AudioCapture;->release()V

    .line 310
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mAudioCapture:Lcom/android/musicvis/AudioCapture;

    .line 312
    :cond_17
    return-void
.end method

.method updateWave()V
    .registers 16

    .prologue
    const/16 v14, 0x7fff

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 315
    iget-object v8, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mDrawCube:Ljava/lang/Runnable;

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 316
    iget-boolean v8, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mVisible:Z

    if-nez v8, :cond_10

    .line 405
    :goto_f
    return-void

    .line 319
    :cond_10
    iget-object v8, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mDrawCube:Ljava/lang/Runnable;

    const-wide/16 v10, 0x14

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 321
    const/4 v3, 0x0

    .line 322
    .local v3, len:I
    iget-object v8, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mAudioCapture:Lcom/android/musicvis/AudioCapture;

    if-eqz v8, :cond_2b

    .line 324
    iget-object v8, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mAudioCapture:Lcom/android/musicvis/AudioCapture;

    const/16 v9, 0x200

    invoke-virtual {v8, v9, v13}, Lcom/android/musicvis/AudioCapture;->getFormattedData(II)[I

    move-result-object v8

    iput-object v8, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mVizData:[I

    .line 325
    iget-object v8, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mVizData:[I

    array-length v3, v8

    .line 330
    :cond_2b
    const/4 v7, 0x0

    .line 331
    .local v7, volt:I
    if-lez v3, :cond_3d

    .line 332
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2f
    if-ge v2, v3, :cond_3c

    .line 333
    iget-object v8, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mVizData:[I

    aget v6, v8, v2

    .line 334
    .local v6, val:I
    if-gez v6, :cond_38

    .line 335
    neg-int v6, v6

    .line 337
    :cond_38
    add-int/2addr v7, v6

    .line 332
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    .line 339
    .end local v6           #val:I
    :cond_3c
    div-int/2addr v7, v3

    .line 361
    .end local v2           #i:I
    :cond_3d
    iget v8, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mNeedleSpeed:I

    mul-int/lit8 v8, v8, 0x3

    sub-int v8, v7, v8

    iget v9, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mNeedlePos:I

    iget v10, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mSpringForceAtOrigin:I

    add-int/2addr v9, v10

    sub-int v4, v8, v9

    .line 362
    .local v4, netforce:I
    iget v8, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mNeedleMass:I

    div-int v0, v4, v8

    .line 363
    .local v0, acceleration:I
    iget v8, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mNeedleSpeed:I

    add-int/2addr v8, v0

    iput v8, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mNeedleSpeed:I

    .line 364
    iget v8, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mNeedlePos:I

    iget v9, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mNeedleSpeed:I

    add-int/2addr v8, v9

    iput v8, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mNeedlePos:I

    .line 365
    iget v8, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mNeedlePos:I

    if-gez v8, :cond_8d

    .line 366
    iput v12, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mNeedlePos:I

    .line 367
    iput v12, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mNeedleSpeed:I

    .line 375
    :cond_62
    :goto_62
    iget-object v8, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mWorldState:Lcom/android/musicvis/vis5/Visualization5RS$WorldState;

    iget v8, v8, Lcom/android/musicvis/vis5/Visualization5RS$WorldState;->mPeak:I

    if-lez v8, :cond_70

    .line 376
    iget-object v8, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mWorldState:Lcom/android/musicvis/vis5/Visualization5RS$WorldState;

    iget v9, v8, Lcom/android/musicvis/vis5/Visualization5RS$WorldState;->mPeak:I

    add-int/lit8 v9, v9, -0x1

    iput v9, v8, Lcom/android/musicvis/vis5/Visualization5RS$WorldState;->mPeak:I

    .line 379
    :cond_70
    iget-object v8, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mWorldState:Lcom/android/musicvis/vis5/Visualization5RS$WorldState;

    const/high16 v9, 0x4303

    iget v10, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mNeedlePos:I

    int-to-float v10, v10

    const/high16 v11, 0x43cd

    div-float/2addr v10, v11

    sub-float/2addr v9, v10

    iput v9, v8, Lcom/android/musicvis/vis5/Visualization5RS$WorldState;->mAngle:F

    .line 383
    if-nez v3, :cond_a3

    .line 384
    iget-object v8, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mWorldState:Lcom/android/musicvis/vis5/Visualization5RS$WorldState;

    iget v8, v8, Lcom/android/musicvis/vis5/Visualization5RS$WorldState;->mIdle:I

    if-nez v8, :cond_89

    .line 385
    iget-object v8, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mWorldState:Lcom/android/musicvis/vis5/Visualization5RS$WorldState;

    iput v13, v8, Lcom/android/musicvis/vis5/Visualization5RS$WorldState;->mIdle:I

    .line 404
    :cond_89
    :goto_89
    invoke-virtual {p0}, Lcom/android/musicvis/vis5/Visualization5RS;->updateWorldState()V

    goto :goto_f

    .line 368
    :cond_8d
    iget v8, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mNeedlePos:I

    if-le v8, v14, :cond_62

    .line 369
    iget v8, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mNeedlePos:I

    const v9, 0x8235

    if-le v8, v9, :cond_9e

    .line 370
    iget-object v8, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mWorldState:Lcom/android/musicvis/vis5/Visualization5RS$WorldState;

    const/16 v9, 0xa

    iput v9, v8, Lcom/android/musicvis/vis5/Visualization5RS$WorldState;->mPeak:I

    .line 372
    :cond_9e
    iput v14, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mNeedlePos:I

    .line 373
    iput v12, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mNeedleSpeed:I

    goto :goto_62

    .line 388
    :cond_a3
    iget-object v8, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mWorldState:Lcom/android/musicvis/vis5/Visualization5RS$WorldState;

    iget v8, v8, Lcom/android/musicvis/vis5/Visualization5RS$WorldState;->mIdle:I

    if-eqz v8, :cond_ad

    .line 389
    iget-object v8, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mWorldState:Lcom/android/musicvis/vis5/Visualization5RS$WorldState;

    iput v12, v8, Lcom/android/musicvis/vis5/Visualization5RS$WorldState;->mIdle:I

    .line 392
    :cond_ad
    iget-object v8, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mPointData:[F

    array-length v8, v8

    div-int/lit8 v5, v8, 0x8

    .line 393
    .local v5, outlen:I
    div-int/lit8 v3, v3, 0x4

    .line 394
    if-le v3, v5, :cond_b7

    move v3, v5

    .line 395
    :cond_b7
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_b8
    if-ge v2, v3, :cond_f2

    .line 396
    iget-object v8, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mVizData:[I

    mul-int/lit8 v9, v2, 0x4

    aget v8, v8, v9

    iget-object v9, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mVizData:[I

    mul-int/lit8 v10, v2, 0x4

    add-int/lit8 v10, v10, 0x1

    aget v9, v9, v10

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mVizData:[I

    mul-int/lit8 v10, v2, 0x4

    add-int/lit8 v10, v10, 0x2

    aget v9, v9, v10

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mVizData:[I

    mul-int/lit8 v10, v2, 0x4

    add-int/lit8 v10, v10, 0x3

    aget v9, v9, v10

    add-int v1, v8, v9

    .line 397
    .local v1, amp:I
    iget-object v8, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mPointData:[F

    mul-int/lit8 v9, v2, 0x8

    add-int/lit8 v9, v9, 0x1

    int-to-float v10, v1

    aput v10, v8, v9

    .line 398
    iget-object v8, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mPointData:[F

    mul-int/lit8 v9, v2, 0x8

    add-int/lit8 v9, v9, 0x5

    neg-int v10, v1

    int-to-float v10, v10

    aput v10, v8, v9

    .line 395
    add-int/lit8 v2, v2, 0x1

    goto :goto_b8

    .line 400
    .end local v1           #amp:I
    :cond_f2
    iget-object v8, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mPointAlloc:Landroid/renderscript/Allocation;

    iget-object v9, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mPointData:[F

    invoke-virtual {v8, v9}, Landroid/renderscript/Allocation;->copyFromUnchecked([F)V

    .line 401
    iget-object v8, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mWorldState:Lcom/android/musicvis/vis5/Visualization5RS$WorldState;

    iget v9, v8, Lcom/android/musicvis/vis5/Visualization5RS$WorldState;->mWaveCounter:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Lcom/android/musicvis/vis5/Visualization5RS$WorldState;->mWaveCounter:I

    goto :goto_89
.end method

.method protected updateWorldState()V
    .registers 3

    .prologue
    .line 408
    iget-object v0, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mScript:Lcom/android/musicvis/vis5/ScriptC_many;

    iget-object v1, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mWorldState:Lcom/android/musicvis/vis5/Visualization5RS$WorldState;

    iget v1, v1, Lcom/android/musicvis/vis5/Visualization5RS$WorldState;->mAngle:F

    invoke-virtual {v0, v1}, Lcom/android/musicvis/vis5/ScriptC_many;->set_gAngle(F)V

    .line 409
    iget-object v0, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mScript:Lcom/android/musicvis/vis5/ScriptC_many;

    iget-object v1, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mWorldState:Lcom/android/musicvis/vis5/Visualization5RS$WorldState;

    iget v1, v1, Lcom/android/musicvis/vis5/Visualization5RS$WorldState;->mPeak:I

    invoke-virtual {v0, v1}, Lcom/android/musicvis/vis5/ScriptC_many;->set_gPeak(I)V

    .line 410
    iget-object v0, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mScript:Lcom/android/musicvis/vis5/ScriptC_many;

    iget-object v1, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mWorldState:Lcom/android/musicvis/vis5/Visualization5RS$WorldState;

    iget v1, v1, Lcom/android/musicvis/vis5/Visualization5RS$WorldState;->mRotate:F

    invoke-virtual {v0, v1}, Lcom/android/musicvis/vis5/ScriptC_many;->set_gRotate(F)V

    .line 411
    iget-object v0, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mScript:Lcom/android/musicvis/vis5/ScriptC_many;

    iget-object v1, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mWorldState:Lcom/android/musicvis/vis5/Visualization5RS$WorldState;

    iget v1, v1, Lcom/android/musicvis/vis5/Visualization5RS$WorldState;->mTilt:F

    invoke-virtual {v0, v1}, Lcom/android/musicvis/vis5/ScriptC_many;->set_gTilt(F)V

    .line 412
    iget-object v0, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mScript:Lcom/android/musicvis/vis5/ScriptC_many;

    iget-object v1, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mWorldState:Lcom/android/musicvis/vis5/Visualization5RS$WorldState;

    iget v1, v1, Lcom/android/musicvis/vis5/Visualization5RS$WorldState;->mIdle:I

    invoke-virtual {v0, v1}, Lcom/android/musicvis/vis5/ScriptC_many;->set_gIdle(I)V

    .line 413
    iget-object v0, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mScript:Lcom/android/musicvis/vis5/ScriptC_many;

    iget-object v1, p0, Lcom/android/musicvis/vis5/Visualization5RS;->mWorldState:Lcom/android/musicvis/vis5/Visualization5RS$WorldState;

    iget v1, v1, Lcom/android/musicvis/vis5/Visualization5RS$WorldState;->mWaveCounter:I

    invoke-virtual {v0, v1}, Lcom/android/musicvis/vis5/ScriptC_many;->set_gWaveCounter(I)V

    .line 414
    return-void
.end method
