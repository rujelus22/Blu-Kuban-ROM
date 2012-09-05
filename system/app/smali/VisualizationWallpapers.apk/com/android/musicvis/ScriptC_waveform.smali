.class public Lcom/android/musicvis/ScriptC_waveform;
.super Landroid/renderscript/ScriptC;
.source "ScriptC_waveform.java"


# instance fields
.field private mExportVar_gCubeMesh:Landroid/renderscript/Mesh;

.field private mExportVar_gIdle:I

.field private mExportVar_gPFBackground:Landroid/renderscript/ProgramFragment;

.field private mExportVar_gPVBackground:Landroid/renderscript/ProgramVertex;

.field private mExportVar_gPointBuffer:Landroid/renderscript/Allocation;

.field private mExportVar_gPoints:Lcom/android/musicvis/ScriptField_Vertex;

.field private mExportVar_gTlinetexture:Landroid/renderscript/Allocation;

.field private mExportVar_gWaveCounter:I

.field private mExportVar_gWidth:I

.field private mExportVar_gYRotation:F


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)V
    .registers 4
    .parameter "rs"
    .parameter "resources"
    .parameter "id"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/ScriptC;-><init>(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)V

    .line 33
    return-void
.end method


# virtual methods
.method public bind_gPoints(Lcom/android/musicvis/ScriptField_Vertex;)V
    .registers 4
    .parameter "v"

    .prologue
    const/4 v1, 0x6

    .line 104
    iput-object p1, p0, Lcom/android/musicvis/ScriptC_waveform;->mExportVar_gPoints:Lcom/android/musicvis/ScriptField_Vertex;

    .line 105
    if-nez p1, :cond_a

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/musicvis/ScriptC_waveform;->bindAllocation(Landroid/renderscript/Allocation;I)V

    .line 107
    :goto_9
    return-void

    .line 106
    :cond_a
    invoke-virtual {p1}, Lcom/android/musicvis/ScriptField_Vertex;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/android/musicvis/ScriptC_waveform;->bindAllocation(Landroid/renderscript/Allocation;I)V

    goto :goto_9
.end method

.method public set_gCubeMesh(Landroid/renderscript/Mesh;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/musicvis/ScriptC_waveform;->mExportVar_gCubeMesh:Landroid/renderscript/Mesh;

    .line 139
    const/16 v0, 0x9

    invoke-virtual {p0, v0, p1}, Lcom/android/musicvis/ScriptC_waveform;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 140
    return-void
.end method

.method public set_gIdle(I)V
    .registers 3
    .parameter "v"

    .prologue
    .line 49
    iput p1, p0, Lcom/android/musicvis/ScriptC_waveform;->mExportVar_gIdle:I

    .line 50
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/musicvis/ScriptC_waveform;->setVar(II)V

    .line 51
    return-void
.end method

.method public set_gPFBackground(Landroid/renderscript/ProgramFragment;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/musicvis/ScriptC_waveform;->mExportVar_gPFBackground:Landroid/renderscript/ProgramFragment;

    .line 94
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1}, Lcom/android/musicvis/ScriptC_waveform;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 95
    return-void
.end method

.method public set_gPVBackground(Landroid/renderscript/ProgramVertex;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/musicvis/ScriptC_waveform;->mExportVar_gPVBackground:Landroid/renderscript/ProgramVertex;

    .line 83
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/android/musicvis/ScriptC_waveform;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 84
    return-void
.end method

.method public set_gPointBuffer(Landroid/renderscript/Allocation;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/musicvis/ScriptC_waveform;->mExportVar_gPointBuffer:Landroid/renderscript/Allocation;

    .line 117
    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1}, Lcom/android/musicvis/ScriptC_waveform;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 118
    return-void
.end method

.method public set_gTlinetexture(Landroid/renderscript/Allocation;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/musicvis/ScriptC_waveform;->mExportVar_gTlinetexture:Landroid/renderscript/Allocation;

    .line 128
    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Lcom/android/musicvis/ScriptC_waveform;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 129
    return-void
.end method

.method public set_gWaveCounter(I)V
    .registers 3
    .parameter "v"

    .prologue
    .line 60
    iput p1, p0, Lcom/android/musicvis/ScriptC_waveform;->mExportVar_gWaveCounter:I

    .line 61
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/android/musicvis/ScriptC_waveform;->setVar(II)V

    .line 62
    return-void
.end method

.method public set_gWidth(I)V
    .registers 3
    .parameter "v"

    .prologue
    .line 71
    iput p1, p0, Lcom/android/musicvis/ScriptC_waveform;->mExportVar_gWidth:I

    .line 72
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/android/musicvis/ScriptC_waveform;->setVar(II)V

    .line 73
    return-void
.end method

.method public set_gYRotation(F)V
    .registers 3
    .parameter "v"

    .prologue
    .line 38
    iput p1, p0, Lcom/android/musicvis/ScriptC_waveform;->mExportVar_gYRotation:F

    .line 39
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/musicvis/ScriptC_waveform;->setVar(IF)V

    .line 40
    return-void
.end method
