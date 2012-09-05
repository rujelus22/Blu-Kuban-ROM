.class public Lcom/google/android/apps/books/widget/PageTurnRS;
.super Ljava/lang/Object;
.source "PageTurnRS.java"


# instance fields
.field private mAnchorIndex:Ljava/lang/Integer;

.field private mEmptyAllocation:Landroid/renderscript/Allocation;

.field private mEmptyBitmap:Landroid/graphics/Bitmap;

.field private mEnableHQFiltering:Z

.field private mErrorAllocation:Landroid/renderscript/Allocation;

.field private mFSConst:Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;

.field private mLoadingAllocation:Landroid/renderscript/Allocation;

.field private mPageAllocations:[Landroid/renderscript/Allocation;

.field private mPfColor:Landroid/renderscript/ProgramFragment;

.field private mPfPage:Landroid/renderscript/ProgramFragment;

.field private mPfPageLight:Landroid/renderscript/ProgramFragment;

.field private mPfPageLightLoading:Landroid/renderscript/ProgramFragment;

.field private mPfPageLoading:Landroid/renderscript/ProgramFragment;

.field private mPfSimpleTexture:Landroid/renderscript/ProgramFragment;

.field private mPfSpine:Landroid/renderscript/ProgramFragment;

.field private mPfsPage:Landroid/renderscript/ProgramStore;

.field private mPfsPageOpaque:Landroid/renderscript/ProgramStore;

.field private mPfsReaderFadingIn:Landroid/renderscript/ProgramStore;

.field private mPrCullBack:Landroid/renderscript/ProgramRaster;

.field private mPrCullFront:Landroid/renderscript/ProgramRaster;

.field private mPvPage:Landroid/renderscript/ProgramVertex;

.field private mPvPageLight:Landroid/renderscript/ProgramVertex;

.field private mRS:Landroid/renderscript/RenderScriptGL;

.field private mRes:Landroid/content/res/Resources;

.field private mSampler:Landroid/renderscript/Sampler;

.field private mSamplerMip:Landroid/renderscript/Sampler;

.field private mScript:Lcom/google/android/apps/books/widget/ScriptC_pageturn;

.field private mThemeNight:Z

.field private mVSConst:Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScriptGL;Landroid/content/Context;)V
    .registers 5
    .parameter "rs"
    .parameter "context"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mEnableHQFiltering:Z

    .line 86
    const/4 v0, 0x6

    new-array v0, v0, [Landroid/renderscript/Allocation;

    iput-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mPageAllocations:[Landroid/renderscript/Allocation;

    .line 364
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mAnchorIndex:Ljava/lang/Integer;

    .line 51
    const-string v0, "PageTurnRS"

    const-string v1, "Initializing PageTurnRS"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/books/widget/PageTurnRS;->init(Landroid/renderscript/RenderScriptGL;Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method private static buildBitmapOptionsARGB_8888()Landroid/graphics/BitmapFactory$Options;
    .registers 2

    .prologue
    .line 512
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 513
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 514
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 515
    return-object v0
.end method

.method private createAllocationForBitmap(Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;
    .registers 6
    .parameter "bitmap"

    .prologue
    .line 383
    const-string v1, "missing bitmap"

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    iget-object v2, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mRS:Landroid/renderscript/RenderScriptGL;

    iget-boolean v1, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mEnableHQFiltering:Z

    if-eqz v1, :cond_13

    sget-object v1, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_ON_SYNC_TO_TEXTURE:Landroid/renderscript/Allocation$MipmapControl;

    :goto_d
    const/4 v3, 0x2

    invoke-static {v2, p1, v1, v3}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v0

    .line 388
    .local v0, allocation:Landroid/renderscript/Allocation;
    return-object v0

    .line 384
    .end local v0           #allocation:Landroid/renderscript/Allocation;
    :cond_13
    sget-object v1, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    goto :goto_d
.end method

.method private createEmptyBitmap(II)V
    .registers 5
    .parameter "width"
    .parameter "height"

    .prologue
    .line 349
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mEmptyBitmap:Landroid/graphics/Bitmap;

    .line 350
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mEmptyBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 351
    .local v0, canvas:Landroid/graphics/Canvas;
    iget-boolean v1, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mThemeNight:Z

    if-eqz v1, :cond_21

    const/high16 v1, -0x100

    :goto_15
    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 353
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mEmptyBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v1}, Lcom/google/android/apps/books/widget/PageTurnRS;->createAllocationForBitmap(Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mEmptyAllocation:Landroid/renderscript/Allocation;

    .line 354
    return-void

    .line 351
    :cond_21
    const/4 v1, -0x1

    goto :goto_15
.end method

.method private init(Landroid/renderscript/RenderScriptGL;Landroid/content/Context;)V
    .registers 37
    .parameter "rs"
    .parameter "context"

    .prologue
    .line 92
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/books/widget/PageTurnRS;->mRS:Landroid/renderscript/RenderScriptGL;

    .line 93
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/books/widget/PageTurnRS;->mRes:Landroid/content/res/Resources;

    .line 95
    invoke-static/range {p2 .. p2}, Lcom/google/android/apps/books/util/ReaderUtils;->shouldDisplayTwoPages(Landroid/content/Context;)Z

    move-result v25

    .line 98
    .local v25, shouldDisplayTwoPages:Z
    new-instance v30, Lcom/google/android/apps/books/widget/ScriptC_pageturn;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mRS:Landroid/renderscript/RenderScriptGL;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mRes:Landroid/content/res/Resources;

    move-object/from16 v32, v0

    const v33, 0x7f070006

    invoke-direct/range {v30 .. v33}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;-><init>(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/books/widget/PageTurnRS;->mScript:Lcom/google/android/apps/books/widget/ScriptC_pageturn;

    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mScript:Lcom/google/android/apps/books/widget/ScriptC_pageturn;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->get_NB_SAMPLES()I

    move-result v10

    .line 100
    .local v10, meshWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mScript:Lcom/google/android/apps/books/widget/ScriptC_pageturn;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->get_MESH_HEIGHT_QUADS()I

    move-result v9

    .line 101
    .local v9, meshHeight:I
    new-instance v15, Lcom/google/android/apps/books/widget/ScriptField_Point_s;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mRS:Landroid/renderscript/RenderScriptGL;

    move-object/from16 v30, v0

    mul-int v31, v10, v9

    mul-int/lit8 v31, v31, 0x6

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-direct {v15, v0, v1}, Lcom/google/android/apps/books/widget/ScriptField_Point_s;-><init>(Landroid/renderscript/RenderScript;I)V

    .line 103
    .local v15, points:Lcom/google/android/apps/books/widget/ScriptField_Point_s;
    invoke-static/range {p2 .. p2}, Lcom/google/android/apps/books/app/BooksActivity;->isNightMode(Landroid/content/Context;)Z

    move-result v30

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/widget/PageTurnRS;->setThemeNight(Z)V

    .line 106
    const/16 v30, 0x1

    const/16 v31, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/books/widget/PageTurnRS;->createEmptyBitmap(II)V

    .line 107
    const/16 v30, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/widget/PageTurnRS;->setLoadingBitmap(Landroid/graphics/Bitmap;)V

    .line 108
    const/16 v30, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/widget/PageTurnRS;->setErrorBitmap(Landroid/graphics/Bitmap;)V

    .line 110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mScript:Lcom/google/android/apps/books/widget/ScriptC_pageturn;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v15}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->bind_point(Lcom/google/android/apps/books/widget/ScriptField_Point_s;)V

    .line 111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mScript:Lcom/google/android/apps/books/widget/ScriptC_pageturn;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->set_landscape(Z)V

    .line 115
    new-instance v4, Landroid/renderscript/Mesh$AllocationBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mRS:Landroid/renderscript/RenderScriptGL;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-direct {v4, v0}, Landroid/renderscript/Mesh$AllocationBuilder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 116
    .local v4, ab:Landroid/renderscript/Mesh$AllocationBuilder;
    invoke-virtual {v15}, Lcom/google/android/apps/books/widget/ScriptField_Point_s;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Landroid/renderscript/Mesh$AllocationBuilder;->addVertexAllocation(Landroid/renderscript/Allocation;)Landroid/renderscript/Mesh$AllocationBuilder;

    .line 117
    sget-object v30, Landroid/renderscript/Mesh$Primitive;->TRIANGLE:Landroid/renderscript/Mesh$Primitive;

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Landroid/renderscript/Mesh$AllocationBuilder;->addIndexSetType(Landroid/renderscript/Mesh$Primitive;)Landroid/renderscript/Mesh$AllocationBuilder;

    .line 118
    invoke-virtual {v4}, Landroid/renderscript/Mesh$AllocationBuilder;->create()Landroid/renderscript/Mesh;

    move-result-object v8

    .line 119
    .local v8, mesh:Landroid/renderscript/Mesh;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mScript:Lcom/google/android/apps/books/widget/ScriptC_pageturn;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v8}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->set_mesh(Landroid/renderscript/Mesh;)V

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mRes:Landroid/content/res/Resources;

    move-object/from16 v30, v0

    const v31, 0x7f080009

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v5

    .line 123
    .local v5, bezierCurveData:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mRS:Landroid/renderscript/RenderScriptGL;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mRS:Landroid/renderscript/RenderScriptGL;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Landroid/renderscript/Element;->I32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v31

    array-length v0, v5

    move/from16 v32, v0

    invoke-static/range {v30 .. v32}, Landroid/renderscript/Allocation;->createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;I)Landroid/renderscript/Allocation;

    move-result-object v6

    .line 125
    .local v6, bezierCurveDataAllocation:Landroid/renderscript/Allocation;
    invoke-virtual {v6, v5}, Landroid/renderscript/Allocation;->copyFrom([I)V

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mScript:Lcom/google/android/apps/books/widget/ScriptC_pageturn;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->bind_bezierCurveData(Landroid/renderscript/Allocation;)V

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mScript:Lcom/google/android/apps/books/widget/ScriptC_pageturn;

    move-object/from16 v30, v0

    array-length v0, v5

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->set_numBezierCurveDataPoints(I)V

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mScript:Lcom/google/android/apps/books/widget/ScriptC_pageturn;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->invoke_initBezierCurveData()V

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mRS:Landroid/renderscript/RenderScriptGL;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/renderscript/ProgramRaster;->CULL_BACK(Landroid/renderscript/RenderScript;)Landroid/renderscript/ProgramRaster;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/books/widget/PageTurnRS;->mPrCullBack:Landroid/renderscript/ProgramRaster;

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mScript:Lcom/google/android/apps/books/widget/ScriptC_pageturn;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mPrCullBack:Landroid/renderscript/ProgramRaster;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->set_prCullBack(Landroid/renderscript/ProgramRaster;)V

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mRS:Landroid/renderscript/RenderScriptGL;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/renderscript/ProgramRaster;->CULL_FRONT(Landroid/renderscript/RenderScript;)Landroid/renderscript/ProgramRaster;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/books/widget/PageTurnRS;->mPrCullFront:Landroid/renderscript/ProgramRaster;

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mScript:Lcom/google/android/apps/books/widget/ScriptC_pageturn;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mPrCullFront:Landroid/renderscript/ProgramRaster;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->set_prCullFront(Landroid/renderscript/ProgramRaster;)V

    .line 139
    new-instance v16, Landroid/renderscript/ProgramStore$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mRS:Landroid/renderscript/RenderScriptGL;

    move-object/from16 v30, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Landroid/renderscript/ProgramStore$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 140
    .local v16, programStoreBuilder:Landroid/renderscript/ProgramStore$Builder;
    sget-object v30, Landroid/renderscript/ProgramStore$DepthFunc;->ALWAYS:Landroid/renderscript/ProgramStore$DepthFunc;

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramStore$Builder;->setDepthFunc(Landroid/renderscript/ProgramStore$DepthFunc;)Landroid/renderscript/ProgramStore$Builder;

    .line 141
    sget-object v30, Landroid/renderscript/ProgramStore$BlendSrcFunc;->SRC_ALPHA:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    sget-object v31, Landroid/renderscript/ProgramStore$BlendDstFunc;->ONE_MINUS_SRC_ALPHA:Landroid/renderscript/ProgramStore$BlendDstFunc;

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/ProgramStore$Builder;->setBlendFunc(Landroid/renderscript/ProgramStore$BlendSrcFunc;Landroid/renderscript/ProgramStore$BlendDstFunc;)Landroid/renderscript/ProgramStore$Builder;

    .line 142
    const/16 v30, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramStore$Builder;->setDitherEnabled(Z)Landroid/renderscript/ProgramStore$Builder;

    .line 143
    const/16 v30, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramStore$Builder;->setDepthMaskEnabled(Z)Landroid/renderscript/ProgramStore$Builder;

    .line 144
    invoke-virtual/range {v16 .. v16}, Landroid/renderscript/ProgramStore$Builder;->create()Landroid/renderscript/ProgramStore;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/books/widget/PageTurnRS;->mPfsPage:Landroid/renderscript/ProgramStore;

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mScript:Lcom/google/android/apps/books/widget/ScriptC_pageturn;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mPfsPage:Landroid/renderscript/ProgramStore;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->set_pfsPage(Landroid/renderscript/ProgramStore;)V

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mRS:Landroid/renderscript/RenderScriptGL;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/renderscript/ProgramStore;->BLEND_NONE_DEPTH_NONE(Landroid/renderscript/RenderScript;)Landroid/renderscript/ProgramStore;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/books/widget/PageTurnRS;->mPfsPageOpaque:Landroid/renderscript/ProgramStore;

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mScript:Lcom/google/android/apps/books/widget/ScriptC_pageturn;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mPfsPageOpaque:Landroid/renderscript/ProgramStore;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->set_pfsPageOpaque(Landroid/renderscript/ProgramStore;)V

    .line 150
    new-instance v21, Landroid/renderscript/ProgramStore$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mRS:Landroid/renderscript/RenderScriptGL;

    move-object/from16 v30, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Landroid/renderscript/ProgramStore$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 151
    .local v21, readerFadingInBuilder:Landroid/renderscript/ProgramStore$Builder;
    sget-object v30, Landroid/renderscript/ProgramStore$DepthFunc;->ALWAYS:Landroid/renderscript/ProgramStore$DepthFunc;

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramStore$Builder;->setDepthFunc(Landroid/renderscript/ProgramStore$DepthFunc;)Landroid/renderscript/ProgramStore$Builder;

    .line 153
    sget-object v30, Landroid/renderscript/ProgramStore$BlendSrcFunc;->ONE:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    sget-object v31, Landroid/renderscript/ProgramStore$BlendDstFunc;->ONE_MINUS_SRC_ALPHA:Landroid/renderscript/ProgramStore$BlendDstFunc;

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/ProgramStore$Builder;->setBlendFunc(Landroid/renderscript/ProgramStore$BlendSrcFunc;Landroid/renderscript/ProgramStore$BlendDstFunc;)Landroid/renderscript/ProgramStore$Builder;

    .line 154
    const/16 v30, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramStore$Builder;->setDitherEnabled(Z)Landroid/renderscript/ProgramStore$Builder;

    .line 155
    const/16 v30, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramStore$Builder;->setDepthMaskEnabled(Z)Landroid/renderscript/ProgramStore$Builder;

    .line 156
    invoke-virtual/range {v16 .. v16}, Landroid/renderscript/ProgramStore$Builder;->create()Landroid/renderscript/ProgramStore;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/books/widget/PageTurnRS;->mPfsReaderFadingIn:Landroid/renderscript/ProgramStore;

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mScript:Lcom/google/android/apps/books/widget/ScriptC_pageturn;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mPfsReaderFadingIn:Landroid/renderscript/ProgramStore;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->set_pfsReaderFadingIn(Landroid/renderscript/ProgramStore;)V

    .line 160
    new-instance v22, Landroid/renderscript/Sampler$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mRS:Landroid/renderscript/RenderScriptGL;

    move-object/from16 v30, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Landroid/renderscript/Sampler$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 161
    .local v22, sampleBuilder:Landroid/renderscript/Sampler$Builder;
    sget-object v30, Landroid/renderscript/Sampler$Value;->LINEAR:Landroid/renderscript/Sampler$Value;

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setMinification(Landroid/renderscript/Sampler$Value;)V

    .line 162
    sget-object v30, Landroid/renderscript/Sampler$Value;->LINEAR:Landroid/renderscript/Sampler$Value;

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setMagnification(Landroid/renderscript/Sampler$Value;)V

    .line 163
    sget-object v30, Landroid/renderscript/Sampler$Value;->CLAMP:Landroid/renderscript/Sampler$Value;

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setWrapS(Landroid/renderscript/Sampler$Value;)V

    .line 164
    sget-object v30, Landroid/renderscript/Sampler$Value;->WRAP:Landroid/renderscript/Sampler$Value;

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setWrapT(Landroid/renderscript/Sampler$Value;)V

    .line 165
    invoke-virtual/range {v22 .. v22}, Landroid/renderscript/Sampler$Builder;->create()Landroid/renderscript/Sampler;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/books/widget/PageTurnRS;->mSampler:Landroid/renderscript/Sampler;

    .line 167
    new-instance v22, Landroid/renderscript/Sampler$Builder;

    .end local v22           #sampleBuilder:Landroid/renderscript/Sampler$Builder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mRS:Landroid/renderscript/RenderScriptGL;

    move-object/from16 v30, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Landroid/renderscript/Sampler$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 168
    .restart local v22       #sampleBuilder:Landroid/renderscript/Sampler$Builder;
    sget-object v30, Landroid/renderscript/Sampler$Value;->LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler$Value;

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setMinification(Landroid/renderscript/Sampler$Value;)V

    .line 169
    sget-object v30, Landroid/renderscript/Sampler$Value;->LINEAR:Landroid/renderscript/Sampler$Value;

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setMagnification(Landroid/renderscript/Sampler$Value;)V

    .line 170
    sget-object v30, Landroid/renderscript/Sampler$Value;->CLAMP:Landroid/renderscript/Sampler$Value;

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setWrapS(Landroid/renderscript/Sampler$Value;)V

    .line 171
    sget-object v30, Landroid/renderscript/Sampler$Value;->CLAMP:Landroid/renderscript/Sampler$Value;

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setWrapT(Landroid/renderscript/Sampler$Value;)V

    .line 172
    const/high16 v30, 0x4100

    move-object/from16 v0, v22

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setAnisotropy(F)V

    .line 173
    invoke-virtual/range {v22 .. v22}, Landroid/renderscript/Sampler$Builder;->create()Landroid/renderscript/Sampler;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/books/widget/PageTurnRS;->mSamplerMip:Landroid/renderscript/Sampler;

    .line 176
    new-instance v30, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mRS:Landroid/renderscript/RenderScriptGL;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    invoke-direct/range {v30 .. v32}, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;-><init>(Landroid/renderscript/RenderScript;I)V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/books/widget/PageTurnRS;->mFSConst:Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mScript:Lcom/google/android/apps/books/widget/ScriptC_pageturn;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mFSConst:Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->bind_fsConstants(Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;)V

    .line 180
    new-instance v11, Landroid/renderscript/ProgramFragment$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mRS:Landroid/renderscript/RenderScriptGL;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-direct {v11, v0}, Landroid/renderscript/ProgramFragment$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 181
    .local v11, pageBuilder:Landroid/renderscript/ProgramFragment$Builder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mRes:Landroid/content/res/Resources;

    move-object/from16 v30, v0

    const v31, 0x7f070001

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v11, v0, v1}, Landroid/renderscript/ProgramFragment$Builder;->setShader(Landroid/content/res/Resources;I)Landroid/renderscript/Program$BaseProgramBuilder;

    .line 182
    sget-object v30, Landroid/renderscript/Program$TextureType;->TEXTURE_2D:Landroid/renderscript/Program$TextureType;

    move-object/from16 v0, v30

    invoke-virtual {v11, v0}, Landroid/renderscript/ProgramFragment$Builder;->addTexture(Landroid/renderscript/Program$TextureType;)Landroid/renderscript/Program$BaseProgramBuilder;

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mFSConst:Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v11, v0}, Landroid/renderscript/ProgramFragment$Builder;->addConstant(Landroid/renderscript/Type;)Landroid/renderscript/Program$BaseProgramBuilder;

    .line 184
    invoke-virtual {v11}, Landroid/renderscript/ProgramFragment$Builder;->create()Landroid/renderscript/ProgramFragment;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/books/widget/PageTurnRS;->mPfPage:Landroid/renderscript/ProgramFragment;

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mPfPage:Landroid/renderscript/ProgramFragment;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mFSConst:Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v31

    const/16 v32, 0x0

    invoke-virtual/range {v30 .. v32}, Landroid/renderscript/ProgramFragment;->bindConstants(Landroid/renderscript/Allocation;I)V

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mPfPage:Landroid/renderscript/ProgramFragment;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mEnableHQFiltering:Z

    move/from16 v30, v0

    if-eqz v30, :cond_78d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mSamplerMip:Landroid/renderscript/Sampler;

    move-object/from16 v30, v0

    :goto_316
    const/16 v32, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/ProgramFragment;->bindSampler(Landroid/renderscript/Sampler;I)V

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mScript:Lcom/google/android/apps/books/widget/ScriptC_pageturn;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mPfPage:Landroid/renderscript/ProgramFragment;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->set_pfPage(Landroid/renderscript/ProgramFragment;)V

    .line 190
    new-instance v12, Landroid/renderscript/ProgramFragment$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mRS:Landroid/renderscript/RenderScriptGL;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-direct {v12, v0}, Landroid/renderscript/ProgramFragment$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 191
    .local v12, pageLoadingBuilder:Landroid/renderscript/ProgramFragment$Builder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mRes:Landroid/content/res/Resources;

    move-object/from16 v30, v0

    const v31, 0x7f070005

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v12, v0, v1}, Landroid/renderscript/ProgramFragment$Builder;->setShader(Landroid/content/res/Resources;I)Landroid/renderscript/Program$BaseProgramBuilder;

    .line 192
    sget-object v30, Landroid/renderscript/Program$TextureType;->TEXTURE_2D:Landroid/renderscript/Program$TextureType;

    move-object/from16 v0, v30

    invoke-virtual {v12, v0}, Landroid/renderscript/ProgramFragment$Builder;->addTexture(Landroid/renderscript/Program$TextureType;)Landroid/renderscript/Program$BaseProgramBuilder;

    .line 193
    sget-object v30, Landroid/renderscript/Program$TextureType;->TEXTURE_2D:Landroid/renderscript/Program$TextureType;

    move-object/from16 v0, v30

    invoke-virtual {v12, v0}, Landroid/renderscript/ProgramFragment$Builder;->addTexture(Landroid/renderscript/Program$TextureType;)Landroid/renderscript/Program$BaseProgramBuilder;

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mFSConst:Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v12, v0}, Landroid/renderscript/ProgramFragment$Builder;->addConstant(Landroid/renderscript/Type;)Landroid/renderscript/Program$BaseProgramBuilder;

    .line 195
    invoke-virtual {v12}, Landroid/renderscript/ProgramFragment$Builder;->create()Landroid/renderscript/ProgramFragment;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/books/widget/PageTurnRS;->mPfPageLoading:Landroid/renderscript/ProgramFragment;

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mPfPageLoading:Landroid/renderscript/ProgramFragment;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mFSConst:Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v31

    const/16 v32, 0x0

    invoke-virtual/range {v30 .. v32}, Landroid/renderscript/ProgramFragment;->bindConstants(Landroid/renderscript/Allocation;I)V

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mPfPageLoading:Landroid/renderscript/ProgramFragment;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mEnableHQFiltering:Z

    move/from16 v30, v0

    if-eqz v30, :cond_795

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mSamplerMip:Landroid/renderscript/Sampler;

    move-object/from16 v30, v0

    :goto_3a1
    const/16 v32, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/ProgramFragment;->bindSampler(Landroid/renderscript/Sampler;I)V

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mPfPageLoading:Landroid/renderscript/ProgramFragment;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mEnableHQFiltering:Z

    move/from16 v30, v0

    if-eqz v30, :cond_79d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mSamplerMip:Landroid/renderscript/Sampler;

    move-object/from16 v30, v0

    :goto_3c0
    const/16 v32, 0x1

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/ProgramFragment;->bindSampler(Landroid/renderscript/Sampler;I)V

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mScript:Lcom/google/android/apps/books/widget/ScriptC_pageturn;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mPfPageLoading:Landroid/renderscript/ProgramFragment;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->set_pfPageLoading(Landroid/renderscript/ProgramFragment;)V

    .line 202
    new-instance v29, Landroid/renderscript/ProgramFragment$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mRS:Landroid/renderscript/RenderScriptGL;

    move-object/from16 v30, v0

    invoke-direct/range {v29 .. v30}, Landroid/renderscript/ProgramFragment$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 203
    .local v29, spineBuilder:Landroid/renderscript/ProgramFragment$Builder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mRes:Landroid/content/res/Resources;

    move-object/from16 v30, v0

    const v31, 0x7f070007

    invoke-virtual/range {v29 .. v31}, Landroid/renderscript/ProgramFragment$Builder;->setShader(Landroid/content/res/Resources;I)Landroid/renderscript/Program$BaseProgramBuilder;

    .line 204
    sget-object v30, Landroid/renderscript/Program$TextureType;->TEXTURE_2D:Landroid/renderscript/Program$TextureType;

    invoke-virtual/range {v29 .. v30}, Landroid/renderscript/ProgramFragment$Builder;->addTexture(Landroid/renderscript/Program$TextureType;)Landroid/renderscript/Program$BaseProgramBuilder;

    .line 205
    sget-object v30, Landroid/renderscript/Program$TextureType;->TEXTURE_2D:Landroid/renderscript/Program$TextureType;

    invoke-virtual/range {v29 .. v30}, Landroid/renderscript/ProgramFragment$Builder;->addTexture(Landroid/renderscript/Program$TextureType;)Landroid/renderscript/Program$BaseProgramBuilder;

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mFSConst:Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Landroid/renderscript/ProgramFragment$Builder;->addConstant(Landroid/renderscript/Type;)Landroid/renderscript/Program$BaseProgramBuilder;

    .line 207
    invoke-virtual/range {v29 .. v29}, Landroid/renderscript/ProgramFragment$Builder;->create()Landroid/renderscript/ProgramFragment;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/books/widget/PageTurnRS;->mPfSpine:Landroid/renderscript/ProgramFragment;

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mPfSpine:Landroid/renderscript/ProgramFragment;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mFSConst:Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v31

    const/16 v32, 0x0

    invoke-virtual/range {v30 .. v32}, Landroid/renderscript/ProgramFragment;->bindConstants(Landroid/renderscript/Allocation;I)V

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mPfSpine:Landroid/renderscript/ProgramFragment;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mEnableHQFiltering:Z

    move/from16 v30, v0

    if-eqz v30, :cond_7a5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mSamplerMip:Landroid/renderscript/Sampler;

    move-object/from16 v30, v0

    :goto_43f
    const/16 v32, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/ProgramFragment;->bindSampler(Landroid/renderscript/Sampler;I)V

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mPfSpine:Landroid/renderscript/ProgramFragment;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mEnableHQFiltering:Z

    move/from16 v30, v0

    if-eqz v30, :cond_7ad

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mSamplerMip:Landroid/renderscript/Sampler;

    move-object/from16 v30, v0

    :goto_45e
    const/16 v32, 0x1

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/ProgramFragment;->bindSampler(Landroid/renderscript/Sampler;I)V

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mScript:Lcom/google/android/apps/books/widget/ScriptC_pageturn;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mPfSpine:Landroid/renderscript/ProgramFragment;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->set_pfSpine(Landroid/renderscript/ProgramFragment;)V

    .line 214
    new-instance v26, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mRS:Landroid/renderscript/RenderScriptGL;

    move-object/from16 v30, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 215
    .local v26, simpleBuilder:Landroid/renderscript/ProgramFragmentFixedFunction$Builder;
    sget-object v30, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;->REPLACE:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;

    sget-object v31, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;->RGBA:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;

    const/16 v32, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->setTexture(Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;I)Landroid/renderscript/ProgramFragmentFixedFunction$Builder;

    .line 217
    invoke-virtual/range {v26 .. v26}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->create()Landroid/renderscript/ProgramFragmentFixedFunction;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/books/widget/PageTurnRS;->mPfSimpleTexture:Landroid/renderscript/ProgramFragment;

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mPfSimpleTexture:Landroid/renderscript/ProgramFragment;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mSampler:Landroid/renderscript/Sampler;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-virtual/range {v30 .. v32}, Landroid/renderscript/ProgramFragment;->bindSampler(Landroid/renderscript/Sampler;I)V

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mScript:Lcom/google/android/apps/books/widget/ScriptC_pageturn;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mPfSimpleTexture:Landroid/renderscript/ProgramFragment;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->set_pfSimpleTexture(Landroid/renderscript/ProgramFragment;)V

    .line 222
    new-instance v7, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mRS:Landroid/renderscript/RenderScriptGL;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-direct {v7, v0}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 223
    .local v7, colorBuilder:Landroid/renderscript/ProgramFragmentFixedFunction$Builder;
    sget-object v30, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;->MODULATE:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;

    sget-object v31, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;->RGBA:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;

    const/16 v32, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v7, v0, v1, v2}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->setTexture(Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;I)Landroid/renderscript/ProgramFragmentFixedFunction$Builder;

    .line 225
    const/16 v30, 0x0

    move/from16 v0, v30

    invoke-virtual {v7, v0}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->setVaryingColor(Z)Landroid/renderscript/ProgramFragmentFixedFunction$Builder;

    .line 226
    invoke-virtual {v7}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->create()Landroid/renderscript/ProgramFragmentFixedFunction;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/books/widget/PageTurnRS;->mPfColor:Landroid/renderscript/ProgramFragment;

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mScript:Lcom/google/android/apps/books/widget/ScriptC_pageturn;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mPfColor:Landroid/renderscript/ProgramFragment;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->set_pfColor(Landroid/renderscript/ProgramFragment;)V

    .line 230
    new-instance v13, Landroid/renderscript/ProgramFragment$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mRS:Landroid/renderscript/RenderScriptGL;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-direct {v13, v0}, Landroid/renderscript/ProgramFragment$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 231
    .local v13, pfbLight:Landroid/renderscript/ProgramFragment$Builder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mRes:Landroid/content/res/Resources;

    move-object/from16 v30, v0

    const v31, 0x7f070002

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v13, v0, v1}, Landroid/renderscript/ProgramFragment$Builder;->setShader(Landroid/content/res/Resources;I)Landroid/renderscript/Program$BaseProgramBuilder;

    .line 232
    sget-object v30, Landroid/renderscript/Program$TextureType;->TEXTURE_2D:Landroid/renderscript/Program$TextureType;

    move-object/from16 v0, v30

    invoke-virtual {v13, v0}, Landroid/renderscript/ProgramFragment$Builder;->addTexture(Landroid/renderscript/Program$TextureType;)Landroid/renderscript/Program$BaseProgramBuilder;

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mFSConst:Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v13, v0}, Landroid/renderscript/ProgramFragment$Builder;->addConstant(Landroid/renderscript/Type;)Landroid/renderscript/Program$BaseProgramBuilder;

    .line 234
    invoke-virtual {v13}, Landroid/renderscript/ProgramFragment$Builder;->create()Landroid/renderscript/ProgramFragment;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/books/widget/PageTurnRS;->mPfPageLight:Landroid/renderscript/ProgramFragment;

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mPfPageLight:Landroid/renderscript/ProgramFragment;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mFSConst:Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v31

    const/16 v32, 0x0

    invoke-virtual/range {v30 .. v32}, Landroid/renderscript/ProgramFragment;->bindConstants(Landroid/renderscript/Allocation;I)V

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mPfPageLight:Landroid/renderscript/ProgramFragment;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mEnableHQFiltering:Z

    move/from16 v30, v0

    if-eqz v30, :cond_7b5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mSamplerMip:Landroid/renderscript/Sampler;

    move-object/from16 v30, v0

    :goto_568
    const/16 v32, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/ProgramFragment;->bindSampler(Landroid/renderscript/Sampler;I)V

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mScript:Lcom/google/android/apps/books/widget/ScriptC_pageturn;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mPfPageLight:Landroid/renderscript/ProgramFragment;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->set_pfPageLight(Landroid/renderscript/ProgramFragment;)V

    .line 240
    new-instance v14, Landroid/renderscript/ProgramFragment$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mRS:Landroid/renderscript/RenderScriptGL;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-direct {v14, v0}, Landroid/renderscript/ProgramFragment$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 241
    .local v14, pfbLightLoading:Landroid/renderscript/ProgramFragment$Builder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mRes:Landroid/content/res/Resources;

    move-object/from16 v30, v0

    const v31, 0x7f070003

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v14, v0, v1}, Landroid/renderscript/ProgramFragment$Builder;->setShader(Landroid/content/res/Resources;I)Landroid/renderscript/Program$BaseProgramBuilder;

    .line 242
    sget-object v30, Landroid/renderscript/Program$TextureType;->TEXTURE_2D:Landroid/renderscript/Program$TextureType;

    move-object/from16 v0, v30

    invoke-virtual {v14, v0}, Landroid/renderscript/ProgramFragment$Builder;->addTexture(Landroid/renderscript/Program$TextureType;)Landroid/renderscript/Program$BaseProgramBuilder;

    .line 243
    sget-object v30, Landroid/renderscript/Program$TextureType;->TEXTURE_2D:Landroid/renderscript/Program$TextureType;

    move-object/from16 v0, v30

    invoke-virtual {v14, v0}, Landroid/renderscript/ProgramFragment$Builder;->addTexture(Landroid/renderscript/Program$TextureType;)Landroid/renderscript/Program$BaseProgramBuilder;

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mFSConst:Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v14, v0}, Landroid/renderscript/ProgramFragment$Builder;->addConstant(Landroid/renderscript/Type;)Landroid/renderscript/Program$BaseProgramBuilder;

    .line 245
    invoke-virtual {v14}, Landroid/renderscript/ProgramFragment$Builder;->create()Landroid/renderscript/ProgramFragment;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/books/widget/PageTurnRS;->mPfPageLightLoading:Landroid/renderscript/ProgramFragment;

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mPfPageLightLoading:Landroid/renderscript/ProgramFragment;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mFSConst:Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v31

    const/16 v32, 0x0

    invoke-virtual/range {v30 .. v32}, Landroid/renderscript/ProgramFragment;->bindConstants(Landroid/renderscript/Allocation;I)V

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mPfPageLightLoading:Landroid/renderscript/ProgramFragment;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mEnableHQFiltering:Z

    move/from16 v30, v0

    if-eqz v30, :cond_7bd

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mSamplerMip:Landroid/renderscript/Sampler;

    move-object/from16 v30, v0

    :goto_5f3
    const/16 v32, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/ProgramFragment;->bindSampler(Landroid/renderscript/Sampler;I)V

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mPfPageLightLoading:Landroid/renderscript/ProgramFragment;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mEnableHQFiltering:Z

    move/from16 v30, v0

    if-eqz v30, :cond_7c5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mSamplerMip:Landroid/renderscript/Sampler;

    move-object/from16 v30, v0

    :goto_612
    const/16 v32, 0x1

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/ProgramFragment;->bindSampler(Landroid/renderscript/Sampler;I)V

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mScript:Lcom/google/android/apps/books/widget/ScriptC_pageturn;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mPfPageLightLoading:Landroid/renderscript/ProgramFragment;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->set_pfPageLightLoading(Landroid/renderscript/ProgramFragment;)V

    .line 252
    new-instance v19, Landroid/renderscript/ProgramVertexFixedFunction$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mRS:Landroid/renderscript/RenderScriptGL;

    move-object/from16 v30, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Landroid/renderscript/ProgramVertexFixedFunction$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 253
    .local v19, pvb:Landroid/renderscript/ProgramVertexFixedFunction$Builder;
    invoke-virtual/range {v19 .. v19}, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->create()Landroid/renderscript/ProgramVertexFixedFunction;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/books/widget/PageTurnRS;->mPvPage:Landroid/renderscript/ProgramVertex;

    .line 255
    new-instance v18, Landroid/renderscript/ProgramVertexFixedFunction$Constants;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mRS:Landroid/renderscript/RenderScriptGL;

    move-object/from16 v30, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Landroid/renderscript/ProgramVertexFixedFunction$Constants;-><init>(Landroid/renderscript/RenderScript;)V

    .line 256
    .local v18, pva:Landroid/renderscript/ProgramVertexFixedFunction$Constants;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mPvPage:Landroid/renderscript/ProgramVertex;

    move-object/from16 v30, v0

    check-cast v30, Landroid/renderscript/ProgramVertexFixedFunction;

    move-object/from16 v0, v30

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramVertexFixedFunction;->bindConstants(Landroid/renderscript/ProgramVertexFixedFunction$Constants;)V

    .line 257
    new-instance v17, Landroid/renderscript/Matrix4f;

    invoke-direct/range {v17 .. v17}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 258
    .local v17, proj:Landroid/renderscript/Matrix4f;
    const/16 v30, 0x1

    const/16 v31, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Matrix4f;->loadProjectionNormalized(II)V

    .line 259
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->setProjection(Landroid/renderscript/Matrix4f;)V

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mScript:Lcom/google/android/apps/books/widget/ScriptC_pageturn;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mPvPage:Landroid/renderscript/ProgramVertex;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->set_pvPage(Landroid/renderscript/ProgramVertex;)V

    .line 264
    new-instance v30, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mRS:Landroid/renderscript/RenderScriptGL;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    invoke-direct/range {v30 .. v32}, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;-><init>(Landroid/renderscript/RenderScript;I)V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/books/widget/PageTurnRS;->mVSConst:Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mScript:Lcom/google/android/apps/books/widget/ScriptC_pageturn;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mVSConst:Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->bind_vsConstants(Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;)V

    .line 266
    new-instance v20, Landroid/renderscript/ProgramVertex$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mRS:Landroid/renderscript/RenderScriptGL;

    move-object/from16 v30, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Landroid/renderscript/ProgramVertex$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 267
    .local v20, pvbLight:Landroid/renderscript/ProgramVertex$Builder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mRes:Landroid/content/res/Resources;

    move-object/from16 v30, v0

    const v31, 0x7f070004

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/ProgramVertex$Builder;->setShader(Landroid/content/res/Resources;I)Landroid/renderscript/Program$BaseProgramBuilder;

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mRS:Landroid/renderscript/RenderScriptGL;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/google/android/apps/books/widget/ScriptField_Point_s;->createElement(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v30

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramVertex$Builder;->addInput(Landroid/renderscript/Element;)Landroid/renderscript/ProgramVertex$Builder;

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mVSConst:Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v30

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramVertex$Builder;->addConstant(Landroid/renderscript/Type;)Landroid/renderscript/Program$BaseProgramBuilder;

    .line 270
    invoke-virtual/range {v20 .. v20}, Landroid/renderscript/ProgramVertex$Builder;->create()Landroid/renderscript/ProgramVertex;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/books/widget/PageTurnRS;->mPvPageLight:Landroid/renderscript/ProgramVertex;

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mPvPageLight:Landroid/renderscript/ProgramVertex;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mVSConst:Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v31

    const/16 v32, 0x0

    invoke-virtual/range {v30 .. v32}, Landroid/renderscript/ProgramVertex;->bindConstants(Landroid/renderscript/Allocation;I)V

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mScript:Lcom/google/android/apps/books/widget/ScriptC_pageturn;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mPvPageLight:Landroid/renderscript/ProgramVertex;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->set_pvPageLight(Landroid/renderscript/ProgramVertex;)V

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mScript:Lcom/google/android/apps/books/widget/ScriptC_pageturn;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->invoke_initTransformationMatrices()V

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mRes:Landroid/content/res/Resources;

    move-object/from16 v30, v0

    const v31, 0x7f02008b

    invoke-static {}, Lcom/google/android/apps/books/widget/PageTurnRS;->buildBitmapOptionsARGB_8888()Landroid/graphics/BitmapFactory$Options;

    move-result-object v32

    invoke-static/range {v30 .. v32}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v24

    .line 279
    .local v24, shadowBitmap:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mRS:Landroid/renderscript/RenderScriptGL;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v23

    .line 281
    .local v23, shadowAllocation:Landroid/renderscript/Allocation;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mScript:Lcom/google/android/apps/books/widget/ScriptC_pageturn;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->set_tShadow(Landroid/renderscript/Allocation;)V

    .line 282
    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Bitmap;->recycle()V

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mRes:Landroid/content/res/Resources;

    move-object/from16 v30, v0

    const v31, 0x7f02008c

    invoke-static {}, Lcom/google/android/apps/books/widget/PageTurnRS;->buildBitmapOptionsARGB_8888()Landroid/graphics/BitmapFactory$Options;

    move-result-object v32

    invoke-static/range {v30 .. v32}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v28

    .line 287
    .local v28, spineBitmap:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mRS:Landroid/renderscript/RenderScriptGL;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v27

    .line 289
    .local v27, spineAllocation:Landroid/renderscript/Allocation;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mScript:Lcom/google/android/apps/books/widget/ScriptC_pageturn;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->set_tSpine(Landroid/renderscript/Allocation;)V

    .line 290
    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Bitmap;->recycle()V

    .line 292
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/books/widget/PageTurnRS;->resetZoom()V

    .line 294
    return-void

    .line 186
    .end local v7           #colorBuilder:Landroid/renderscript/ProgramFragmentFixedFunction$Builder;
    .end local v12           #pageLoadingBuilder:Landroid/renderscript/ProgramFragment$Builder;
    .end local v13           #pfbLight:Landroid/renderscript/ProgramFragment$Builder;
    .end local v14           #pfbLightLoading:Landroid/renderscript/ProgramFragment$Builder;
    .end local v17           #proj:Landroid/renderscript/Matrix4f;
    .end local v18           #pva:Landroid/renderscript/ProgramVertexFixedFunction$Constants;
    .end local v19           #pvb:Landroid/renderscript/ProgramVertexFixedFunction$Builder;
    .end local v20           #pvbLight:Landroid/renderscript/ProgramVertex$Builder;
    .end local v23           #shadowAllocation:Landroid/renderscript/Allocation;
    .end local v24           #shadowBitmap:Landroid/graphics/Bitmap;
    .end local v26           #simpleBuilder:Landroid/renderscript/ProgramFragmentFixedFunction$Builder;
    .end local v27           #spineAllocation:Landroid/renderscript/Allocation;
    .end local v28           #spineBitmap:Landroid/graphics/Bitmap;
    .end local v29           #spineBuilder:Landroid/renderscript/ProgramFragment$Builder;
    :cond_78d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mSampler:Landroid/renderscript/Sampler;

    move-object/from16 v30, v0

    goto/16 :goto_316

    .line 197
    .restart local v12       #pageLoadingBuilder:Landroid/renderscript/ProgramFragment$Builder;
    :cond_795
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mSampler:Landroid/renderscript/Sampler;

    move-object/from16 v30, v0

    goto/16 :goto_3a1

    .line 198
    :cond_79d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mSampler:Landroid/renderscript/Sampler;

    move-object/from16 v30, v0

    goto/16 :goto_3c0

    .line 209
    .restart local v29       #spineBuilder:Landroid/renderscript/ProgramFragment$Builder;
    :cond_7a5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mSampler:Landroid/renderscript/Sampler;

    move-object/from16 v30, v0

    goto/16 :goto_43f

    .line 210
    :cond_7ad
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mSampler:Landroid/renderscript/Sampler;

    move-object/from16 v30, v0

    goto/16 :goto_45e

    .line 236
    .restart local v7       #colorBuilder:Landroid/renderscript/ProgramFragmentFixedFunction$Builder;
    .restart local v13       #pfbLight:Landroid/renderscript/ProgramFragment$Builder;
    .restart local v26       #simpleBuilder:Landroid/renderscript/ProgramFragmentFixedFunction$Builder;
    :cond_7b5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mSampler:Landroid/renderscript/Sampler;

    move-object/from16 v30, v0

    goto/16 :goto_568

    .line 247
    .restart local v14       #pfbLightLoading:Landroid/renderscript/ProgramFragment$Builder;
    :cond_7bd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mSampler:Landroid/renderscript/Sampler;

    move-object/from16 v30, v0

    goto/16 :goto_5f3

    .line 248
    :cond_7c5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mSampler:Landroid/renderscript/Sampler;

    move-object/from16 v30, v0

    goto/16 :goto_612
.end method

.method private normalizePageNumber(I)I
    .registers 3
    .parameter "slot"

    .prologue
    .line 311
    :goto_0
    if-gez p1, :cond_5

    .line 312
    add-int/lit8 p1, p1, 0x6

    goto :goto_0

    .line 314
    :cond_5
    rem-int/lit8 v0, p1, 0x6

    return v0
.end method


# virtual methods
.method public finishOpening(I)V
    .registers 3
    .parameter "direction"

    .prologue
    .line 495
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mScript:Lcom/google/android/apps/books/widget/ScriptC_pageturn;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->invoke_animateTransitionToNextPage(I)V

    .line 496
    return-void
.end method

.method public declared-synchronized getTallestCurrentAspectRatio()F
    .registers 7

    .prologue
    .line 435
    monitor-enter p0

    const/4 v3, 0x0

    .line 436
    .local v3, minimumAspectRatioSeen:F
    :try_start_2
    iget-object v4, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mPageAllocations:[Landroid/renderscript/Allocation;

    if-eqz v4, :cond_33

    .line 437
    const/4 v2, 0x0

    .local v2, i:I
    :goto_7
    iget-object v4, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mPageAllocations:[Landroid/renderscript/Allocation;

    array-length v4, v4

    if-ge v2, v4, :cond_33

    .line 438
    iget-object v4, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mPageAllocations:[Landroid/renderscript/Allocation;

    aget-object v4, v4, v2

    if-eqz v4, :cond_30

    .line 439
    iget-object v4, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mPageAllocations:[Landroid/renderscript/Allocation;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    .line 440
    .local v0, allocType:Landroid/renderscript/Type;
    invoke-virtual {v0}, Landroid/renderscript/Type;->getX()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I
    :try_end_22
    .catchall {:try_start_2 .. :try_end_22} :catchall_35

    move-result v5

    int-to-float v5, v5

    div-float v1, v4, v5

    .line 441
    .local v1, aspectRatio:F
    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-eqz v4, :cond_2f

    cmpg-float v4, v1, v3

    if-gez v4, :cond_30

    .line 442
    :cond_2f
    move v3, v1

    .line 437
    .end local v0           #allocType:Landroid/renderscript/Type;
    .end local v1           #aspectRatio:F
    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 447
    .end local v2           #i:I
    :cond_33
    monitor-exit p0

    return v3

    .line 435
    :catchall_35
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized getWidestCurrentAspectRatio()F
    .registers 7

    .prologue
    .line 417
    monitor-enter p0

    const/4 v3, 0x0

    .line 418
    .local v3, maximumAspectRatioSeen:F
    :try_start_2
    iget-object v4, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mPageAllocations:[Landroid/renderscript/Allocation;

    if-eqz v4, :cond_2d

    .line 419
    const/4 v2, 0x0

    .local v2, i:I
    :goto_7
    iget-object v4, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mPageAllocations:[Landroid/renderscript/Allocation;

    array-length v4, v4

    if-ge v2, v4, :cond_2d

    .line 420
    iget-object v4, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mPageAllocations:[Landroid/renderscript/Allocation;

    aget-object v4, v4, v2

    if-eqz v4, :cond_2a

    .line 421
    iget-object v4, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mPageAllocations:[Landroid/renderscript/Allocation;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    .line 422
    .local v0, allocType:Landroid/renderscript/Type;
    invoke-virtual {v0}, Landroid/renderscript/Type;->getX()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I

    move-result v5

    int-to-float v5, v5

    div-float v1, v4, v5

    .line 423
    .local v1, aspectRatio:F
    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F
    :try_end_29
    .catchall {:try_start_2 .. :try_end_29} :catchall_2f

    move-result v3

    .line 419
    .end local v0           #allocType:Landroid/renderscript/Type;
    .end local v1           #aspectRatio:F
    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 427
    .end local v2           #i:I
    :cond_2d
    monitor-exit p0

    return v3

    .line 417
    :catchall_2f
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public pauseRendering()V
    .registers 3

    .prologue
    .line 302
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mScript:Lcom/google/android/apps/books/widget/ScriptC_pageturn;

    invoke-virtual {v0}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->invoke_destroy()V

    .line 303
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mRS:Landroid/renderscript/RenderScriptGL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/renderscript/RenderScriptGL;->bindRootScript(Landroid/renderscript/Script;)V

    .line 304
    return-void
.end method

.method public resetZoom()V
    .registers 2

    .prologue
    const/high16 v0, 0x3f80

    .line 503
    invoke-virtual {p0, v0, v0, v0}, Lcom/google/android/apps/books/widget/PageTurnRS;->setZoom(FFF)V

    .line 504
    return-void
.end method

.method public resumeRendering()V
    .registers 3

    .prologue
    .line 307
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mRS:Landroid/renderscript/RenderScriptGL;

    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mScript:Lcom/google/android/apps/books/widget/ScriptC_pageturn;

    invoke-virtual {v0, v1}, Landroid/renderscript/RenderScriptGL;->bindRootScript(Landroid/renderscript/Script;)V

    .line 308
    return-void
.end method

.method public setAnchorIndex(I)V
    .registers 3
    .parameter "anchorIndex"

    .prologue
    .line 367
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mAnchorIndex:Ljava/lang/Integer;

    .line 368
    return-void
.end method

.method public setErrorBitmap(Landroid/graphics/Bitmap;)V
    .registers 4
    .parameter "bitmap"

    .prologue
    .line 334
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mErrorAllocation:Landroid/renderscript/Allocation;

    .line 335
    .local v0, stale:Landroid/renderscript/Allocation;
    if-eqz p1, :cond_10

    .end local p1
    :goto_4
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/widget/PageTurnRS;->createAllocationForBitmap(Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mErrorAllocation:Landroid/renderscript/Allocation;

    .line 337
    if-eqz v0, :cond_f

    .line 338
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    .line 340
    :cond_f
    return-void

    .line 335
    .restart local p1
    :cond_10
    iget-object p1, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mEmptyBitmap:Landroid/graphics/Bitmap;

    goto :goto_4
.end method

.method public setLoadingBitmap(Landroid/graphics/Bitmap;)V
    .registers 7
    .parameter "bitmap"

    .prologue
    const/4 v0, 0x1

    .line 319
    if-eqz p1, :cond_27

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 320
    .local v2, width:I
    :goto_7
    if-eqz p1, :cond_d

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 321
    .local v0, height:I
    :cond_d
    invoke-direct {p0, v2, v0}, Lcom/google/android/apps/books/widget/PageTurnRS;->createEmptyBitmap(II)V

    .line 323
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mLoadingAllocation:Landroid/renderscript/Allocation;

    .line 324
    .local v1, stale:Landroid/renderscript/Allocation;
    if-eqz p1, :cond_29

    .end local p1
    :goto_14
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/widget/PageTurnRS;->createAllocationForBitmap(Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mLoadingAllocation:Landroid/renderscript/Allocation;

    .line 326
    if-eqz v1, :cond_1f

    .line 327
    invoke-virtual {v1}, Landroid/renderscript/Allocation;->destroy()V

    .line 330
    :cond_1f
    iget-object v3, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mScript:Lcom/google/android/apps/books/widget/ScriptC_pageturn;

    iget-object v4, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mLoadingAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v3, v4}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->set_tLoading(Landroid/renderscript/Allocation;)V

    .line 331
    return-void

    .end local v0           #height:I
    .end local v1           #stale:Landroid/renderscript/Allocation;
    .end local v2           #width:I
    .restart local p1
    :cond_27
    move v2, v0

    .line 319
    goto :goto_7

    .line 324
    .restart local v0       #height:I
    .restart local v1       #stale:Landroid/renderscript/Allocation;
    .restart local v2       #width:I
    :cond_29
    iget-object p1, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mEmptyBitmap:Landroid/graphics/Bitmap;

    goto :goto_14
.end method

.method public declared-synchronized setPageEmpty(I)V
    .registers 6
    .parameter "index"

    .prologue
    .line 392
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/widget/PageTurnRS;->normalizePageNumber(I)I

    move-result v0

    .line 396
    .local v0, slot:I
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mScript:Lcom/google/android/apps/books/widget/ScriptC_pageturn;

    iget-object v2, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mEmptyAllocation:Landroid/renderscript/Allocation;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->invoke_setPage(ILandroid/renderscript/Allocation;Z)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 397
    monitor-exit p0

    return-void

    .line 392
    .end local v0           #slot:I
    :catchall_f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setPageError(I)V
    .registers 6
    .parameter "index"

    .prologue
    .line 408
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/widget/PageTurnRS;->normalizePageNumber(I)I

    move-result v0

    .line 409
    .local v0, slot:I
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mScript:Lcom/google/android/apps/books/widget/ScriptC_pageturn;

    iget-object v2, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mErrorAllocation:Landroid/renderscript/Allocation;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->invoke_setPage(ILandroid/renderscript/Allocation;Z)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 410
    monitor-exit p0

    return-void

    .line 408
    .end local v0           #slot:I
    :catchall_f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setPageLoading(I)V
    .registers 6
    .parameter "index"

    .prologue
    .line 400
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/widget/PageTurnRS;->normalizePageNumber(I)I

    move-result v0

    .line 404
    .local v0, slot:I
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mScript:Lcom/google/android/apps/books/widget/ScriptC_pageturn;

    iget-object v2, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mEmptyAllocation:Landroid/renderscript/Allocation;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->invoke_setPage(ILandroid/renderscript/Allocation;Z)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 405
    monitor-exit p0

    return-void

    .line 400
    .end local v0           #slot:I
    :catchall_f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setPageToBitmap(ILandroid/graphics/Bitmap;)V
    .registers 9
    .parameter "index"
    .parameter "bitmap"

    .prologue
    .line 451
    monitor-enter p0

    :try_start_1
    const-string v4, "missing bitmap"

    invoke-static {p2, v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    iget-object v4, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mAnchorIndex:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, -0x3

    if-lt p1, v4, :cond_1a

    iget-object v4, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mAnchorIndex:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    if-le p1, v4, :cond_23

    .line 456
    :cond_1a
    const-string v4, "PageTurnRS"

    const-string v5, "setPageToBitmap() delivered texture outside of neighborhood, ignoring"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_46

    .line 488
    :cond_21
    :goto_21
    monitor-exit p0

    return-void

    .line 460
    :cond_23
    :try_start_23
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/widget/PageTurnRS;->normalizePageNumber(I)I

    move-result v2

    .line 461
    .local v2, slot:I
    const/4 v3, 0x0

    .line 463
    .local v3, stale:Landroid/renderscript/Allocation;
    iget-object v4, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mPageAllocations:[Landroid/renderscript/Allocation;

    aget-object v4, v4, v2

    if-nez v4, :cond_49

    .line 464
    iget-object v4, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mPageAllocations:[Landroid/renderscript/Allocation;

    invoke-direct {p0, p2}, Lcom/google/android/apps/books/widget/PageTurnRS;->createAllocationForBitmap(Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v5

    aput-object v5, v4, v2

    .line 481
    :goto_36
    iget-object v4, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mPageAllocations:[Landroid/renderscript/Allocation;

    aget-object v1, v4, v2

    .line 482
    .local v1, allocation:Landroid/renderscript/Allocation;
    iget-object v4, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mScript:Lcom/google/android/apps/books/widget/ScriptC_pageturn;

    const/4 v5, 0x1

    invoke-virtual {v4, v2, v1, v5}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->invoke_setPage(ILandroid/renderscript/Allocation;Z)V

    .line 485
    if-eqz v3, :cond_21

    .line 486
    invoke-virtual {v3}, Landroid/renderscript/Allocation;->destroy()V
    :try_end_45
    .catchall {:try_start_23 .. :try_end_45} :catchall_46

    goto :goto_21

    .line 451
    .end local v1           #allocation:Landroid/renderscript/Allocation;
    .end local v2           #slot:I
    .end local v3           #stale:Landroid/renderscript/Allocation;
    :catchall_46
    move-exception v4

    monitor-exit p0

    throw v4

    .line 466
    .restart local v2       #slot:I
    .restart local v3       #stale:Landroid/renderscript/Allocation;
    :cond_49
    :try_start_49
    iget-object v4, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mPageAllocations:[Landroid/renderscript/Allocation;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    .line 467
    .local v0, allocType:Landroid/renderscript/Type;
    invoke-virtual {v0}, Landroid/renderscript/Type;->getX()I

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-ne v4, v5, :cond_65

    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-eq v4, v5, :cond_72

    .line 469
    :cond_65
    iget-object v4, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mPageAllocations:[Landroid/renderscript/Allocation;

    aget-object v3, v4, v2

    .line 470
    iget-object v4, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mPageAllocations:[Landroid/renderscript/Allocation;

    invoke-direct {p0, p2}, Lcom/google/android/apps/books/widget/PageTurnRS;->createAllocationForBitmap(Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v5

    aput-object v5, v4, v2

    goto :goto_36

    .line 473
    :cond_72
    iget-object v4, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mPageAllocations:[Landroid/renderscript/Allocation;

    aget-object v4, v4, v2

    invoke-virtual {v4, p2}, Landroid/renderscript/Allocation;->copyFrom(Landroid/graphics/Bitmap;)V
    :try_end_79
    .catchall {:try_start_49 .. :try_end_79} :catchall_46

    goto :goto_36
.end method

.method public setShouldFadeIn(Z)V
    .registers 3
    .parameter "fade"

    .prologue
    .line 491
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mScript:Lcom/google/android/apps/books/widget/ScriptC_pageturn;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->invoke_setShouldFadeIn(Z)V

    .line 492
    return-void
.end method

.method public setThemeNight(Z)V
    .registers 3
    .parameter "themeNight"

    .prologue
    .line 507
    iput-boolean p1, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mThemeNight:Z

    .line 508
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mScript:Lcom/google/android/apps/books/widget/ScriptC_pageturn;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->set_themeNight(Z)V

    .line 509
    return-void
.end method

.method public declared-synchronized setTurnState(IFIZ)V
    .registers 6
    .parameter "index"
    .parameter "fraction"
    .parameter "direction"
    .parameter "movingToNewPosition"

    .prologue
    .line 372
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/widget/PageTurnRS;->setAnchorIndex(I)V

    .line 378
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/widget/PageTurnRS;->normalizePageNumber(I)I

    move-result p1

    .line 379
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mScript:Lcom/google/android/apps/books/widget/ScriptC_pageturn;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->invoke_setTurnState(IFIZ)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 380
    monitor-exit p0

    return-void

    .line 372
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setZoom(FFF)V
    .registers 5
    .parameter "scale"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 499
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mScript:Lcom/google/android/apps/books/widget/ScriptC_pageturn;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->invoke_zoom(FFF)V

    .line 500
    return-void
.end method

.method public surfaceChanged()V
    .registers 2

    .prologue
    .line 297
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mScript:Lcom/google/android/apps/books/widget/ScriptC_pageturn;

    invoke-virtual {v0}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->invoke_initTransformationMatrices()V

    .line 298
    return-void
.end method
