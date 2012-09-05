.class public Lcom/android/wallpaper/grass/ScriptC_grass;
.super Landroid/renderscript/ScriptC;
.source "ScriptC_grass.java"


# instance fields
.field private mExportVar_Blades:Lcom/android/wallpaper/grass/ScriptField_Blade;

.field private mExportVar_Verticies:Lcom/android/wallpaper/grass/ScriptField_Vertex;

.field private mExportVar_gAfternoon:F

.field private mExportVar_gBladesCount:I

.field private mExportVar_gBladesMesh:Landroid/renderscript/Mesh;

.field private mExportVar_gDawn:F

.field private mExportVar_gDusk:F

.field private mExportVar_gHeight:I

.field private mExportVar_gIndexCount:I

.field private mExportVar_gIsPreview:I

.field private mExportVar_gMorning:F

.field private mExportVar_gPFBackground:Landroid/renderscript/ProgramFragment;

.field private mExportVar_gPFGrass:Landroid/renderscript/ProgramFragment;

.field private mExportVar_gPSBackground:Landroid/renderscript/ProgramStore;

.field private mExportVar_gPVBackground:Landroid/renderscript/ProgramVertex;

.field private mExportVar_gTAa:Landroid/renderscript/Allocation;

.field private mExportVar_gTNight:Landroid/renderscript/Allocation;

.field private mExportVar_gTSky:Landroid/renderscript/Allocation;

.field private mExportVar_gTSunrise:Landroid/renderscript/Allocation;

.field private mExportVar_gTSunset:Landroid/renderscript/Allocation;

.field private mExportVar_gWidth:I

.field private mExportVar_gXOffset:F


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
.method public bind_Blades(Lcom/android/wallpaper/grass/ScriptField_Blade;)V
    .registers 4
    .parameter "v"

    .prologue
    const/16 v1, 0x14

    .line 258
    iput-object p1, p0, Lcom/android/wallpaper/grass/ScriptC_grass;->mExportVar_Blades:Lcom/android/wallpaper/grass/ScriptField_Blade;

    .line 259
    if-nez p1, :cond_b

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/wallpaper/grass/ScriptC_grass;->bindAllocation(Landroid/renderscript/Allocation;I)V

    .line 261
    :goto_a
    return-void

    .line 260
    :cond_b
    invoke-virtual {p1}, Lcom/android/wallpaper/grass/ScriptField_Blade;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/android/wallpaper/grass/ScriptC_grass;->bindAllocation(Landroid/renderscript/Allocation;I)V

    goto :goto_a
.end method

.method public bind_Verticies(Lcom/android/wallpaper/grass/ScriptField_Vertex;)V
    .registers 4
    .parameter "v"

    .prologue
    const/16 v1, 0x15

    .line 270
    iput-object p1, p0, Lcom/android/wallpaper/grass/ScriptC_grass;->mExportVar_Verticies:Lcom/android/wallpaper/grass/ScriptField_Vertex;

    .line 271
    if-nez p1, :cond_b

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/wallpaper/grass/ScriptC_grass;->bindAllocation(Landroid/renderscript/Allocation;I)V

    .line 273
    :goto_a
    return-void

    .line 272
    :cond_b
    invoke-virtual {p1}, Lcom/android/wallpaper/grass/ScriptField_Vertex;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/android/wallpaper/grass/ScriptC_grass;->bindAllocation(Landroid/renderscript/Allocation;I)V

    goto :goto_a
.end method

.method public invoke_updateBlades()V
    .registers 2

    .prologue
    .line 281
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/wallpaper/grass/ScriptC_grass;->invoke(I)V

    .line 282
    return-void
.end method

.method public set_gAfternoon(F)V
    .registers 3
    .parameter "v"

    .prologue
    .line 115
    iput p1, p0, Lcom/android/wallpaper/grass/ScriptC_grass;->mExportVar_gAfternoon:F

    .line 116
    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1}, Lcom/android/wallpaper/grass/ScriptC_grass;->setVar(IF)V

    .line 117
    return-void
.end method

.method public set_gBladesCount(I)V
    .registers 3
    .parameter "v"

    .prologue
    .line 38
    iput p1, p0, Lcom/android/wallpaper/grass/ScriptC_grass;->mExportVar_gBladesCount:I

    .line 39
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/wallpaper/grass/ScriptC_grass;->setVar(II)V

    .line 40
    return-void
.end method

.method public set_gBladesMesh(Landroid/renderscript/Mesh;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 247
    iput-object p1, p0, Lcom/android/wallpaper/grass/ScriptC_grass;->mExportVar_gBladesMesh:Landroid/renderscript/Mesh;

    .line 248
    const/16 v0, 0x13

    invoke-virtual {p0, v0, p1}, Lcom/android/wallpaper/grass/ScriptC_grass;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 249
    return-void
.end method

.method public set_gDawn(F)V
    .registers 3
    .parameter "v"

    .prologue
    .line 93
    iput p1, p0, Lcom/android/wallpaper/grass/ScriptC_grass;->mExportVar_gDawn:F

    .line 94
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1}, Lcom/android/wallpaper/grass/ScriptC_grass;->setVar(IF)V

    .line 95
    return-void
.end method

.method public set_gDusk(F)V
    .registers 3
    .parameter "v"

    .prologue
    .line 126
    iput p1, p0, Lcom/android/wallpaper/grass/ScriptC_grass;->mExportVar_gDusk:F

    .line 127
    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Lcom/android/wallpaper/grass/ScriptC_grass;->setVar(IF)V

    .line 128
    return-void
.end method

.method public set_gHeight(I)V
    .registers 3
    .parameter "v"

    .prologue
    .line 71
    iput p1, p0, Lcom/android/wallpaper/grass/ScriptC_grass;->mExportVar_gHeight:I

    .line 72
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/android/wallpaper/grass/ScriptC_grass;->setVar(II)V

    .line 73
    return-void
.end method

.method public set_gIndexCount(I)V
    .registers 3
    .parameter "v"

    .prologue
    .line 49
    iput p1, p0, Lcom/android/wallpaper/grass/ScriptC_grass;->mExportVar_gIndexCount:I

    .line 50
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/wallpaper/grass/ScriptC_grass;->setVar(II)V

    .line 51
    return-void
.end method

.method public set_gIsPreview(I)V
    .registers 3
    .parameter "v"

    .prologue
    .line 137
    iput p1, p0, Lcom/android/wallpaper/grass/ScriptC_grass;->mExportVar_gIsPreview:I

    .line 138
    const/16 v0, 0x9

    invoke-virtual {p0, v0, p1}, Lcom/android/wallpaper/grass/ScriptC_grass;->setVar(II)V

    .line 139
    return-void
.end method

.method public set_gMorning(F)V
    .registers 3
    .parameter "v"

    .prologue
    .line 104
    iput p1, p0, Lcom/android/wallpaper/grass/ScriptC_grass;->mExportVar_gMorning:F

    .line 105
    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1}, Lcom/android/wallpaper/grass/ScriptC_grass;->setVar(IF)V

    .line 106
    return-void
.end method

.method public set_gPFBackground(Landroid/renderscript/ProgramFragment;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/wallpaper/grass/ScriptC_grass;->mExportVar_gPFBackground:Landroid/renderscript/ProgramFragment;

    .line 160
    const/16 v0, 0xb

    invoke-virtual {p0, v0, p1}, Lcom/android/wallpaper/grass/ScriptC_grass;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 161
    return-void
.end method

.method public set_gPFGrass(Landroid/renderscript/ProgramFragment;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/wallpaper/grass/ScriptC_grass;->mExportVar_gPFGrass:Landroid/renderscript/ProgramFragment;

    .line 171
    const/16 v0, 0xc

    invoke-virtual {p0, v0, p1}, Lcom/android/wallpaper/grass/ScriptC_grass;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 172
    return-void
.end method

.method public set_gPSBackground(Landroid/renderscript/ProgramStore;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/wallpaper/grass/ScriptC_grass;->mExportVar_gPSBackground:Landroid/renderscript/ProgramStore;

    .line 182
    const/16 v0, 0xd

    invoke-virtual {p0, v0, p1}, Lcom/android/wallpaper/grass/ScriptC_grass;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 183
    return-void
.end method

.method public set_gPVBackground(Landroid/renderscript/ProgramVertex;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/wallpaper/grass/ScriptC_grass;->mExportVar_gPVBackground:Landroid/renderscript/ProgramVertex;

    .line 149
    const/16 v0, 0xa

    invoke-virtual {p0, v0, p1}, Lcom/android/wallpaper/grass/ScriptC_grass;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 150
    return-void
.end method

.method public set_gTAa(Landroid/renderscript/Allocation;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 236
    iput-object p1, p0, Lcom/android/wallpaper/grass/ScriptC_grass;->mExportVar_gTAa:Landroid/renderscript/Allocation;

    .line 237
    const/16 v0, 0x12

    invoke-virtual {p0, v0, p1}, Lcom/android/wallpaper/grass/ScriptC_grass;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 238
    return-void
.end method

.method public set_gTNight(Landroid/renderscript/Allocation;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 192
    iput-object p1, p0, Lcom/android/wallpaper/grass/ScriptC_grass;->mExportVar_gTNight:Landroid/renderscript/Allocation;

    .line 193
    const/16 v0, 0xe

    invoke-virtual {p0, v0, p1}, Lcom/android/wallpaper/grass/ScriptC_grass;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 194
    return-void
.end method

.method public set_gTSky(Landroid/renderscript/Allocation;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 225
    iput-object p1, p0, Lcom/android/wallpaper/grass/ScriptC_grass;->mExportVar_gTSky:Landroid/renderscript/Allocation;

    .line 226
    const/16 v0, 0x11

    invoke-virtual {p0, v0, p1}, Lcom/android/wallpaper/grass/ScriptC_grass;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 227
    return-void
.end method

.method public set_gTSunrise(Landroid/renderscript/Allocation;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 214
    iput-object p1, p0, Lcom/android/wallpaper/grass/ScriptC_grass;->mExportVar_gTSunrise:Landroid/renderscript/Allocation;

    .line 215
    const/16 v0, 0x10

    invoke-virtual {p0, v0, p1}, Lcom/android/wallpaper/grass/ScriptC_grass;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 216
    return-void
.end method

.method public set_gTSunset(Landroid/renderscript/Allocation;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 203
    iput-object p1, p0, Lcom/android/wallpaper/grass/ScriptC_grass;->mExportVar_gTSunset:Landroid/renderscript/Allocation;

    .line 204
    const/16 v0, 0xf

    invoke-virtual {p0, v0, p1}, Lcom/android/wallpaper/grass/ScriptC_grass;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 205
    return-void
.end method

.method public set_gWidth(I)V
    .registers 3
    .parameter "v"

    .prologue
    .line 60
    iput p1, p0, Lcom/android/wallpaper/grass/ScriptC_grass;->mExportVar_gWidth:I

    .line 61
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/android/wallpaper/grass/ScriptC_grass;->setVar(II)V

    .line 62
    return-void
.end method

.method public set_gXOffset(F)V
    .registers 3
    .parameter "v"

    .prologue
    .line 82
    iput p1, p0, Lcom/android/wallpaper/grass/ScriptC_grass;->mExportVar_gXOffset:F

    .line 83
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/android/wallpaper/grass/ScriptC_grass;->setVar(IF)V

    .line 84
    return-void
.end method
