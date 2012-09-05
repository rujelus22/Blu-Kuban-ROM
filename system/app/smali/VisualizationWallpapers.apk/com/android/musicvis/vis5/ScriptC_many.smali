.class public Lcom/android/musicvis/vis5/ScriptC_many;
.super Landroid/renderscript/ScriptC;
.source "ScriptC_many.java"


# instance fields
.field private mExportVar_autorotation:F

.field private mExportVar_fadeincounter:I

.field private mExportVar_fadeoutcounter:I

.field private mExportVar_gAngle:F

.field private mExportVar_gCubeMesh:Landroid/renderscript/Mesh;

.field private mExportVar_gIdle:I

.field private mExportVar_gPFBackgroundMip:Landroid/renderscript/ProgramFragment;

.field private mExportVar_gPFBackgroundNoMip:Landroid/renderscript/ProgramFragment;

.field private mExportVar_gPFSBackground:Landroid/renderscript/ProgramStore;

.field private mExportVar_gPR:Landroid/renderscript/ProgramRaster;

.field private mExportVar_gPVBackground:Landroid/renderscript/ProgramVertex;

.field private mExportVar_gPeak:I

.field private mExportVar_gPointBuffer:Landroid/renderscript/Allocation;

.field private mExportVar_gPoints:Lcom/android/musicvis/vis5/ScriptField_Vertex;

.field private mExportVar_gRotate:F

.field private mExportVar_gTilt:F

.field private mExportVar_gTlinetexture:Landroid/renderscript/Allocation;

.field private mExportVar_gTvumeter_album:Landroid/renderscript/Allocation;

.field private mExportVar_gTvumeter_background:Landroid/renderscript/Allocation;

.field private mExportVar_gTvumeter_black:Landroid/renderscript/Allocation;

.field private mExportVar_gTvumeter_frame:Landroid/renderscript/Allocation;

.field private mExportVar_gTvumeter_needle:Landroid/renderscript/Allocation;

.field private mExportVar_gTvumeter_peak_off:Landroid/renderscript/Allocation;

.field private mExportVar_gTvumeter_peak_on:Landroid/renderscript/Allocation;

.field private mExportVar_gWaveCounter:I

.field private mExportVar_lastuptime:I

.field private mExportVar_wave1amp:I

.field private mExportVar_wave1pos:I

.field private mExportVar_wave2amp:I

.field private mExportVar_wave2pos:I

.field private mExportVar_wave3amp:I

.field private mExportVar_wave3pos:I

.field private mExportVar_wave4amp:I

.field private mExportVar_wave4pos:I

.field private mExportVar_waveCounter:I


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)V
    .registers 5
    .parameter "rs"
    .parameter "resources"
    .parameter "id"

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/ScriptC;-><init>(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)V

    .line 33
    iput v0, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_fadeoutcounter:I

    .line 34
    iput v0, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_fadeincounter:I

    .line 35
    iput v0, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_wave1pos:I

    .line 36
    iput v0, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_wave1amp:I

    .line 37
    iput v0, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_wave2pos:I

    .line 38
    iput v0, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_wave2amp:I

    .line 39
    iput v0, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_wave3pos:I

    .line 40
    iput v0, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_wave3amp:I

    .line 41
    iput v0, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_wave4pos:I

    .line 42
    iput v0, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_wave4amp:I

    .line 43
    iput v0, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_waveCounter:I

    .line 44
    iput v0, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_lastuptime:I

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_autorotation:F

    .line 46
    return-void
.end method


# virtual methods
.method public bind_gPoints(Lcom/android/musicvis/vis5/ScriptField_Vertex;)V
    .registers 4
    .parameter "v"

    .prologue
    const/16 v1, 0x12

    .line 249
    iput-object p1, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_gPoints:Lcom/android/musicvis/vis5/ScriptField_Vertex;

    .line 250
    if-nez p1, :cond_b

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/musicvis/vis5/ScriptC_many;->bindAllocation(Landroid/renderscript/Allocation;I)V

    .line 252
    :goto_a
    return-void

    .line 251
    :cond_b
    invoke-virtual {p1}, Lcom/android/musicvis/vis5/ScriptField_Vertex;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/android/musicvis/vis5/ScriptC_many;->bindAllocation(Landroid/renderscript/Allocation;I)V

    goto :goto_a
.end method

.method public set_gAngle(F)V
    .registers 3
    .parameter "v"

    .prologue
    .line 51
    iput p1, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_gAngle:F

    .line 52
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/musicvis/vis5/ScriptC_many;->setVar(IF)V

    .line 53
    return-void
.end method

.method public set_gCubeMesh(Landroid/renderscript/Mesh;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 283
    iput-object p1, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_gCubeMesh:Landroid/renderscript/Mesh;

    .line 284
    const/16 v0, 0x15

    invoke-virtual {p0, v0, p1}, Lcom/android/musicvis/vis5/ScriptC_many;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 285
    return-void
.end method

.method public set_gIdle(I)V
    .registers 3
    .parameter "v"

    .prologue
    .line 95
    iput p1, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_gIdle:I

    .line 96
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/android/musicvis/vis5/ScriptC_many;->setVar(II)V

    .line 97
    return-void
.end method

.method public set_gPFBackgroundMip(Landroid/renderscript/ProgramFragment;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_gPFBackgroundMip:Landroid/renderscript/ProgramFragment;

    .line 129
    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1}, Lcom/android/musicvis/vis5/ScriptC_many;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 130
    return-void
.end method

.method public set_gPFBackgroundNoMip(Landroid/renderscript/ProgramFragment;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_gPFBackgroundNoMip:Landroid/renderscript/ProgramFragment;

    .line 140
    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Lcom/android/musicvis/vis5/ScriptC_many;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 141
    return-void
.end method

.method public set_gPFSBackground(Landroid/renderscript/ProgramStore;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 238
    iput-object p1, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_gPFSBackground:Landroid/renderscript/ProgramStore;

    .line 239
    const/16 v0, 0x11

    invoke-virtual {p0, v0, p1}, Lcom/android/musicvis/vis5/ScriptC_many;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 240
    return-void
.end method

.method public set_gPR(Landroid/renderscript/ProgramRaster;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_gPR:Landroid/renderscript/ProgramRaster;

    .line 151
    const/16 v0, 0x9

    invoke-virtual {p0, v0, p1}, Lcom/android/musicvis/vis5/ScriptC_many;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 152
    return-void
.end method

.method public set_gPVBackground(Landroid/renderscript/ProgramVertex;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_gPVBackground:Landroid/renderscript/ProgramVertex;

    .line 118
    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1}, Lcom/android/musicvis/vis5/ScriptC_many;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 119
    return-void
.end method

.method public set_gPeak(I)V
    .registers 3
    .parameter "v"

    .prologue
    .line 62
    iput p1, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_gPeak:I

    .line 63
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/musicvis/vis5/ScriptC_many;->setVar(II)V

    .line 64
    return-void
.end method

.method public set_gPointBuffer(Landroid/renderscript/Allocation;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 261
    iput-object p1, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_gPointBuffer:Landroid/renderscript/Allocation;

    .line 262
    const/16 v0, 0x13

    invoke-virtual {p0, v0, p1}, Lcom/android/musicvis/vis5/ScriptC_many;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 263
    return-void
.end method

.method public set_gRotate(F)V
    .registers 3
    .parameter "v"

    .prologue
    .line 73
    iput p1, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_gRotate:F

    .line 74
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/android/musicvis/vis5/ScriptC_many;->setVar(IF)V

    .line 75
    return-void
.end method

.method public set_gTilt(F)V
    .registers 3
    .parameter "v"

    .prologue
    .line 84
    iput p1, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_gTilt:F

    .line 85
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/android/musicvis/vis5/ScriptC_many;->setVar(IF)V

    .line 86
    return-void
.end method

.method public set_gTlinetexture(Landroid/renderscript/Allocation;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 272
    iput-object p1, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_gTlinetexture:Landroid/renderscript/Allocation;

    .line 273
    const/16 v0, 0x14

    invoke-virtual {p0, v0, p1}, Lcom/android/musicvis/vis5/ScriptC_many;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 274
    return-void
.end method

.method public set_gTvumeter_album(Landroid/renderscript/Allocation;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 227
    iput-object p1, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_gTvumeter_album:Landroid/renderscript/Allocation;

    .line 228
    const/16 v0, 0x10

    invoke-virtual {p0, v0, p1}, Lcom/android/musicvis/vis5/ScriptC_many;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 229
    return-void
.end method

.method public set_gTvumeter_background(Landroid/renderscript/Allocation;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_gTvumeter_background:Landroid/renderscript/Allocation;

    .line 162
    const/16 v0, 0xa

    invoke-virtual {p0, v0, p1}, Lcom/android/musicvis/vis5/ScriptC_many;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 163
    return-void
.end method

.method public set_gTvumeter_black(Landroid/renderscript/Allocation;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 205
    iput-object p1, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_gTvumeter_black:Landroid/renderscript/Allocation;

    .line 206
    const/16 v0, 0xe

    invoke-virtual {p0, v0, p1}, Lcom/android/musicvis/vis5/ScriptC_many;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 207
    return-void
.end method

.method public set_gTvumeter_frame(Landroid/renderscript/Allocation;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 216
    iput-object p1, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_gTvumeter_frame:Landroid/renderscript/Allocation;

    .line 217
    const/16 v0, 0xf

    invoke-virtual {p0, v0, p1}, Lcom/android/musicvis/vis5/ScriptC_many;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 218
    return-void
.end method

.method public set_gTvumeter_needle(Landroid/renderscript/Allocation;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 194
    iput-object p1, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_gTvumeter_needle:Landroid/renderscript/Allocation;

    .line 195
    const/16 v0, 0xd

    invoke-virtual {p0, v0, p1}, Lcom/android/musicvis/vis5/ScriptC_many;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 196
    return-void
.end method

.method public set_gTvumeter_peak_off(Landroid/renderscript/Allocation;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_gTvumeter_peak_off:Landroid/renderscript/Allocation;

    .line 184
    const/16 v0, 0xc

    invoke-virtual {p0, v0, p1}, Lcom/android/musicvis/vis5/ScriptC_many;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 185
    return-void
.end method

.method public set_gTvumeter_peak_on(Landroid/renderscript/Allocation;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 172
    iput-object p1, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_gTvumeter_peak_on:Landroid/renderscript/Allocation;

    .line 173
    const/16 v0, 0xb

    invoke-virtual {p0, v0, p1}, Lcom/android/musicvis/vis5/ScriptC_many;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 174
    return-void
.end method

.method public set_gWaveCounter(I)V
    .registers 3
    .parameter "v"

    .prologue
    .line 106
    iput p1, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_gWaveCounter:I

    .line 107
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1}, Lcom/android/musicvis/vis5/ScriptC_many;->setVar(II)V

    .line 108
    return-void
.end method
