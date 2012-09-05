.class public Lcom/google/android/apps/books/widget/ScriptC_pageturn;
.super Landroid/renderscript/ScriptC;
.source "ScriptC_pageturn.java"


# instance fields
.field private mExportVar_MESH_HEIGHT_QUADS:I

.field private mExportVar_NB_SAMPLES:I

.field private mExportVar_bezierCurveData:Landroid/renderscript/Allocation;

.field private mExportVar_fsConstants:Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;

.field private mExportVar_landscape:Z

.field private mExportVar_mesh:Landroid/renderscript/Mesh;

.field private mExportVar_numBezierCurveDataPoints:I

.field private mExportVar_pfColor:Landroid/renderscript/ProgramFragment;

.field private mExportVar_pfPage:Landroid/renderscript/ProgramFragment;

.field private mExportVar_pfPageLight:Landroid/renderscript/ProgramFragment;

.field private mExportVar_pfPageLightLoading:Landroid/renderscript/ProgramFragment;

.field private mExportVar_pfPageLoading:Landroid/renderscript/ProgramFragment;

.field private mExportVar_pfSimpleTexture:Landroid/renderscript/ProgramFragment;

.field private mExportVar_pfSpine:Landroid/renderscript/ProgramFragment;

.field private mExportVar_pfsPage:Landroid/renderscript/ProgramStore;

.field private mExportVar_pfsPageOpaque:Landroid/renderscript/ProgramStore;

.field private mExportVar_pfsReaderFadingIn:Landroid/renderscript/ProgramStore;

.field private mExportVar_point:Lcom/google/android/apps/books/widget/ScriptField_Point_s;

.field private mExportVar_prCullBack:Landroid/renderscript/ProgramRaster;

.field private mExportVar_prCullFront:Landroid/renderscript/ProgramRaster;

.field private mExportVar_pvPage:Landroid/renderscript/ProgramVertex;

.field private mExportVar_pvPageLight:Landroid/renderscript/ProgramVertex;

.field private mExportVar_tLoading:Landroid/renderscript/Allocation;

.field private mExportVar_tShadow:Landroid/renderscript/Allocation;

.field private mExportVar_tSpine:Landroid/renderscript/Allocation;

.field private mExportVar_themeNight:Z

.field private mExportVar_vsConstants:Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)V
    .registers 5
    .parameter "rs"
    .parameter "resources"
    .parameter "id"

    .prologue
    .line 16
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/ScriptC;-><init>(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)V

    .line 17
    const/16 v0, 0x64

    iput v0, p0, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->mExportVar_NB_SAMPLES:I

    .line 18
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->mExportVar_MESH_HEIGHT_QUADS:I

    .line 19
    return-void
.end method


# virtual methods
.method public bind_bezierCurveData(Landroid/renderscript/Allocation;)V
    .registers 4
    .parameter "v"

    .prologue
    const/16 v1, 0x8

    .line 115
    iput-object p1, p0, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->mExportVar_bezierCurveData:Landroid/renderscript/Allocation;

    .line 116
    if-nez p1, :cond_b

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->bindAllocation(Landroid/renderscript/Allocation;I)V

    .line 118
    :goto_a
    return-void

    .line 117
    :cond_b
    invoke-virtual {p0, p1, v1}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->bindAllocation(Landroid/renderscript/Allocation;I)V

    goto :goto_a
.end method

.method public bind_fsConstants(Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;)V
    .registers 4
    .parameter "v"

    .prologue
    const/4 v1, 0x5

    .line 80
    iput-object p1, p0, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->mExportVar_fsConstants:Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;

    .line 81
    if-nez p1, :cond_a

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->bindAllocation(Landroid/renderscript/Allocation;I)V

    .line 83
    :goto_9
    return-void

    .line 82
    :cond_a
    invoke-virtual {p1}, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->bindAllocation(Landroid/renderscript/Allocation;I)V

    goto :goto_9
.end method

.method public bind_point(Lcom/google/android/apps/books/widget/ScriptField_Point_s;)V
    .registers 4
    .parameter "v"

    .prologue
    const/4 v1, 0x6

    .line 92
    iput-object p1, p0, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->mExportVar_point:Lcom/google/android/apps/books/widget/ScriptField_Point_s;

    .line 93
    if-nez p1, :cond_a

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->bindAllocation(Landroid/renderscript/Allocation;I)V

    .line 95
    :goto_9
    return-void

    .line 94
    :cond_a
    invoke-virtual {p1}, Lcom/google/android/apps/books/widget/ScriptField_Point_s;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->bindAllocation(Landroid/renderscript/Allocation;I)V

    goto :goto_9
.end method

.method public bind_vsConstants(Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;)V
    .registers 4
    .parameter "v"

    .prologue
    const/4 v1, 0x4

    .line 68
    iput-object p1, p0, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->mExportVar_vsConstants:Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;

    .line 69
    if-nez p1, :cond_a

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->bindAllocation(Landroid/renderscript/Allocation;I)V

    .line 71
    :goto_9
    return-void

    .line 70
    :cond_a
    invoke-virtual {p1}, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->bindAllocation(Landroid/renderscript/Allocation;I)V

    goto :goto_9
.end method

.method public get_MESH_HEIGHT_QUADS()I
    .registers 2

    .prologue
    .line 331
    iget v0, p0, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->mExportVar_MESH_HEIGHT_QUADS:I

    return v0
.end method

.method public get_NB_SAMPLES()I
    .registers 2

    .prologue
    .line 325
    iget v0, p0, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->mExportVar_NB_SAMPLES:I

    return v0
.end method

.method public invoke_animateTransitionToNextPage(I)V
    .registers 4
    .parameter "direction"

    .prologue
    .line 381
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 382
    .local v0, animateTransitionToNextPage_fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 383
    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->invoke(ILandroid/renderscript/FieldPacker;)V

    .line 384
    return-void
.end method

.method public invoke_destroy()V
    .registers 2

    .prologue
    .line 336
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->invoke(I)V

    .line 337
    return-void
.end method

.method public invoke_initBezierCurveData()V
    .registers 2

    .prologue
    .line 341
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->invoke(I)V

    .line 342
    return-void
.end method

.method public invoke_initTransformationMatrices()V
    .registers 2

    .prologue
    .line 346
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->invoke(I)V

    .line 347
    return-void
.end method

.method public invoke_setPage(ILandroid/renderscript/Allocation;Z)V
    .registers 7
    .parameter "slot"
    .parameter "texture"
    .parameter "validData"

    .prologue
    const/4 v2, 0x3

    .line 351
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 352
    .local v0, setPage_fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 353
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addObj(Landroid/renderscript/BaseObj;)V

    .line 354
    invoke-virtual {v0, p3}, Landroid/renderscript/FieldPacker;->addBoolean(Z)V

    .line 355
    invoke-virtual {v0, v2}, Landroid/renderscript/FieldPacker;->skip(I)V

    .line 356
    invoke-virtual {p0, v2, v0}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->invoke(ILandroid/renderscript/FieldPacker;)V

    .line 357
    return-void
.end method

.method public invoke_setShouldFadeIn(Z)V
    .registers 4
    .parameter "fade"

    .prologue
    .line 388
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 389
    .local v0, setShouldFadeIn_fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addBoolean(Z)V

    .line 390
    const/4 v1, 0x7

    invoke-virtual {p0, v1, v0}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->invoke(ILandroid/renderscript/FieldPacker;)V

    .line 391
    return-void
.end method

.method public invoke_setTurnState(IFIZ)V
    .registers 7
    .parameter "currentPageIndex"
    .parameter "inFractionTurned"
    .parameter "direction"
    .parameter "movingToNewPosition"

    .prologue
    .line 370
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 371
    .local v0, setTurnState_fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 372
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 373
    invoke-virtual {v0, p3}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 374
    invoke-virtual {v0, p4}, Landroid/renderscript/FieldPacker;->addBoolean(Z)V

    .line 375
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->skip(I)V

    .line 376
    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->invoke(ILandroid/renderscript/FieldPacker;)V

    .line 377
    return-void
.end method

.method public invoke_zoom(FFF)V
    .registers 6
    .parameter "scale"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 361
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 362
    .local v0, zoom_fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 363
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 364
    invoke-virtual {v0, p3}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 365
    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->invoke(ILandroid/renderscript/FieldPacker;)V

    .line 366
    return-void
.end method

.method public set_landscape(Z)V
    .registers 3
    .parameter "v"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->mExportVar_landscape:Z

    .line 47
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->setVar(IZ)V

    .line 48
    return-void
.end method

.method public set_mesh(Landroid/renderscript/Mesh;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->mExportVar_mesh:Landroid/renderscript/Mesh;

    .line 105
    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 106
    return-void
.end method

.method public set_numBezierCurveDataPoints(I)V
    .registers 3
    .parameter "v"

    .prologue
    .line 127
    iput p1, p0, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->mExportVar_numBezierCurveDataPoints:I

    .line 128
    const/16 v0, 0x9

    invoke-virtual {p0, v0, p1}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->setVar(II)V

    .line 129
    return-void
.end method

.method public set_pfColor(Landroid/renderscript/ProgramFragment;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 259
    iput-object p1, p0, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->mExportVar_pfColor:Landroid/renderscript/ProgramFragment;

    .line 260
    const/16 v0, 0x15

    invoke-virtual {p0, v0, p1}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 261
    return-void
.end method

.method public set_pfPage(Landroid/renderscript/ProgramFragment;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 193
    iput-object p1, p0, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->mExportVar_pfPage:Landroid/renderscript/ProgramFragment;

    .line 194
    const/16 v0, 0xf

    invoke-virtual {p0, v0, p1}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 195
    return-void
.end method

.method public set_pfPageLight(Landroid/renderscript/ProgramFragment;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 215
    iput-object p1, p0, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->mExportVar_pfPageLight:Landroid/renderscript/ProgramFragment;

    .line 216
    const/16 v0, 0x11

    invoke-virtual {p0, v0, p1}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 217
    return-void
.end method

.method public set_pfPageLightLoading(Landroid/renderscript/ProgramFragment;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 226
    iput-object p1, p0, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->mExportVar_pfPageLightLoading:Landroid/renderscript/ProgramFragment;

    .line 227
    const/16 v0, 0x12

    invoke-virtual {p0, v0, p1}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 228
    return-void
.end method

.method public set_pfPageLoading(Landroid/renderscript/ProgramFragment;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 204
    iput-object p1, p0, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->mExportVar_pfPageLoading:Landroid/renderscript/ProgramFragment;

    .line 205
    const/16 v0, 0x10

    invoke-virtual {p0, v0, p1}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 206
    return-void
.end method

.method public set_pfSimpleTexture(Landroid/renderscript/ProgramFragment;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 248
    iput-object p1, p0, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->mExportVar_pfSimpleTexture:Landroid/renderscript/ProgramFragment;

    .line 249
    const/16 v0, 0x14

    invoke-virtual {p0, v0, p1}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 250
    return-void
.end method

.method public set_pfSpine(Landroid/renderscript/ProgramFragment;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 237
    iput-object p1, p0, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->mExportVar_pfSpine:Landroid/renderscript/ProgramFragment;

    .line 238
    const/16 v0, 0x13

    invoke-virtual {p0, v0, p1}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 239
    return-void
.end method

.method public set_pfsPage(Landroid/renderscript/ProgramStore;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->mExportVar_pfsPage:Landroid/renderscript/ProgramStore;

    .line 139
    const/16 v0, 0xa

    invoke-virtual {p0, v0, p1}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 140
    return-void
.end method

.method public set_pfsPageOpaque(Landroid/renderscript/ProgramStore;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->mExportVar_pfsPageOpaque:Landroid/renderscript/ProgramStore;

    .line 150
    const/16 v0, 0xb

    invoke-virtual {p0, v0, p1}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 151
    return-void
.end method

.method public set_pfsReaderFadingIn(Landroid/renderscript/ProgramStore;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 160
    iput-object p1, p0, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->mExportVar_pfsReaderFadingIn:Landroid/renderscript/ProgramStore;

    .line 161
    const/16 v0, 0xc

    invoke-virtual {p0, v0, p1}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 162
    return-void
.end method

.method public set_prCullBack(Landroid/renderscript/ProgramRaster;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 182
    iput-object p1, p0, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->mExportVar_prCullBack:Landroid/renderscript/ProgramRaster;

    .line 183
    const/16 v0, 0xe

    invoke-virtual {p0, v0, p1}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 184
    return-void
.end method

.method public set_prCullFront(Landroid/renderscript/ProgramRaster;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 171
    iput-object p1, p0, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->mExportVar_prCullFront:Landroid/renderscript/ProgramRaster;

    .line 172
    const/16 v0, 0xd

    invoke-virtual {p0, v0, p1}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 173
    return-void
.end method

.method public set_pvPage(Landroid/renderscript/ProgramVertex;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 270
    iput-object p1, p0, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->mExportVar_pvPage:Landroid/renderscript/ProgramVertex;

    .line 271
    const/16 v0, 0x16

    invoke-virtual {p0, v0, p1}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 272
    return-void
.end method

.method public set_pvPageLight(Landroid/renderscript/ProgramVertex;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 281
    iput-object p1, p0, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->mExportVar_pvPageLight:Landroid/renderscript/ProgramVertex;

    .line 282
    const/16 v0, 0x17

    invoke-virtual {p0, v0, p1}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 283
    return-void
.end method

.method public set_tLoading(Landroid/renderscript/Allocation;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 314
    iput-object p1, p0, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->mExportVar_tLoading:Landroid/renderscript/Allocation;

    .line 315
    const/16 v0, 0x1a

    invoke-virtual {p0, v0, p1}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 316
    return-void
.end method

.method public set_tShadow(Landroid/renderscript/Allocation;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 292
    iput-object p1, p0, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->mExportVar_tShadow:Landroid/renderscript/Allocation;

    .line 293
    const/16 v0, 0x18

    invoke-virtual {p0, v0, p1}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 294
    return-void
.end method

.method public set_tSpine(Landroid/renderscript/Allocation;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 303
    iput-object p1, p0, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->mExportVar_tSpine:Landroid/renderscript/Allocation;

    .line 304
    const/16 v0, 0x19

    invoke-virtual {p0, v0, p1}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 305
    return-void
.end method

.method public set_themeNight(Z)V
    .registers 3
    .parameter "v"

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->mExportVar_themeNight:Z

    .line 58
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->setVar(IZ)V

    .line 59
    return-void
.end method
