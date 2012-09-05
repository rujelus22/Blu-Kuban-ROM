.class public Lcom/android/musicvis/vis4/ScriptC_vu;
.super Landroid/renderscript/ScriptC;
.source "ScriptC_vu.java"


# instance fields
.field private mExportVar_gAngle:F

.field private mExportVar_gPFBackground:Landroid/renderscript/ProgramFragment;

.field private mExportVar_gPFSBackground:Landroid/renderscript/ProgramStore;

.field private mExportVar_gPVBackground:Landroid/renderscript/ProgramVertex;

.field private mExportVar_gPeak:I

.field private mExportVar_gTvumeter_background:Landroid/renderscript/Allocation;

.field private mExportVar_gTvumeter_black:Landroid/renderscript/Allocation;

.field private mExportVar_gTvumeter_frame:Landroid/renderscript/Allocation;

.field private mExportVar_gTvumeter_needle:Landroid/renderscript/Allocation;

.field private mExportVar_gTvumeter_peak_off:Landroid/renderscript/Allocation;

.field private mExportVar_gTvumeter_peak_on:Landroid/renderscript/Allocation;


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
.method public set_gAngle(F)V
    .registers 3
    .parameter "v"

    .prologue
    .line 38
    iput p1, p0, Lcom/android/musicvis/vis4/ScriptC_vu;->mExportVar_gAngle:F

    .line 39
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/musicvis/vis4/ScriptC_vu;->setVar(IF)V

    .line 40
    return-void
.end method

.method public set_gPFBackground(Landroid/renderscript/ProgramFragment;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/musicvis/vis4/ScriptC_vu;->mExportVar_gPFBackground:Landroid/renderscript/ProgramFragment;

    .line 72
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/android/musicvis/vis4/ScriptC_vu;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 73
    return-void
.end method

.method public set_gPFSBackground(Landroid/renderscript/ProgramStore;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/musicvis/vis4/ScriptC_vu;->mExportVar_gPFSBackground:Landroid/renderscript/ProgramStore;

    .line 149
    const/16 v0, 0xa

    invoke-virtual {p0, v0, p1}, Lcom/android/musicvis/vis4/ScriptC_vu;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 150
    return-void
.end method

.method public set_gPVBackground(Landroid/renderscript/ProgramVertex;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/musicvis/vis4/ScriptC_vu;->mExportVar_gPVBackground:Landroid/renderscript/ProgramVertex;

    .line 61
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/android/musicvis/vis4/ScriptC_vu;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 62
    return-void
.end method

.method public set_gPeak(I)V
    .registers 3
    .parameter "v"

    .prologue
    .line 49
    iput p1, p0, Lcom/android/musicvis/vis4/ScriptC_vu;->mExportVar_gPeak:I

    .line 50
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/musicvis/vis4/ScriptC_vu;->setVar(II)V

    .line 51
    return-void
.end method

.method public set_gTvumeter_background(Landroid/renderscript/Allocation;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/musicvis/vis4/ScriptC_vu;->mExportVar_gTvumeter_background:Landroid/renderscript/Allocation;

    .line 83
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/android/musicvis/vis4/ScriptC_vu;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 84
    return-void
.end method

.method public set_gTvumeter_black(Landroid/renderscript/Allocation;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/musicvis/vis4/ScriptC_vu;->mExportVar_gTvumeter_black:Landroid/renderscript/Allocation;

    .line 127
    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Lcom/android/musicvis/vis4/ScriptC_vu;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 128
    return-void
.end method

.method public set_gTvumeter_frame(Landroid/renderscript/Allocation;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/musicvis/vis4/ScriptC_vu;->mExportVar_gTvumeter_frame:Landroid/renderscript/Allocation;

    .line 138
    const/16 v0, 0x9

    invoke-virtual {p0, v0, p1}, Lcom/android/musicvis/vis4/ScriptC_vu;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 139
    return-void
.end method

.method public set_gTvumeter_needle(Landroid/renderscript/Allocation;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/musicvis/vis4/ScriptC_vu;->mExportVar_gTvumeter_needle:Landroid/renderscript/Allocation;

    .line 116
    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1}, Lcom/android/musicvis/vis4/ScriptC_vu;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 117
    return-void
.end method

.method public set_gTvumeter_peak_off(Landroid/renderscript/Allocation;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/musicvis/vis4/ScriptC_vu;->mExportVar_gTvumeter_peak_off:Landroid/renderscript/Allocation;

    .line 105
    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1}, Lcom/android/musicvis/vis4/ScriptC_vu;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 106
    return-void
.end method

.method public set_gTvumeter_peak_on(Landroid/renderscript/Allocation;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/musicvis/vis4/ScriptC_vu;->mExportVar_gTvumeter_peak_on:Landroid/renderscript/Allocation;

    .line 94
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1}, Lcom/android/musicvis/vis4/ScriptC_vu;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 95
    return-void
.end method
