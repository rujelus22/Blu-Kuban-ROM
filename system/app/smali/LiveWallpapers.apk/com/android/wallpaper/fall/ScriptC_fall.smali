.class public Lcom/android/wallpaper/fall/ScriptC_fall;
.super Landroid/renderscript/ScriptC;
.source "ScriptC_fall.java"


# instance fields
.field private mExportVar_g_Constants:Lcom/android/wallpaper/fall/ScriptField_Constants;

.field private mExportVar_g_PFBackground:Landroid/renderscript/ProgramFragment;

.field private mExportVar_g_PFSBackground:Landroid/renderscript/ProgramStore;

.field private mExportVar_g_PFSLeaf:Landroid/renderscript/ProgramStore;

.field private mExportVar_g_PFSky:Landroid/renderscript/ProgramFragment;

.field private mExportVar_g_PVSky:Landroid/renderscript/ProgramVertex;

.field private mExportVar_g_PVWater:Landroid/renderscript/ProgramVertex;

.field private mExportVar_g_TLeaves:Landroid/renderscript/Allocation;

.field private mExportVar_g_TRiverbed:Landroid/renderscript/Allocation;

.field private mExportVar_g_WaterMesh:Landroid/renderscript/Mesh;

.field private mExportVar_g_glHeight:F

.field private mExportVar_g_glWidth:F

.field private mExportVar_g_meshHeight:F

.field private mExportVar_g_meshWidth:F

.field private mExportVar_g_rotate:F

.field private mExportVar_g_xOffset:F


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
.method public bind_g_Constants(Lcom/android/wallpaper/fall/ScriptField_Constants;)V
    .registers 4
    .parameter "v"

    .prologue
    const/16 v1, 0xe

    .line 192
    iput-object p1, p0, Lcom/android/wallpaper/fall/ScriptC_fall;->mExportVar_g_Constants:Lcom/android/wallpaper/fall/ScriptField_Constants;

    .line 193
    if-nez p1, :cond_b

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/wallpaper/fall/ScriptC_fall;->bindAllocation(Landroid/renderscript/Allocation;I)V

    .line 195
    :goto_a
    return-void

    .line 194
    :cond_b
    invoke-virtual {p1}, Lcom/android/wallpaper/fall/ScriptField_Constants;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/android/wallpaper/fall/ScriptC_fall;->bindAllocation(Landroid/renderscript/Allocation;I)V

    goto :goto_a
.end method

.method public invoke_addDrop(II)V
    .registers 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 219
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 220
    .local v0, addDrop_fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 221
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 222
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/wallpaper/fall/ScriptC_fall;->invoke(ILandroid/renderscript/FieldPacker;)V

    .line 223
    return-void
.end method

.method public invoke_initLeaves()V
    .registers 2

    .prologue
    .line 214
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/wallpaper/fall/ScriptC_fall;->invoke(I)V

    .line 215
    return-void
.end method

.method public set_g_PFBackground(Landroid/renderscript/ProgramFragment;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/wallpaper/fall/ScriptC_fall;->mExportVar_g_PFBackground:Landroid/renderscript/ProgramFragment;

    .line 149
    const/16 v0, 0xa

    invoke-virtual {p0, v0, p1}, Lcom/android/wallpaper/fall/ScriptC_fall;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 150
    return-void
.end method

.method public set_g_PFSBackground(Landroid/renderscript/ProgramStore;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 204
    iput-object p1, p0, Lcom/android/wallpaper/fall/ScriptC_fall;->mExportVar_g_PFSBackground:Landroid/renderscript/ProgramStore;

    .line 205
    const/16 v0, 0xf

    invoke-virtual {p0, v0, p1}, Lcom/android/wallpaper/fall/ScriptC_fall;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 206
    return-void
.end method

.method public set_g_PFSLeaf(Landroid/renderscript/ProgramStore;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/wallpaper/fall/ScriptC_fall;->mExportVar_g_PFSLeaf:Landroid/renderscript/ProgramStore;

    .line 138
    const/16 v0, 0x9

    invoke-virtual {p0, v0, p1}, Lcom/android/wallpaper/fall/ScriptC_fall;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 139
    return-void
.end method

.method public set_g_PFSky(Landroid/renderscript/ProgramFragment;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/wallpaper/fall/ScriptC_fall;->mExportVar_g_PFSky:Landroid/renderscript/ProgramFragment;

    .line 127
    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Lcom/android/wallpaper/fall/ScriptC_fall;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 128
    return-void
.end method

.method public set_g_PVSky(Landroid/renderscript/ProgramVertex;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/wallpaper/fall/ScriptC_fall;->mExportVar_g_PVSky:Landroid/renderscript/ProgramVertex;

    .line 116
    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1}, Lcom/android/wallpaper/fall/ScriptC_fall;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 117
    return-void
.end method

.method public set_g_PVWater(Landroid/renderscript/ProgramVertex;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/wallpaper/fall/ScriptC_fall;->mExportVar_g_PVWater:Landroid/renderscript/ProgramVertex;

    .line 105
    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1}, Lcom/android/wallpaper/fall/ScriptC_fall;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 106
    return-void
.end method

.method public set_g_TLeaves(Landroid/renderscript/Allocation;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/wallpaper/fall/ScriptC_fall;->mExportVar_g_TLeaves:Landroid/renderscript/Allocation;

    .line 160
    const/16 v0, 0xb

    invoke-virtual {p0, v0, p1}, Lcom/android/wallpaper/fall/ScriptC_fall;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 161
    return-void
.end method

.method public set_g_TRiverbed(Landroid/renderscript/Allocation;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/wallpaper/fall/ScriptC_fall;->mExportVar_g_TRiverbed:Landroid/renderscript/Allocation;

    .line 171
    const/16 v0, 0xc

    invoke-virtual {p0, v0, p1}, Lcom/android/wallpaper/fall/ScriptC_fall;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 172
    return-void
.end method

.method public set_g_WaterMesh(Landroid/renderscript/Mesh;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/wallpaper/fall/ScriptC_fall;->mExportVar_g_WaterMesh:Landroid/renderscript/Mesh;

    .line 182
    const/16 v0, 0xd

    invoke-virtual {p0, v0, p1}, Lcom/android/wallpaper/fall/ScriptC_fall;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 183
    return-void
.end method

.method public set_g_glHeight(F)V
    .registers 3
    .parameter "v"

    .prologue
    .line 49
    iput p1, p0, Lcom/android/wallpaper/fall/ScriptC_fall;->mExportVar_g_glHeight:F

    .line 50
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/wallpaper/fall/ScriptC_fall;->setVar(IF)V

    .line 51
    return-void
.end method

.method public set_g_glWidth(F)V
    .registers 3
    .parameter "v"

    .prologue
    .line 38
    iput p1, p0, Lcom/android/wallpaper/fall/ScriptC_fall;->mExportVar_g_glWidth:F

    .line 39
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/wallpaper/fall/ScriptC_fall;->setVar(IF)V

    .line 40
    return-void
.end method

.method public set_g_meshHeight(F)V
    .registers 3
    .parameter "v"

    .prologue
    .line 71
    iput p1, p0, Lcom/android/wallpaper/fall/ScriptC_fall;->mExportVar_g_meshHeight:F

    .line 72
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/android/wallpaper/fall/ScriptC_fall;->setVar(IF)V

    .line 73
    return-void
.end method

.method public set_g_meshWidth(F)V
    .registers 3
    .parameter "v"

    .prologue
    .line 60
    iput p1, p0, Lcom/android/wallpaper/fall/ScriptC_fall;->mExportVar_g_meshWidth:F

    .line 61
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/android/wallpaper/fall/ScriptC_fall;->setVar(IF)V

    .line 62
    return-void
.end method

.method public set_g_rotate(F)V
    .registers 3
    .parameter "v"

    .prologue
    .line 93
    iput p1, p0, Lcom/android/wallpaper/fall/ScriptC_fall;->mExportVar_g_rotate:F

    .line 94
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1}, Lcom/android/wallpaper/fall/ScriptC_fall;->setVar(IF)V

    .line 95
    return-void
.end method

.method public set_g_xOffset(F)V
    .registers 3
    .parameter "v"

    .prologue
    .line 82
    iput p1, p0, Lcom/android/wallpaper/fall/ScriptC_fall;->mExportVar_g_xOffset:F

    .line 83
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/android/wallpaper/fall/ScriptC_fall;->setVar(IF)V

    .line 84
    return-void
.end method
