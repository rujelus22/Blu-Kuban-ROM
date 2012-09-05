.class Lcom/android/wallpaper/grass/GrassRS;
.super Lcom/android/wallpaper/RenderScriptScene;
.source "GrassRS.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wallpaper/grass/GrassRS$1;,
        Lcom/android/wallpaper/grass/GrassRS$TimezoneTracker;,
        Lcom/android/wallpaper/grass/GrassRS$LocationUpdater;
    }
.end annotation


# instance fields
.field private mBladeSizes:[I

.field private mBlades:Lcom/android/wallpaper/grass/ScriptField_Blade;

.field private mBladesIndicies:Landroid/renderscript/Allocation;

.field private mBladesMesh:Landroid/renderscript/Mesh;

.field private final mContext:Landroid/content/Context;

.field private mIndicies:I

.field private final mLocationManager:Landroid/location/LocationManager;

.field private mLocationUpdater:Lcom/android/wallpaper/grass/GrassRS$LocationUpdater;

.field private mPvOrthoAlloc:Landroid/renderscript/ProgramVertexFixedFunction$Constants;

.field private mScript:Lcom/android/wallpaper/grass/ScriptC_grass;

.field private mTimezoneTracker:Lcom/android/wallpaper/grass/GrassRS$TimezoneTracker;

.field private mVertexBuffer:Lcom/android/wallpaper/grass/ScriptField_Vertex;

.field private mVerticies:I


# direct methods
.method constructor <init>(Landroid/content/Context;II)V
    .registers 5
    .parameter "context"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 76
    invoke-direct {p0, p2, p3}, Lcom/android/wallpaper/RenderScriptScene;-><init>(II)V

    .line 78
    iput-object p1, p0, Lcom/android/wallpaper/grass/GrassRS;->mContext:Landroid/content/Context;

    .line 79
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/wallpaper/grass/GrassRS;->mLocationManager:Landroid/location/LocationManager;

    .line 81
    return-void
.end method

.method static synthetic access$200(Lcom/android/wallpaper/grass/GrassRS;)Lcom/android/wallpaper/grass/GrassRS$LocationUpdater;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/wallpaper/grass/GrassRS;->mLocationUpdater:Lcom/android/wallpaper/grass/GrassRS$LocationUpdater;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/wallpaper/grass/GrassRS;Landroid/location/Location;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/wallpaper/grass/GrassRS;->updateLocation(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/wallpaper/grass/GrassRS;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/wallpaper/grass/GrassRS;->updateLocation()V

    return-void
.end method

.method private createBlade(Lcom/android/wallpaper/grass/ScriptField_Blade$Item;)V
    .registers 9
    .parameter "blades"

    .prologue
    const/high16 v6, 0x4080

    const v5, 0x3e4ccccd

    const/high16 v4, 0x3f00

    .line 229
    invoke-static {v6}, Landroid/util/MathUtils;->random(F)F

    move-result v2

    add-float v0, v2, v6

    .line 230
    .local v0, size:F
    iget v2, p0, Lcom/android/wallpaper/RenderScriptScene;->mWidth:I

    neg-int v2, v2

    iget v3, p0, Lcom/android/wallpaper/RenderScriptScene;->mWidth:I

    invoke-static {v2, v3}, Landroid/util/MathUtils;->random(II)I

    move-result v1

    .line 233
    .local v1, xpos:I
    const/4 v2, 0x0

    iput v2, p1, Lcom/android/wallpaper/grass/ScriptField_Blade$Item;->angle:F

    .line 234
    div-float v2, v0, v4

    float-to-int v2, v2

    iput v2, p1, Lcom/android/wallpaper/grass/ScriptField_Blade$Item;->size:I

    .line 235
    int-to-float v2, v1

    iput v2, p1, Lcom/android/wallpaper/grass/ScriptField_Blade$Item;->xPos:F

    .line 236
    iget v2, p0, Lcom/android/wallpaper/RenderScriptScene;->mHeight:I

    int-to-float v2, v2

    iput v2, p1, Lcom/android/wallpaper/grass/ScriptField_Blade$Item;->yPos:F

    .line 237
    invoke-static {v5}, Landroid/util/MathUtils;->random(F)F

    move-result v2

    const v3, 0x3dcccccd

    sub-float/2addr v2, v3

    iput v2, p1, Lcom/android/wallpaper/grass/ScriptField_Blade$Item;->offset:F

    .line 238
    div-float v2, v0, v4

    div-float v2, v6, v2

    const v3, 0x3f19999a

    invoke-static {v3}, Landroid/util/MathUtils;->random(F)F

    move-result v3

    add-float/2addr v3, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p1, Lcom/android/wallpaper/grass/ScriptField_Blade$Item;->scale:F

    .line 239
    const/high16 v2, 0x4090

    invoke-static {v2}, Landroid/util/MathUtils;->random(F)F

    move-result v2

    const/high16 v3, 0x4040

    add-float/2addr v2, v3

    mul-float/2addr v2, v4

    mul-float/2addr v2, v0

    iput v2, p1, Lcom/android/wallpaper/grass/ScriptField_Blade$Item;->lengthX:F

    .line 240
    const/high16 v2, 0x40b0

    invoke-static {v2}, Landroid/util/MathUtils;->random(F)F

    move-result v2

    const/high16 v3, 0x4000

    add-float/2addr v2, v3

    mul-float/2addr v2, v4

    mul-float/2addr v2, v0

    iput v2, p1, Lcom/android/wallpaper/grass/ScriptField_Blade$Item;->lengthY:F

    .line 241
    const/high16 v2, 0x3f80

    invoke-static {v2}, Landroid/util/MathUtils;->random(F)F

    move-result v2

    add-float/2addr v2, v5

    mul-float/2addr v2, v4

    iput v2, p1, Lcom/android/wallpaper/grass/ScriptField_Blade$Item;->hardness:F

    .line 242
    const v2, 0x3ca3d70a

    invoke-static {v2}, Landroid/util/MathUtils;->random(F)F

    move-result v2

    add-float/2addr v2, v5

    iput v2, p1, Lcom/android/wallpaper/grass/ScriptField_Blade$Item;->h:F

    .line 243
    const v2, 0x3e6147ae

    invoke-static {v2}, Landroid/util/MathUtils;->random(F)F

    move-result v2

    const v3, 0x3f47ae14

    add-float/2addr v2, v3

    iput v2, p1, Lcom/android/wallpaper/grass/ScriptField_Blade$Item;->s:F

    .line 244
    const v2, 0x3f266666

    invoke-static {v2}, Landroid/util/MathUtils;->random(F)F

    move-result v2

    const v3, 0x3eb33333

    add-float/2addr v2, v3

    iput v2, p1, Lcom/android/wallpaper/grass/ScriptField_Blade$Item;->b:F

    .line 245
    int-to-float v2, v1

    const v3, 0x3bc49ba6

    mul-float/2addr v2, v3

    iput v2, p1, Lcom/android/wallpaper/grass/ScriptField_Blade$Item;->turbulencex:F

    .line 246
    return-void
.end method

.method private createBlades()V
    .registers 7

    .prologue
    const/16 v5, 0xc8

    const/4 v4, 0x0

    .line 177
    iput v4, p0, Lcom/android/wallpaper/grass/GrassRS;->mVerticies:I

    .line 178
    iput v4, p0, Lcom/android/wallpaper/grass/GrassRS;->mIndicies:I

    .line 180
    new-instance v2, Lcom/android/wallpaper/grass/ScriptField_Blade;

    iget-object v3, p0, Lcom/android/wallpaper/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v2, v3, v5}, Lcom/android/wallpaper/grass/ScriptField_Blade;-><init>(Landroid/renderscript/RenderScript;I)V

    iput-object v2, p0, Lcom/android/wallpaper/grass/GrassRS;->mBlades:Lcom/android/wallpaper/grass/ScriptField_Blade;

    .line 182
    new-array v2, v5, [I

    iput-object v2, p0, Lcom/android/wallpaper/grass/GrassRS;->mBladeSizes:[I

    .line 183
    const/4 v0, 0x0

    .local v0, i:I
    :goto_15
    if-ge v0, v5, :cond_41

    .line 184
    new-instance v1, Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    invoke-direct {v1}, Lcom/android/wallpaper/grass/ScriptField_Blade$Item;-><init>()V

    .line 185
    .local v1, item:Lcom/android/wallpaper/grass/ScriptField_Blade$Item;
    invoke-direct {p0, v1}, Lcom/android/wallpaper/grass/GrassRS;->createBlade(Lcom/android/wallpaper/grass/ScriptField_Blade$Item;)V

    .line 186
    iget-object v2, p0, Lcom/android/wallpaper/grass/GrassRS;->mBlades:Lcom/android/wallpaper/grass/ScriptField_Blade;

    invoke-virtual {v2, v1, v0, v4}, Lcom/android/wallpaper/grass/ScriptField_Blade;->set(Lcom/android/wallpaper/grass/ScriptField_Blade$Item;IZ)V

    .line 188
    iget v2, p0, Lcom/android/wallpaper/grass/GrassRS;->mIndicies:I

    iget v3, v1, Lcom/android/wallpaper/grass/ScriptField_Blade$Item;->size:I

    mul-int/lit8 v3, v3, 0x2

    mul-int/lit8 v3, v3, 0x3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/wallpaper/grass/GrassRS;->mIndicies:I

    .line 189
    iget v2, p0, Lcom/android/wallpaper/grass/GrassRS;->mVerticies:I

    iget v3, v1, Lcom/android/wallpaper/grass/ScriptField_Blade$Item;->size:I

    add-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/wallpaper/grass/GrassRS;->mVerticies:I

    .line 190
    iget-object v2, p0, Lcom/android/wallpaper/grass/GrassRS;->mBladeSizes:[I

    iget v3, v1, Lcom/android/wallpaper/grass/ScriptField_Blade$Item;->size:I

    aput v3, v2, v0

    .line 183
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 192
    .end local v1           #item:Lcom/android/wallpaper/grass/ScriptField_Blade$Item;
    :cond_41
    iget-object v2, p0, Lcom/android/wallpaper/grass/GrassRS;->mBlades:Lcom/android/wallpaper/grass/ScriptField_Blade;

    invoke-virtual {v2}, Lcom/android/wallpaper/grass/ScriptField_Blade;->copyAll()V

    .line 194
    invoke-direct {p0}, Lcom/android/wallpaper/grass/GrassRS;->createMesh()V

    .line 195
    return-void
.end method

.method private createMesh()V
    .registers 10

    .prologue
    .line 198
    new-instance v6, Lcom/android/wallpaper/grass/ScriptField_Vertex;

    iget-object v7, p0, Lcom/android/wallpaper/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    iget v8, p0, Lcom/android/wallpaper/grass/GrassRS;->mVerticies:I

    mul-int/lit8 v8, v8, 0x2

    invoke-direct {v6, v7, v8}, Lcom/android/wallpaper/grass/ScriptField_Vertex;-><init>(Landroid/renderscript/RenderScript;I)V

    iput-object v6, p0, Lcom/android/wallpaper/grass/GrassRS;->mVertexBuffer:Lcom/android/wallpaper/grass/ScriptField_Vertex;

    .line 200
    new-instance v4, Landroid/renderscript/Mesh$AllocationBuilder;

    iget-object v6, p0, Lcom/android/wallpaper/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v4, v6}, Landroid/renderscript/Mesh$AllocationBuilder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 201
    .local v4, meshBuilder:Landroid/renderscript/Mesh$AllocationBuilder;
    iget-object v6, p0, Lcom/android/wallpaper/grass/GrassRS;->mVertexBuffer:Lcom/android/wallpaper/grass/ScriptField_Vertex;

    invoke-virtual {v6}, Lcom/android/wallpaper/grass/ScriptField_Vertex;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/renderscript/Mesh$AllocationBuilder;->addVertexAllocation(Landroid/renderscript/Allocation;)Landroid/renderscript/Mesh$AllocationBuilder;

    .line 203
    iget-object v6, p0, Lcom/android/wallpaper/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    iget-object v7, p0, Lcom/android/wallpaper/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-static {v7}, Landroid/renderscript/Element;->U16(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v7

    iget v8, p0, Lcom/android/wallpaper/grass/GrassRS;->mIndicies:I

    invoke-static {v6, v7, v8}, Landroid/renderscript/Allocation;->createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;I)Landroid/renderscript/Allocation;

    move-result-object v6

    iput-object v6, p0, Lcom/android/wallpaper/grass/GrassRS;->mBladesIndicies:Landroid/renderscript/Allocation;

    .line 204
    iget-object v6, p0, Lcom/android/wallpaper/grass/GrassRS;->mBladesIndicies:Landroid/renderscript/Allocation;

    sget-object v7, Landroid/renderscript/Mesh$Primitive;->TRIANGLE:Landroid/renderscript/Mesh$Primitive;

    invoke-virtual {v4, v6, v7}, Landroid/renderscript/Mesh$AllocationBuilder;->addIndexSetAllocation(Landroid/renderscript/Allocation;Landroid/renderscript/Mesh$Primitive;)Landroid/renderscript/Mesh$AllocationBuilder;

    .line 206
    invoke-virtual {v4}, Landroid/renderscript/Mesh$AllocationBuilder;->create()Landroid/renderscript/Mesh;

    move-result-object v6

    iput-object v6, p0, Lcom/android/wallpaper/grass/GrassRS;->mBladesMesh:Landroid/renderscript/Mesh;

    .line 208
    iget v6, p0, Lcom/android/wallpaper/grass/GrassRS;->mIndicies:I

    new-array v2, v6, [S

    .line 209
    .local v2, idx:[S
    const/4 v3, 0x0

    .line 210
    .local v3, idxIdx:I
    const/4 v5, 0x0

    .line 211
    .local v5, vtxIdx:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_41
    iget-object v6, p0, Lcom/android/wallpaper/grass/GrassRS;->mBladeSizes:[I

    array-length v6, v6

    if-ge v1, v6, :cond_83

    .line 212
    const/4 v0, 0x0

    .local v0, ct:I
    :goto_47
    iget-object v6, p0, Lcom/android/wallpaper/grass/GrassRS;->mBladeSizes:[I

    aget v6, v6, v1

    if-ge v0, v6, :cond_7e

    .line 213
    add-int/lit8 v6, v3, 0x0

    add-int/lit8 v7, v5, 0x0

    int-to-short v7, v7

    aput-short v7, v2, v6

    .line 214
    add-int/lit8 v6, v3, 0x1

    add-int/lit8 v7, v5, 0x1

    int-to-short v7, v7

    aput-short v7, v2, v6

    .line 215
    add-int/lit8 v6, v3, 0x2

    add-int/lit8 v7, v5, 0x2

    int-to-short v7, v7

    aput-short v7, v2, v6

    .line 216
    add-int/lit8 v6, v3, 0x3

    add-int/lit8 v7, v5, 0x1

    int-to-short v7, v7

    aput-short v7, v2, v6

    .line 217
    add-int/lit8 v6, v3, 0x4

    add-int/lit8 v7, v5, 0x3

    int-to-short v7, v7

    aput-short v7, v2, v6

    .line 218
    add-int/lit8 v6, v3, 0x5

    add-int/lit8 v7, v5, 0x2

    int-to-short v7, v7

    aput-short v7, v2, v6

    .line 219
    add-int/lit8 v3, v3, 0x6

    .line 220
    add-int/lit8 v5, v5, 0x2

    .line 212
    add-int/lit8 v0, v0, 0x1

    goto :goto_47

    .line 222
    :cond_7e
    add-int/lit8 v5, v5, 0x2

    .line 211
    add-int/lit8 v1, v1, 0x1

    goto :goto_41

    .line 225
    .end local v0           #ct:I
    :cond_83
    iget-object v6, p0, Lcom/android/wallpaper/grass/GrassRS;->mBladesIndicies:Landroid/renderscript/Allocation;

    invoke-virtual {v6, v2}, Landroid/renderscript/Allocation;->copyFrom([S)V

    .line 226
    return-void
.end method

.method private createProgramFragment()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 284
    new-instance v2, Landroid/renderscript/Sampler$Builder;

    iget-object v5, p0, Lcom/android/wallpaper/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v2, v5}, Landroid/renderscript/Sampler$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 285
    .local v2, samplerBuilder:Landroid/renderscript/Sampler$Builder;
    sget-object v5, Landroid/renderscript/Sampler$Value;->LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler$Value;

    invoke-virtual {v2, v5}, Landroid/renderscript/Sampler$Builder;->setMinification(Landroid/renderscript/Sampler$Value;)V

    .line 286
    sget-object v5, Landroid/renderscript/Sampler$Value;->LINEAR:Landroid/renderscript/Sampler$Value;

    invoke-virtual {v2, v5}, Landroid/renderscript/Sampler$Builder;->setMagnification(Landroid/renderscript/Sampler$Value;)V

    .line 287
    sget-object v5, Landroid/renderscript/Sampler$Value;->WRAP:Landroid/renderscript/Sampler$Value;

    invoke-virtual {v2, v5}, Landroid/renderscript/Sampler$Builder;->setWrapS(Landroid/renderscript/Sampler$Value;)V

    .line 288
    sget-object v5, Landroid/renderscript/Sampler$Value;->WRAP:Landroid/renderscript/Sampler$Value;

    invoke-virtual {v2, v5}, Landroid/renderscript/Sampler$Builder;->setWrapT(Landroid/renderscript/Sampler$Value;)V

    .line 289
    invoke-virtual {v2}, Landroid/renderscript/Sampler$Builder;->create()Landroid/renderscript/Sampler;

    move-result-object v3

    .line 291
    .local v3, sl:Landroid/renderscript/Sampler;
    sget-object v5, Landroid/renderscript/Sampler$Value;->NEAREST:Landroid/renderscript/Sampler$Value;

    invoke-virtual {v2, v5}, Landroid/renderscript/Sampler$Builder;->setMinification(Landroid/renderscript/Sampler$Value;)V

    .line 292
    sget-object v5, Landroid/renderscript/Sampler$Value;->NEAREST:Landroid/renderscript/Sampler$Value;

    invoke-virtual {v2, v5}, Landroid/renderscript/Sampler$Builder;->setMagnification(Landroid/renderscript/Sampler$Value;)V

    .line 293
    invoke-virtual {v2}, Landroid/renderscript/Sampler$Builder;->create()Landroid/renderscript/Sampler;

    move-result-object v4

    .line 295
    .local v4, sn:Landroid/renderscript/Sampler;
    new-instance v0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;

    iget-object v5, p0, Lcom/android/wallpaper/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v0, v5}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 296
    .local v0, builder:Landroid/renderscript/ProgramFragmentFixedFunction$Builder;
    sget-object v5, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;->REPLACE:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;

    sget-object v6, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;->ALPHA:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;

    invoke-virtual {v0, v5, v6, v7}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->setTexture(Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;I)Landroid/renderscript/ProgramFragmentFixedFunction$Builder;

    .line 298
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->setVaryingColor(Z)Landroid/renderscript/ProgramFragmentFixedFunction$Builder;

    .line 299
    invoke-virtual {v0}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->create()Landroid/renderscript/ProgramFragmentFixedFunction;

    move-result-object v1

    .line 300
    .local v1, pf:Landroid/renderscript/ProgramFragment;
    iget-object v5, p0, Lcom/android/wallpaper/grass/GrassRS;->mScript:Lcom/android/wallpaper/grass/ScriptC_grass;

    invoke-virtual {v5, v1}, Lcom/android/wallpaper/grass/ScriptC_grass;->set_gPFGrass(Landroid/renderscript/ProgramFragment;)V

    .line 301
    invoke-virtual {v1, v3, v7}, Landroid/renderscript/ProgramFragment;->bindSampler(Landroid/renderscript/Sampler;I)V

    .line 303
    new-instance v0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;

    .end local v0           #builder:Landroid/renderscript/ProgramFragmentFixedFunction$Builder;
    iget-object v5, p0, Lcom/android/wallpaper/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v0, v5}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 304
    .restart local v0       #builder:Landroid/renderscript/ProgramFragmentFixedFunction$Builder;
    sget-object v5, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;->REPLACE:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;

    sget-object v6, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;->RGB:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;

    invoke-virtual {v0, v5, v6, v7}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->setTexture(Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;I)Landroid/renderscript/ProgramFragmentFixedFunction$Builder;

    .line 306
    invoke-virtual {v0}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->create()Landroid/renderscript/ProgramFragmentFixedFunction;

    move-result-object v1

    .line 307
    iget-object v5, p0, Lcom/android/wallpaper/grass/GrassRS;->mScript:Lcom/android/wallpaper/grass/ScriptC_grass;

    invoke-virtual {v5, v1}, Lcom/android/wallpaper/grass/ScriptC_grass;->set_gPFBackground(Landroid/renderscript/ProgramFragment;)V

    .line 308
    invoke-virtual {v1, v4, v7}, Landroid/renderscript/ProgramFragment;->bindSampler(Landroid/renderscript/Sampler;I)V

    .line 309
    return-void
.end method

.method private createProgramFragmentStore()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 312
    new-instance v0, Landroid/renderscript/ProgramStore$Builder;

    iget-object v1, p0, Lcom/android/wallpaper/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v0, v1}, Landroid/renderscript/ProgramStore$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 313
    .local v0, builder:Landroid/renderscript/ProgramStore$Builder;
    sget-object v1, Landroid/renderscript/ProgramStore$DepthFunc;->ALWAYS:Landroid/renderscript/ProgramStore$DepthFunc;

    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramStore$Builder;->setDepthFunc(Landroid/renderscript/ProgramStore$DepthFunc;)Landroid/renderscript/ProgramStore$Builder;

    .line 314
    sget-object v1, Landroid/renderscript/ProgramStore$BlendSrcFunc;->SRC_ALPHA:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    sget-object v2, Landroid/renderscript/ProgramStore$BlendDstFunc;->ONE_MINUS_SRC_ALPHA:Landroid/renderscript/ProgramStore$BlendDstFunc;

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/ProgramStore$Builder;->setBlendFunc(Landroid/renderscript/ProgramStore$BlendSrcFunc;Landroid/renderscript/ProgramStore$BlendDstFunc;)Landroid/renderscript/ProgramStore$Builder;

    .line 315
    invoke-virtual {v0, v3}, Landroid/renderscript/ProgramStore$Builder;->setDitherEnabled(Z)Landroid/renderscript/ProgramStore$Builder;

    .line 316
    invoke-virtual {v0, v3}, Landroid/renderscript/ProgramStore$Builder;->setDepthMaskEnabled(Z)Landroid/renderscript/ProgramStore$Builder;

    .line 317
    iget-object v1, p0, Lcom/android/wallpaper/grass/GrassRS;->mScript:Lcom/android/wallpaper/grass/ScriptC_grass;

    invoke-virtual {v0}, Landroid/renderscript/ProgramStore$Builder;->create()Landroid/renderscript/ProgramStore;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/wallpaper/grass/ScriptC_grass;->set_gPSBackground(Landroid/renderscript/ProgramStore;)V

    .line 318
    return-void
.end method

.method private createProgramVertex()V
    .registers 6

    .prologue
    .line 321
    new-instance v3, Landroid/renderscript/ProgramVertexFixedFunction$Constants;

    iget-object v4, p0, Lcom/android/wallpaper/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v3, v4}, Landroid/renderscript/ProgramVertexFixedFunction$Constants;-><init>(Landroid/renderscript/RenderScript;)V

    iput-object v3, p0, Lcom/android/wallpaper/grass/GrassRS;->mPvOrthoAlloc:Landroid/renderscript/ProgramVertexFixedFunction$Constants;

    .line 322
    new-instance v0, Landroid/renderscript/Matrix4f;

    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 323
    .local v0, proj:Landroid/renderscript/Matrix4f;
    iget v3, p0, Lcom/android/wallpaper/RenderScriptScene;->mWidth:I

    iget v4, p0, Lcom/android/wallpaper/RenderScriptScene;->mHeight:I

    invoke-virtual {v0, v3, v4}, Landroid/renderscript/Matrix4f;->loadOrthoWindow(II)V

    .line 324
    iget-object v3, p0, Lcom/android/wallpaper/grass/GrassRS;->mPvOrthoAlloc:Landroid/renderscript/ProgramVertexFixedFunction$Constants;

    invoke-virtual {v3, v0}, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->setProjection(Landroid/renderscript/Matrix4f;)V

    .line 326
    new-instance v2, Landroid/renderscript/ProgramVertexFixedFunction$Builder;

    iget-object v3, p0, Lcom/android/wallpaper/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v2, v3}, Landroid/renderscript/ProgramVertexFixedFunction$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 327
    .local v2, pvb:Landroid/renderscript/ProgramVertexFixedFunction$Builder;
    invoke-virtual {v2}, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->create()Landroid/renderscript/ProgramVertexFixedFunction;

    move-result-object v1

    .local v1, pv:Landroid/renderscript/ProgramVertex;
    move-object v3, v1

    .line 328
    check-cast v3, Landroid/renderscript/ProgramVertexFixedFunction;

    iget-object v4, p0, Lcom/android/wallpaper/grass/GrassRS;->mPvOrthoAlloc:Landroid/renderscript/ProgramVertexFixedFunction$Constants;

    invoke-virtual {v3, v4}, Landroid/renderscript/ProgramVertexFixedFunction;->bindConstants(Landroid/renderscript/ProgramVertexFixedFunction$Constants;)V

    .line 329
    iget-object v3, p0, Lcom/android/wallpaper/grass/GrassRS;->mScript:Lcom/android/wallpaper/grass/ScriptC_grass;

    invoke-virtual {v3, v1}, Lcom/android/wallpaper/grass/ScriptC_grass;->set_gPVBackground(Landroid/renderscript/ProgramVertex;)V

    .line 330
    return-void
.end method

.method private generateTextureAlpha()Landroid/renderscript/Allocation;
    .registers 13

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 257
    new-instance v2, Landroid/renderscript/Type$Builder;

    iget-object v6, p0, Lcom/android/wallpaper/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    iget-object v7, p0, Lcom/android/wallpaper/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-static {v7}, Landroid/renderscript/Element;->A_8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v7

    invoke-direct {v2, v6, v7}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    .line 258
    .local v2, builder:Landroid/renderscript/Type$Builder;
    invoke-virtual {v2, v11}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    .line 259
    invoke-virtual {v2, v8}, Landroid/renderscript/Type$Builder;->setY(I)Landroid/renderscript/Type$Builder;

    .line 260
    invoke-virtual {v2, v8}, Landroid/renderscript/Type$Builder;->setMipmaps(Z)Landroid/renderscript/Type$Builder;

    .line 262
    iget-object v6, p0, Lcom/android/wallpaper/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-virtual {v2}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v7

    invoke-static {v6, v7, v10}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object v1

    .line 264
    .local v1, allocation:Landroid/renderscript/Allocation;
    new-array v3, v11, [B

    fill-array-data v3, :array_4c

    .line 265
    .local v3, mip0:[B
    new-array v4, v10, [B

    fill-array-data v4, :array_52

    .line 266
    .local v4, mip1:[B
    new-array v5, v8, [B

    aput-byte v9, v5, v9

    .line 268
    .local v5, mip2:[B
    iget-object v6, p0, Lcom/android/wallpaper/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-static {v6, v1}, Landroid/renderscript/AllocationAdapter;->create2D(Landroid/renderscript/RenderScript;Landroid/renderscript/Allocation;)Landroid/renderscript/AllocationAdapter;

    move-result-object v0

    .line 269
    .local v0, a:Landroid/renderscript/AllocationAdapter;
    invoke-virtual {v0, v9}, Landroid/renderscript/AllocationAdapter;->setLOD(I)V

    .line 270
    invoke-virtual {v0, v3}, Landroid/renderscript/AllocationAdapter;->copyFrom([B)V

    .line 271
    invoke-virtual {v0, v8}, Landroid/renderscript/AllocationAdapter;->setLOD(I)V

    .line 272
    invoke-virtual {v0, v4}, Landroid/renderscript/AllocationAdapter;->copyFrom([B)V

    .line 273
    invoke-virtual {v0, v10}, Landroid/renderscript/AllocationAdapter;->setLOD(I)V

    .line 274
    invoke-virtual {v0, v5}, Landroid/renderscript/AllocationAdapter;->copyFrom([B)V

    .line 276
    return-object v1

    .line 264
    nop

    :array_4c
    .array-data 0x1
        0x0t
        0xfft
        0xfft
        0x0t
    .end array-data

    .line 265
    :array_52
    .array-data 0x1
        0x40t
        0x40t
    .end array-data
.end method

.method private loadTexture(I)Landroid/renderscript/Allocation;
    .registers 4
    .parameter "id"

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/wallpaper/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    iget-object v1, p0, Lcom/android/wallpaper/RenderScriptScene;->mResources:Landroid/content/res/Resources;

    invoke-static {v0, v1, p1}, Landroid/renderscript/Allocation;->createFromBitmapResource(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)Landroid/renderscript/Allocation;

    move-result-object v0

    return-object v0
.end method

.method private loadTextures()V
    .registers 3

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/wallpaper/grass/GrassRS;->mScript:Lcom/android/wallpaper/grass/ScriptC_grass;

    const v1, 0x7f02000c

    invoke-direct {p0, v1}, Lcom/android/wallpaper/grass/GrassRS;->loadTexture(I)Landroid/renderscript/Allocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/wallpaper/grass/ScriptC_grass;->set_gTNight(Landroid/renderscript/Allocation;)V

    .line 250
    iget-object v0, p0, Lcom/android/wallpaper/grass/GrassRS;->mScript:Lcom/android/wallpaper/grass/ScriptC_grass;

    const v1, 0x7f020014

    invoke-direct {p0, v1}, Lcom/android/wallpaper/grass/GrassRS;->loadTexture(I)Landroid/renderscript/Allocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/wallpaper/grass/ScriptC_grass;->set_gTSunrise(Landroid/renderscript/Allocation;)V

    .line 251
    iget-object v0, p0, Lcom/android/wallpaper/grass/GrassRS;->mScript:Lcom/android/wallpaper/grass/ScriptC_grass;

    const v1, 0x7f020012

    invoke-direct {p0, v1}, Lcom/android/wallpaper/grass/GrassRS;->loadTexture(I)Landroid/renderscript/Allocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/wallpaper/grass/ScriptC_grass;->set_gTSky(Landroid/renderscript/Allocation;)V

    .line 252
    iget-object v0, p0, Lcom/android/wallpaper/grass/GrassRS;->mScript:Lcom/android/wallpaper/grass/ScriptC_grass;

    const v1, 0x7f020015

    invoke-direct {p0, v1}, Lcom/android/wallpaper/grass/GrassRS;->loadTexture(I)Landroid/renderscript/Allocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/wallpaper/grass/ScriptC_grass;->set_gTSunset(Landroid/renderscript/Allocation;)V

    .line 253
    iget-object v0, p0, Lcom/android/wallpaper/grass/GrassRS;->mScript:Lcom/android/wallpaper/grass/ScriptC_grass;

    invoke-direct {p0}, Lcom/android/wallpaper/grass/GrassRS;->generateTextureAlpha()Landroid/renderscript/Allocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/wallpaper/grass/ScriptC_grass;->set_gTAa(Landroid/renderscript/Allocation;)V

    .line 254
    return-void
.end method

.method private updateLocation()V
    .registers 3

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/wallpaper/grass/GrassRS;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/wallpaper/grass/GrassRS;->updateLocation(Landroid/location/Location;)V

    .line 334
    return-void
.end method

.method private updateLocation(Landroid/location/Location;)V
    .registers 14
    .parameter "location"

    .prologue
    const v11, 0x3daaaaab

    const-wide/high16 v9, 0x4058

    .line 337
    const v1, 0x3e99999a

    .line 338
    .local v1, dawn:F
    const/high16 v2, 0x3f40

    .line 340
    .local v2, dusk:F
    if-eqz p1, :cond_29

    .line 341
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v8

    .line 342
    .local v8, timeZone:Ljava/lang/String;
    new-instance v0, Lcom/android/wallpaper/grass/SunCalculator;

    invoke-direct {v0, p1, v8}, Lcom/android/wallpaper/grass/SunCalculator;-><init>(Landroid/location/Location;Ljava/lang/String;)V

    .line 343
    .local v0, calculator:Lcom/android/wallpaper/grass/SunCalculator;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 345
    .local v3, now:Ljava/util/Calendar;
    invoke-virtual {v0, v9, v10, v3}, Lcom/android/wallpaper/grass/SunCalculator;->computeSunriseTime(DLjava/util/Calendar;)D

    move-result-wide v4

    .line 346
    .local v4, sunrise:D
    invoke-static {v4, v5}, Lcom/android/wallpaper/grass/SunCalculator;->timeToDayFraction(D)F

    move-result v1

    .line 348
    invoke-virtual {v0, v9, v10, v3}, Lcom/android/wallpaper/grass/SunCalculator;->computeSunsetTime(DLjava/util/Calendar;)D

    move-result-wide v6

    .line 349
    .local v6, sunset:D
    invoke-static {v6, v7}, Lcom/android/wallpaper/grass/SunCalculator;->timeToDayFraction(D)F

    move-result v2

    .line 352
    .end local v0           #calculator:Lcom/android/wallpaper/grass/SunCalculator;
    .end local v3           #now:Ljava/util/Calendar;
    .end local v4           #sunrise:D
    .end local v6           #sunset:D
    .end local v8           #timeZone:Ljava/lang/String;
    :cond_29
    iget-object v9, p0, Lcom/android/wallpaper/grass/GrassRS;->mScript:Lcom/android/wallpaper/grass/ScriptC_grass;

    invoke-virtual {v9, v1}, Lcom/android/wallpaper/grass/ScriptC_grass;->set_gDawn(F)V

    .line 353
    iget-object v9, p0, Lcom/android/wallpaper/grass/GrassRS;->mScript:Lcom/android/wallpaper/grass/ScriptC_grass;

    invoke-virtual {v9, v2}, Lcom/android/wallpaper/grass/ScriptC_grass;->set_gDusk(F)V

    .line 354
    iget-object v9, p0, Lcom/android/wallpaper/grass/GrassRS;->mScript:Lcom/android/wallpaper/grass/ScriptC_grass;

    add-float v10, v1, v11

    invoke-virtual {v9, v10}, Lcom/android/wallpaper/grass/ScriptC_grass;->set_gMorning(F)V

    .line 355
    iget-object v9, p0, Lcom/android/wallpaper/grass/GrassRS;->mScript:Lcom/android/wallpaper/grass/ScriptC_grass;

    sub-float v10, v2, v11

    invoke-virtual {v9, v10}, Lcom/android/wallpaper/grass/ScriptC_grass;->set_gAfternoon(F)V

    .line 356
    return-void
.end method


# virtual methods
.method protected createScript()Landroid/renderscript/ScriptC;
    .registers 6

    .prologue
    .line 141
    new-instance v1, Lcom/android/wallpaper/grass/ScriptC_grass;

    iget-object v2, p0, Lcom/android/wallpaper/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    iget-object v3, p0, Lcom/android/wallpaper/RenderScriptScene;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f040002

    invoke-direct {v1, v2, v3, v4}, Lcom/android/wallpaper/grass/ScriptC_grass;-><init>(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)V

    iput-object v1, p0, Lcom/android/wallpaper/grass/GrassRS;->mScript:Lcom/android/wallpaper/grass/ScriptC_grass;

    .line 143
    invoke-virtual {p0}, Lcom/android/wallpaper/grass/GrassRS;->isPreview()Z

    move-result v0

    .line 144
    .local v0, isPreview:Z
    invoke-direct {p0}, Lcom/android/wallpaper/grass/GrassRS;->createProgramVertex()V

    .line 145
    invoke-direct {p0}, Lcom/android/wallpaper/grass/GrassRS;->createProgramFragmentStore()V

    .line 146
    invoke-direct {p0}, Lcom/android/wallpaper/grass/GrassRS;->loadTextures()V

    .line 147
    invoke-direct {p0}, Lcom/android/wallpaper/grass/GrassRS;->createProgramFragment()V

    .line 148
    invoke-direct {p0}, Lcom/android/wallpaper/grass/GrassRS;->createBlades()V

    .line 150
    iget-object v1, p0, Lcom/android/wallpaper/grass/GrassRS;->mScript:Lcom/android/wallpaper/grass/ScriptC_grass;

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Lcom/android/wallpaper/grass/ScriptC_grass;->set_gBladesCount(I)V

    .line 151
    iget-object v1, p0, Lcom/android/wallpaper/grass/GrassRS;->mScript:Lcom/android/wallpaper/grass/ScriptC_grass;

    iget v2, p0, Lcom/android/wallpaper/grass/GrassRS;->mIndicies:I

    invoke-virtual {v1, v2}, Lcom/android/wallpaper/grass/ScriptC_grass;->set_gIndexCount(I)V

    .line 152
    iget-object v1, p0, Lcom/android/wallpaper/grass/GrassRS;->mScript:Lcom/android/wallpaper/grass/ScriptC_grass;

    iget v2, p0, Lcom/android/wallpaper/RenderScriptScene;->mWidth:I

    invoke-virtual {v1, v2}, Lcom/android/wallpaper/grass/ScriptC_grass;->set_gWidth(I)V

    .line 153
    iget-object v1, p0, Lcom/android/wallpaper/grass/GrassRS;->mScript:Lcom/android/wallpaper/grass/ScriptC_grass;

    iget v2, p0, Lcom/android/wallpaper/RenderScriptScene;->mHeight:I

    invoke-virtual {v1, v2}, Lcom/android/wallpaper/grass/ScriptC_grass;->set_gHeight(I)V

    .line 154
    iget-object v2, p0, Lcom/android/wallpaper/grass/GrassRS;->mScript:Lcom/android/wallpaper/grass/ScriptC_grass;

    if-eqz v0, :cond_91

    const/high16 v1, 0x3f00

    :goto_43
    invoke-virtual {v2, v1}, Lcom/android/wallpaper/grass/ScriptC_grass;->set_gXOffset(F)V

    .line 155
    iget-object v2, p0, Lcom/android/wallpaper/grass/GrassRS;->mScript:Lcom/android/wallpaper/grass/ScriptC_grass;

    if-eqz v0, :cond_93

    const/4 v1, 0x1

    :goto_4b
    invoke-virtual {v2, v1}, Lcom/android/wallpaper/grass/ScriptC_grass;->set_gIsPreview(I)V

    .line 156
    iget-object v1, p0, Lcom/android/wallpaper/grass/GrassRS;->mScript:Lcom/android/wallpaper/grass/ScriptC_grass;

    iget-object v2, p0, Lcom/android/wallpaper/grass/GrassRS;->mBladesMesh:Landroid/renderscript/Mesh;

    invoke-virtual {v1, v2}, Lcom/android/wallpaper/grass/ScriptC_grass;->set_gBladesMesh(Landroid/renderscript/Mesh;)V

    .line 158
    iget-object v1, p0, Lcom/android/wallpaper/grass/GrassRS;->mScript:Lcom/android/wallpaper/grass/ScriptC_grass;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/wallpaper/grass/ScriptC_grass;->setTimeZone(Ljava/lang/String;)V

    .line 159
    iget-object v1, p0, Lcom/android/wallpaper/grass/GrassRS;->mScript:Lcom/android/wallpaper/grass/ScriptC_grass;

    iget-object v2, p0, Lcom/android/wallpaper/grass/GrassRS;->mBlades:Lcom/android/wallpaper/grass/ScriptField_Blade;

    invoke-virtual {v1, v2}, Lcom/android/wallpaper/grass/ScriptC_grass;->bind_Blades(Lcom/android/wallpaper/grass/ScriptField_Blade;)V

    .line 160
    iget-object v1, p0, Lcom/android/wallpaper/grass/GrassRS;->mScript:Lcom/android/wallpaper/grass/ScriptC_grass;

    iget-object v2, p0, Lcom/android/wallpaper/grass/GrassRS;->mVertexBuffer:Lcom/android/wallpaper/grass/ScriptField_Vertex;

    invoke-virtual {v1, v2}, Lcom/android/wallpaper/grass/ScriptC_grass;->bind_Verticies(Lcom/android/wallpaper/grass/ScriptField_Vertex;)V

    .line 163
    iget-object v1, p0, Lcom/android/wallpaper/grass/GrassRS;->mScript:Lcom/android/wallpaper/grass/ScriptC_grass;

    const/high16 v2, 0x3e80

    invoke-virtual {v1, v2}, Lcom/android/wallpaper/grass/ScriptC_grass;->set_gDawn(F)V

    .line 164
    iget-object v1, p0, Lcom/android/wallpaper/grass/GrassRS;->mScript:Lcom/android/wallpaper/grass/ScriptC_grass;

    const/high16 v2, 0x3f40

    invoke-virtual {v1, v2}, Lcom/android/wallpaper/grass/ScriptC_grass;->set_gDusk(F)V

    .line 165
    iget-object v1, p0, Lcom/android/wallpaper/grass/GrassRS;->mScript:Lcom/android/wallpaper/grass/ScriptC_grass;

    const v2, 0x3eaaaaab

    invoke-virtual {v1, v2}, Lcom/android/wallpaper/grass/ScriptC_grass;->set_gMorning(F)V

    .line 166
    iget-object v1, p0, Lcom/android/wallpaper/grass/GrassRS;->mScript:Lcom/android/wallpaper/grass/ScriptC_grass;

    const v2, 0x3f2aaaab

    invoke-virtual {v1, v2}, Lcom/android/wallpaper/grass/ScriptC_grass;->set_gAfternoon(F)V

    .line 168
    iget-object v1, p0, Lcom/android/wallpaper/grass/GrassRS;->mScript:Lcom/android/wallpaper/grass/ScriptC_grass;

    return-object v1

    .line 154
    :cond_91
    const/4 v1, 0x0

    goto :goto_43

    .line 155
    :cond_93
    const/4 v1, 0x0

    goto :goto_4b
.end method

.method public resize(II)V
    .registers 5
    .parameter "width"
    .parameter "height"

    .prologue
    .line 129
    invoke-super {p0, p1, p2}, Lcom/android/wallpaper/RenderScriptScene;->resize(II)V

    .line 131
    iget-object v1, p0, Lcom/android/wallpaper/grass/GrassRS;->mScript:Lcom/android/wallpaper/grass/ScriptC_grass;

    invoke-virtual {v1, p1}, Lcom/android/wallpaper/grass/ScriptC_grass;->set_gWidth(I)V

    .line 132
    iget-object v1, p0, Lcom/android/wallpaper/grass/GrassRS;->mScript:Lcom/android/wallpaper/grass/ScriptC_grass;

    invoke-virtual {v1, p2}, Lcom/android/wallpaper/grass/ScriptC_grass;->set_gHeight(I)V

    .line 133
    iget-object v1, p0, Lcom/android/wallpaper/grass/GrassRS;->mScript:Lcom/android/wallpaper/grass/ScriptC_grass;

    invoke-virtual {v1}, Lcom/android/wallpaper/grass/ScriptC_grass;->invoke_updateBlades()V

    .line 134
    new-instance v0, Landroid/renderscript/Matrix4f;

    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 135
    .local v0, proj:Landroid/renderscript/Matrix4f;
    invoke-virtual {v0, p1, p2}, Landroid/renderscript/Matrix4f;->loadOrthoWindow(II)V

    .line 136
    iget-object v1, p0, Lcom/android/wallpaper/grass/GrassRS;->mPvOrthoAlloc:Landroid/renderscript/ProgramVertexFixedFunction$Constants;

    invoke-virtual {v1, v0}, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->setProjection(Landroid/renderscript/Matrix4f;)V

    .line 137
    return-void
.end method

.method public setOffset(FFII)V
    .registers 6
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "xPixels"
    .parameter "yPixels"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/wallpaper/grass/GrassRS;->mScript:Lcom/android/wallpaper/grass/ScriptC_grass;

    invoke-virtual {v0, p1}, Lcom/android/wallpaper/grass/ScriptC_grass;->set_gXOffset(F)V

    .line 174
    return-void
.end method

.method public start()V
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 85
    invoke-super {p0}, Lcom/android/wallpaper/RenderScriptScene;->start()V

    .line 87
    iget-object v0, p0, Lcom/android/wallpaper/grass/GrassRS;->mTimezoneTracker:Lcom/android/wallpaper/grass/GrassRS$TimezoneTracker;

    if-nez v0, :cond_2a

    .line 88
    new-instance v0, Lcom/android/wallpaper/grass/GrassRS$TimezoneTracker;

    invoke-direct {v0, p0, v2}, Lcom/android/wallpaper/grass/GrassRS$TimezoneTracker;-><init>(Lcom/android/wallpaper/grass/GrassRS;Lcom/android/wallpaper/grass/GrassRS$1;)V

    iput-object v0, p0, Lcom/android/wallpaper/grass/GrassRS;->mTimezoneTracker:Lcom/android/wallpaper/grass/GrassRS$TimezoneTracker;

    .line 89
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 90
    .local v7, filter:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    const-string v0, "android.intent.action.TIME_SET"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 92
    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/android/wallpaper/grass/GrassRS;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/wallpaper/grass/GrassRS;->mTimezoneTracker:Lcom/android/wallpaper/grass/GrassRS$TimezoneTracker;

    invoke-virtual {v0, v1, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 97
    .end local v7           #filter:Landroid/content/IntentFilter;
    :cond_2a
    iget-object v0, p0, Lcom/android/wallpaper/grass/GrassRS;->mLocationUpdater:Lcom/android/wallpaper/grass/GrassRS$LocationUpdater;

    if-nez v0, :cond_44

    .line 98
    new-instance v0, Lcom/android/wallpaper/grass/GrassRS$LocationUpdater;

    invoke-direct {v0, p0, v2}, Lcom/android/wallpaper/grass/GrassRS$LocationUpdater;-><init>(Lcom/android/wallpaper/grass/GrassRS;Lcom/android/wallpaper/grass/GrassRS$1;)V

    iput-object v0, p0, Lcom/android/wallpaper/grass/GrassRS;->mLocationUpdater:Lcom/android/wallpaper/grass/GrassRS$LocationUpdater;

    .line 100
    :try_start_35
    iget-object v0, p0, Lcom/android/wallpaper/grass/GrassRS;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/32 v2, 0x36ee80

    const v4, 0x48127c00

    iget-object v5, p0, Lcom/android/wallpaper/grass/GrassRS;->mLocationUpdater:Lcom/android/wallpaper/grass/GrassRS$LocationUpdater;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_44
    .catch Ljava/lang/IllegalArgumentException; {:try_start_35 .. :try_end_44} :catch_48

    .line 109
    :cond_44
    invoke-direct {p0}, Lcom/android/wallpaper/grass/GrassRS;->updateLocation()V

    .line 110
    return-void

    .line 102
    :catch_48
    move-exception v6

    .line 103
    .local v6, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "provider=network"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44

    .line 104
    throw v6
.end method

.method public stop()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 114
    invoke-super {p0}, Lcom/android/wallpaper/RenderScriptScene;->stop()V

    .line 116
    iget-object v0, p0, Lcom/android/wallpaper/grass/GrassRS;->mTimezoneTracker:Lcom/android/wallpaper/grass/GrassRS$TimezoneTracker;

    if-eqz v0, :cond_11

    .line 117
    iget-object v0, p0, Lcom/android/wallpaper/grass/GrassRS;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/wallpaper/grass/GrassRS;->mTimezoneTracker:Lcom/android/wallpaper/grass/GrassRS$TimezoneTracker;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 118
    iput-object v2, p0, Lcom/android/wallpaper/grass/GrassRS;->mTimezoneTracker:Lcom/android/wallpaper/grass/GrassRS$TimezoneTracker;

    .line 121
    :cond_11
    iget-object v0, p0, Lcom/android/wallpaper/grass/GrassRS;->mLocationUpdater:Lcom/android/wallpaper/grass/GrassRS$LocationUpdater;

    if-eqz v0, :cond_1e

    .line 122
    iget-object v0, p0, Lcom/android/wallpaper/grass/GrassRS;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/android/wallpaper/grass/GrassRS;->mLocationUpdater:Lcom/android/wallpaper/grass/GrassRS$LocationUpdater;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 123
    iput-object v2, p0, Lcom/android/wallpaper/grass/GrassRS;->mLocationUpdater:Lcom/android/wallpaper/grass/GrassRS$LocationUpdater;

    .line 125
    :cond_1e
    return-void
.end method
