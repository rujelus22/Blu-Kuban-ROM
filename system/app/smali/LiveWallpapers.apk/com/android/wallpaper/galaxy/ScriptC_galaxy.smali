.class public Lcom/android/wallpaper/galaxy/ScriptC_galaxy;
.super Landroid/renderscript/ScriptC;
.source "ScriptC_galaxy.java"


# instance fields
.field private mExportVar_Particles:Lcom/android/wallpaper/galaxy/ScriptField_Particle;

.field private mExportVar_gIsPreview:I

.field private mExportVar_gPFBackground:Landroid/renderscript/ProgramFragment;

.field private mExportVar_gPFStars:Landroid/renderscript/ProgramFragment;

.field private mExportVar_gPSLights:Landroid/renderscript/ProgramStore;

.field private mExportVar_gPVBkProj:Landroid/renderscript/ProgramVertex;

.field private mExportVar_gPVStars:Landroid/renderscript/ProgramVertex;

.field private mExportVar_gParticlesMesh:Landroid/renderscript/Mesh;

.field private mExportVar_gTFlares:Landroid/renderscript/Allocation;

.field private mExportVar_gTLight1:Landroid/renderscript/Allocation;

.field private mExportVar_gTSpace:Landroid/renderscript/Allocation;

.field private mExportVar_gXOffset:F

.field private mExportVar_vpConstants:Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;


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
.method public bind_Particles(Lcom/android/wallpaper/galaxy/ScriptField_Particle;)V
    .registers 4
    .parameter "v"

    .prologue
    const/16 v1, 0xb

    .line 159
    iput-object p1, p0, Lcom/android/wallpaper/galaxy/ScriptC_galaxy;->mExportVar_Particles:Lcom/android/wallpaper/galaxy/ScriptField_Particle;

    .line 160
    if-nez p1, :cond_b

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/wallpaper/galaxy/ScriptC_galaxy;->bindAllocation(Landroid/renderscript/Allocation;I)V

    .line 162
    :goto_a
    return-void

    .line 161
    :cond_b
    invoke-virtual {p1}, Lcom/android/wallpaper/galaxy/ScriptField_Particle;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/android/wallpaper/galaxy/ScriptC_galaxy;->bindAllocation(Landroid/renderscript/Allocation;I)V

    goto :goto_a
.end method

.method public bind_vpConstants(Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;)V
    .registers 4
    .parameter "v"

    .prologue
    const/16 v1, 0xc

    .line 171
    iput-object p1, p0, Lcom/android/wallpaper/galaxy/ScriptC_galaxy;->mExportVar_vpConstants:Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;

    .line 172
    if-nez p1, :cond_b

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/wallpaper/galaxy/ScriptC_galaxy;->bindAllocation(Landroid/renderscript/Allocation;I)V

    .line 174
    :goto_a
    return-void

    .line 173
    :cond_b
    invoke-virtual {p1}, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/android/wallpaper/galaxy/ScriptC_galaxy;->bindAllocation(Landroid/renderscript/Allocation;I)V

    goto :goto_a
.end method

.method public set_gIsPreview(I)V
    .registers 3
    .parameter "v"

    .prologue
    .line 49
    iput p1, p0, Lcom/android/wallpaper/galaxy/ScriptC_galaxy;->mExportVar_gIsPreview:I

    .line 50
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/wallpaper/galaxy/ScriptC_galaxy;->setVar(II)V

    .line 51
    return-void
.end method

.method public set_gPFBackground(Landroid/renderscript/ProgramFragment;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/wallpaper/galaxy/ScriptC_galaxy;->mExportVar_gPFBackground:Landroid/renderscript/ProgramFragment;

    .line 61
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/android/wallpaper/galaxy/ScriptC_galaxy;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 62
    return-void
.end method

.method public set_gPFStars(Landroid/renderscript/ProgramFragment;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/wallpaper/galaxy/ScriptC_galaxy;->mExportVar_gPFStars:Landroid/renderscript/ProgramFragment;

    .line 72
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/android/wallpaper/galaxy/ScriptC_galaxy;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 73
    return-void
.end method

.method public set_gPSLights(Landroid/renderscript/ProgramStore;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/wallpaper/galaxy/ScriptC_galaxy;->mExportVar_gPSLights:Landroid/renderscript/ProgramStore;

    .line 105
    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1}, Lcom/android/wallpaper/galaxy/ScriptC_galaxy;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 106
    return-void
.end method

.method public set_gPVBkProj(Landroid/renderscript/ProgramVertex;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/wallpaper/galaxy/ScriptC_galaxy;->mExportVar_gPVBkProj:Landroid/renderscript/ProgramVertex;

    .line 94
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1}, Lcom/android/wallpaper/galaxy/ScriptC_galaxy;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 95
    return-void
.end method

.method public set_gPVStars(Landroid/renderscript/ProgramVertex;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/wallpaper/galaxy/ScriptC_galaxy;->mExportVar_gPVStars:Landroid/renderscript/ProgramVertex;

    .line 83
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/android/wallpaper/galaxy/ScriptC_galaxy;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 84
    return-void
.end method

.method public set_gParticlesMesh(Landroid/renderscript/Mesh;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/wallpaper/galaxy/ScriptC_galaxy;->mExportVar_gParticlesMesh:Landroid/renderscript/Mesh;

    .line 149
    const/16 v0, 0xa

    invoke-virtual {p0, v0, p1}, Lcom/android/wallpaper/galaxy/ScriptC_galaxy;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 150
    return-void
.end method

.method public set_gTFlares(Landroid/renderscript/Allocation;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/wallpaper/galaxy/ScriptC_galaxy;->mExportVar_gTFlares:Landroid/renderscript/Allocation;

    .line 127
    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Lcom/android/wallpaper/galaxy/ScriptC_galaxy;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 128
    return-void
.end method

.method public set_gTLight1(Landroid/renderscript/Allocation;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/wallpaper/galaxy/ScriptC_galaxy;->mExportVar_gTLight1:Landroid/renderscript/Allocation;

    .line 138
    const/16 v0, 0x9

    invoke-virtual {p0, v0, p1}, Lcom/android/wallpaper/galaxy/ScriptC_galaxy;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 139
    return-void
.end method

.method public set_gTSpace(Landroid/renderscript/Allocation;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/wallpaper/galaxy/ScriptC_galaxy;->mExportVar_gTSpace:Landroid/renderscript/Allocation;

    .line 116
    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1}, Lcom/android/wallpaper/galaxy/ScriptC_galaxy;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 117
    return-void
.end method

.method public set_gXOffset(F)V
    .registers 3
    .parameter "v"

    .prologue
    .line 38
    iput p1, p0, Lcom/android/wallpaper/galaxy/ScriptC_galaxy;->mExportVar_gXOffset:F

    .line 39
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/wallpaper/galaxy/ScriptC_galaxy;->setVar(IF)V

    .line 40
    return-void
.end method
