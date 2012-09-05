.class Lcom/android/wallpaper/galaxy/GalaxyRS;
.super Lcom/android/wallpaper/RenderScriptScene;
.source "GalaxyRS.java"


# instance fields
.field private final mOptionsARGB:Landroid/graphics/BitmapFactory$Options;

.field private mParticlesMesh:Landroid/renderscript/Mesh;

.field private mPvOrthoAlloc:Landroid/renderscript/ProgramVertexFixedFunction$Constants;

.field private mPvProjectionAlloc:Landroid/renderscript/ProgramVertexFixedFunction$Constants;

.field private mPvStarAlloc:Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;

.field private mScript:Lcom/android/wallpaper/galaxy/ScriptC_galaxy;


# direct methods
.method constructor <init>(II)V
    .registers 5
    .parameter "width"
    .parameter "height"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/android/wallpaper/RenderScriptScene;-><init>(II)V

    .line 35
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/android/wallpaper/galaxy/GalaxyRS;->mOptionsARGB:Landroid/graphics/BitmapFactory$Options;

    .line 45
    iget-object v0, p0, Lcom/android/wallpaper/galaxy/GalaxyRS;->mOptionsARGB:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 46
    iget-object v0, p0, Lcom/android/wallpaper/galaxy/GalaxyRS;->mOptionsARGB:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 47
    return-void
.end method

.method private createParticlesMesh()V
    .registers 6

    .prologue
    .line 70
    new-instance v1, Lcom/android/wallpaper/galaxy/ScriptField_Particle;

    iget-object v3, p0, Lcom/android/wallpaper/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    const/16 v4, 0x2ee0

    invoke-direct {v1, v3, v4}, Lcom/android/wallpaper/galaxy/ScriptField_Particle;-><init>(Landroid/renderscript/RenderScript;I)V

    .line 72
    .local v1, p:Lcom/android/wallpaper/galaxy/ScriptField_Particle;
    new-instance v0, Landroid/renderscript/Mesh$AllocationBuilder;

    iget-object v3, p0, Lcom/android/wallpaper/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v0, v3}, Landroid/renderscript/Mesh$AllocationBuilder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 73
    .local v0, meshBuilder:Landroid/renderscript/Mesh$AllocationBuilder;
    invoke-virtual {v1}, Lcom/android/wallpaper/galaxy/ScriptField_Particle;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/renderscript/Mesh$AllocationBuilder;->addVertexAllocation(Landroid/renderscript/Allocation;)Landroid/renderscript/Mesh$AllocationBuilder;

    .line 74
    invoke-virtual {v0}, Landroid/renderscript/Mesh$AllocationBuilder;->getCurrentVertexTypeIndex()I

    move-result v2

    .line 75
    .local v2, vertexSlot:I
    sget-object v3, Landroid/renderscript/Mesh$Primitive;->POINT:Landroid/renderscript/Mesh$Primitive;

    invoke-virtual {v0, v3}, Landroid/renderscript/Mesh$AllocationBuilder;->addIndexSetType(Landroid/renderscript/Mesh$Primitive;)Landroid/renderscript/Mesh$AllocationBuilder;

    .line 76
    invoke-virtual {v0}, Landroid/renderscript/Mesh$AllocationBuilder;->create()Landroid/renderscript/Mesh;

    move-result-object v3

    iput-object v3, p0, Lcom/android/wallpaper/galaxy/GalaxyRS;->mParticlesMesh:Landroid/renderscript/Mesh;

    .line 78
    iget-object v3, p0, Lcom/android/wallpaper/galaxy/GalaxyRS;->mScript:Lcom/android/wallpaper/galaxy/ScriptC_galaxy;

    iget-object v4, p0, Lcom/android/wallpaper/galaxy/GalaxyRS;->mParticlesMesh:Landroid/renderscript/Mesh;

    invoke-virtual {v3, v4}, Lcom/android/wallpaper/galaxy/ScriptC_galaxy;->set_gParticlesMesh(Landroid/renderscript/Mesh;)V

    .line 79
    iget-object v3, p0, Lcom/android/wallpaper/galaxy/GalaxyRS;->mScript:Lcom/android/wallpaper/galaxy/ScriptC_galaxy;

    invoke-virtual {v3, v1}, Lcom/android/wallpaper/galaxy/ScriptC_galaxy;->bind_Particles(Lcom/android/wallpaper/galaxy/ScriptField_Particle;)V

    .line 80
    return-void
.end method

.method private createProgramFragment()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 150
    new-instance v0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;

    iget-object v3, p0, Lcom/android/wallpaper/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v0, v3}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 151
    .local v0, builder:Landroid/renderscript/ProgramFragmentFixedFunction$Builder;
    sget-object v3, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;->REPLACE:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;

    sget-object v4, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;->RGB:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;

    invoke-virtual {v0, v3, v4, v5}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->setTexture(Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;I)Landroid/renderscript/ProgramFragmentFixedFunction$Builder;

    .line 153
    invoke-virtual {v0}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->create()Landroid/renderscript/ProgramFragmentFixedFunction;

    move-result-object v1

    .line 154
    .local v1, pfb:Landroid/renderscript/ProgramFragment;
    iget-object v3, p0, Lcom/android/wallpaper/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-static {v3}, Landroid/renderscript/Sampler;->WRAP_NEAREST(Landroid/renderscript/RenderScript;)Landroid/renderscript/Sampler;

    move-result-object v3

    invoke-virtual {v1, v3, v5}, Landroid/renderscript/ProgramFragment;->bindSampler(Landroid/renderscript/Sampler;I)V

    .line 155
    iget-object v3, p0, Lcom/android/wallpaper/galaxy/GalaxyRS;->mScript:Lcom/android/wallpaper/galaxy/ScriptC_galaxy;

    invoke-virtual {v3, v1}, Lcom/android/wallpaper/galaxy/ScriptC_galaxy;->set_gPFBackground(Landroid/renderscript/ProgramFragment;)V

    .line 157
    new-instance v0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;

    .end local v0           #builder:Landroid/renderscript/ProgramFragmentFixedFunction$Builder;
    iget-object v3, p0, Lcom/android/wallpaper/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v0, v3}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 158
    .restart local v0       #builder:Landroid/renderscript/ProgramFragmentFixedFunction$Builder;
    invoke-virtual {v0, v6}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->setPointSpriteTexCoordinateReplacement(Z)Landroid/renderscript/ProgramFragmentFixedFunction$Builder;

    .line 159
    sget-object v3, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;->MODULATE:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;

    sget-object v4, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;->RGBA:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;

    invoke-virtual {v0, v3, v4, v5}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->setTexture(Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;I)Landroid/renderscript/ProgramFragmentFixedFunction$Builder;

    .line 161
    invoke-virtual {v0, v6}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->setVaryingColor(Z)Landroid/renderscript/ProgramFragmentFixedFunction$Builder;

    .line 162
    invoke-virtual {v0}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->create()Landroid/renderscript/ProgramFragmentFixedFunction;

    move-result-object v2

    .line 163
    .local v2, pfs:Landroid/renderscript/ProgramFragment;
    iget-object v3, p0, Lcom/android/wallpaper/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-static {v3}, Landroid/renderscript/Sampler;->WRAP_LINEAR(Landroid/renderscript/RenderScript;)Landroid/renderscript/Sampler;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Landroid/renderscript/ProgramFragment;->bindSampler(Landroid/renderscript/Sampler;I)V

    .line 164
    iget-object v3, p0, Lcom/android/wallpaper/galaxy/GalaxyRS;->mScript:Lcom/android/wallpaper/galaxy/ScriptC_galaxy;

    invoke-virtual {v3, v2}, Lcom/android/wallpaper/galaxy/ScriptC_galaxy;->set_gPFStars(Landroid/renderscript/ProgramFragment;)V

    .line 165
    return-void
.end method

.method private createProgramFragmentStore()V
    .registers 4

    .prologue
    .line 168
    new-instance v0, Landroid/renderscript/ProgramStore$Builder;

    iget-object v1, p0, Lcom/android/wallpaper/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v0, v1}, Landroid/renderscript/ProgramStore$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 169
    .local v0, builder:Landroid/renderscript/ProgramStore$Builder;
    sget-object v1, Landroid/renderscript/ProgramStore$BlendSrcFunc;->ONE:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    sget-object v2, Landroid/renderscript/ProgramStore$BlendDstFunc;->ZERO:Landroid/renderscript/ProgramStore$BlendDstFunc;

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/ProgramStore$Builder;->setBlendFunc(Landroid/renderscript/ProgramStore$BlendSrcFunc;Landroid/renderscript/ProgramStore$BlendDstFunc;)Landroid/renderscript/ProgramStore$Builder;

    .line 170
    iget-object v1, p0, Lcom/android/wallpaper/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-virtual {v0}, Landroid/renderscript/ProgramStore$Builder;->create()Landroid/renderscript/ProgramStore;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/renderscript/RenderScriptGL;->bindProgramStore(Landroid/renderscript/ProgramStore;)V

    .line 172
    sget-object v1, Landroid/renderscript/ProgramStore$BlendSrcFunc;->SRC_ALPHA:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    sget-object v2, Landroid/renderscript/ProgramStore$BlendDstFunc;->ONE:Landroid/renderscript/ProgramStore$BlendDstFunc;

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/ProgramStore$Builder;->setBlendFunc(Landroid/renderscript/ProgramStore$BlendSrcFunc;Landroid/renderscript/ProgramStore$BlendDstFunc;)Landroid/renderscript/ProgramStore$Builder;

    .line 173
    iget-object v1, p0, Lcom/android/wallpaper/galaxy/GalaxyRS;->mScript:Lcom/android/wallpaper/galaxy/ScriptC_galaxy;

    invoke-virtual {v0}, Landroid/renderscript/ProgramStore$Builder;->create()Landroid/renderscript/ProgramStore;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/wallpaper/galaxy/ScriptC_galaxy;->set_gPSLights(Landroid/renderscript/ProgramStore;)V

    .line 174
    return-void
.end method

.method private createProgramRaster()V
    .registers 4

    .prologue
    .line 224
    new-instance v0, Landroid/renderscript/ProgramRaster$Builder;

    iget-object v2, p0, Lcom/android/wallpaper/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v0, v2}, Landroid/renderscript/ProgramRaster$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 225
    .local v0, b:Landroid/renderscript/ProgramRaster$Builder;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/renderscript/ProgramRaster$Builder;->setPointSpriteEnabled(Z)Landroid/renderscript/ProgramRaster$Builder;

    .line 226
    invoke-virtual {v0}, Landroid/renderscript/ProgramRaster$Builder;->create()Landroid/renderscript/ProgramRaster;

    move-result-object v1

    .line 227
    .local v1, pr:Landroid/renderscript/ProgramRaster;
    iget-object v2, p0, Lcom/android/wallpaper/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-virtual {v2, v1}, Landroid/renderscript/RenderScriptGL;->bindProgramRaster(Landroid/renderscript/ProgramRaster;)V

    .line 228
    return-void
.end method

.method private createProgramVertex()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    .line 177
    new-instance v6, Landroid/renderscript/ProgramVertexFixedFunction$Constants;

    iget-object v7, p0, Lcom/android/wallpaper/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v6, v7}, Landroid/renderscript/ProgramVertexFixedFunction$Constants;-><init>(Landroid/renderscript/RenderScript;)V

    iput-object v6, p0, Lcom/android/wallpaper/galaxy/GalaxyRS;->mPvOrthoAlloc:Landroid/renderscript/ProgramVertexFixedFunction$Constants;

    .line 179
    new-instance v0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;

    iget-object v6, p0, Lcom/android/wallpaper/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v0, v6}, Landroid/renderscript/ProgramVertexFixedFunction$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 180
    .local v0, builder:Landroid/renderscript/ProgramVertexFixedFunction$Builder;
    invoke-virtual {v0}, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->create()Landroid/renderscript/ProgramVertexFixedFunction;

    move-result-object v1

    .local v1, pvbo:Landroid/renderscript/ProgramVertex;
    move-object v6, v1

    .line 181
    check-cast v6, Landroid/renderscript/ProgramVertexFixedFunction;

    iget-object v7, p0, Lcom/android/wallpaper/galaxy/GalaxyRS;->mPvOrthoAlloc:Landroid/renderscript/ProgramVertexFixedFunction$Constants;

    invoke-virtual {v6, v7}, Landroid/renderscript/ProgramVertexFixedFunction;->bindConstants(Landroid/renderscript/ProgramVertexFixedFunction$Constants;)V

    .line 182
    iget-object v6, p0, Lcom/android/wallpaper/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-virtual {v6, v1}, Landroid/renderscript/RenderScriptGL;->bindProgramVertex(Landroid/renderscript/ProgramVertex;)V

    .line 184
    new-instance v6, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;

    iget-object v7, p0, Lcom/android/wallpaper/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    const/4 v8, 0x1

    invoke-direct {v6, v7, v8}, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;-><init>(Landroid/renderscript/RenderScript;I)V

    iput-object v6, p0, Lcom/android/wallpaper/galaxy/GalaxyRS;->mPvStarAlloc:Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;

    .line 185
    iget-object v6, p0, Lcom/android/wallpaper/galaxy/GalaxyRS;->mScript:Lcom/android/wallpaper/galaxy/ScriptC_galaxy;

    iget-object v7, p0, Lcom/android/wallpaper/galaxy/GalaxyRS;->mPvStarAlloc:Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;

    invoke-virtual {v6, v7}, Lcom/android/wallpaper/galaxy/ScriptC_galaxy;->bind_vpConstants(Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;)V

    .line 186
    new-instance v6, Landroid/renderscript/ProgramVertexFixedFunction$Constants;

    iget-object v7, p0, Lcom/android/wallpaper/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v6, v7}, Landroid/renderscript/ProgramVertexFixedFunction$Constants;-><init>(Landroid/renderscript/RenderScript;)V

    iput-object v6, p0, Lcom/android/wallpaper/galaxy/GalaxyRS;->mPvProjectionAlloc:Landroid/renderscript/ProgramVertexFixedFunction$Constants;

    .line 187
    invoke-direct {p0}, Lcom/android/wallpaper/galaxy/GalaxyRS;->updateProjectionMatrices()V

    .line 189
    new-instance v0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;

    .end local v0           #builder:Landroid/renderscript/ProgramVertexFixedFunction$Builder;
    iget-object v6, p0, Lcom/android/wallpaper/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v0, v6}, Landroid/renderscript/ProgramVertexFixedFunction$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 190
    .restart local v0       #builder:Landroid/renderscript/ProgramVertexFixedFunction$Builder;
    invoke-virtual {v0}, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->create()Landroid/renderscript/ProgramVertexFixedFunction;

    move-result-object v2

    .local v2, pvbp:Landroid/renderscript/ProgramVertex;
    move-object v6, v2

    .line 191
    check-cast v6, Landroid/renderscript/ProgramVertexFixedFunction;

    iget-object v7, p0, Lcom/android/wallpaper/galaxy/GalaxyRS;->mPvProjectionAlloc:Landroid/renderscript/ProgramVertexFixedFunction$Constants;

    invoke-virtual {v6, v7}, Landroid/renderscript/ProgramVertexFixedFunction;->bindConstants(Landroid/renderscript/ProgramVertexFixedFunction$Constants;)V

    .line 192
    iget-object v6, p0, Lcom/android/wallpaper/galaxy/GalaxyRS;->mScript:Lcom/android/wallpaper/galaxy/ScriptC_galaxy;

    invoke-virtual {v6, v2}, Lcom/android/wallpaper/galaxy/ScriptC_galaxy;->set_gPVBkProj(Landroid/renderscript/ProgramVertex;)V

    .line 194
    new-instance v4, Landroid/renderscript/ProgramVertex$Builder;

    iget-object v6, p0, Lcom/android/wallpaper/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v4, v6}, Landroid/renderscript/ProgramVertex$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 195
    .local v4, sb:Landroid/renderscript/ProgramVertex$Builder;
    const-string v5, "varying vec4 varColor;\nvarying vec2 varTex0;\nvoid main() {\n  float dist = ATTRIB_position.y;\n  float angle = ATTRIB_position.x;\n  float x = dist * sin(angle);\n  float y = dist * cos(angle) * 0.892;\n  float p = dist * 5.5;\n  float s = cos(p);\n  float t = sin(p);\n  vec4 pos;\n  pos.x = t * x + s * y;\n  pos.y = s * x - t * y;\n  pos.z = ATTRIB_position.z;\n  pos.w = 1.0;\n  gl_Position = UNI_MVP * pos;\n  gl_PointSize = ATTRIB_color.a * 10.0;\n  varColor.rgb = ATTRIB_color.rgb;\n  varColor.a = 1.0;\n}\n"

    .line 215
    .local v5, t:Ljava/lang/String;
    invoke-virtual {v4, v5}, Landroid/renderscript/ProgramVertex$Builder;->setShader(Ljava/lang/String;)Landroid/renderscript/Program$BaseProgramBuilder;

    .line 216
    iget-object v6, p0, Lcom/android/wallpaper/galaxy/GalaxyRS;->mParticlesMesh:Landroid/renderscript/Mesh;

    invoke-virtual {v6, v9}, Landroid/renderscript/Mesh;->getVertexAllocation(I)Landroid/renderscript/Allocation;

    move-result-object v6

    invoke-virtual {v6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v6

    invoke-virtual {v6}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/renderscript/ProgramVertex$Builder;->addInput(Landroid/renderscript/Element;)Landroid/renderscript/ProgramVertex$Builder;

    .line 217
    iget-object v6, p0, Lcom/android/wallpaper/galaxy/GalaxyRS;->mPvStarAlloc:Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;

    invoke-virtual {v6}, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;->getType()Landroid/renderscript/Type;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/renderscript/ProgramVertex$Builder;->addConstant(Landroid/renderscript/Type;)Landroid/renderscript/Program$BaseProgramBuilder;

    .line 218
    invoke-virtual {v4}, Landroid/renderscript/ProgramVertex$Builder;->create()Landroid/renderscript/ProgramVertex;

    move-result-object v3

    .line 219
    .local v3, pvs:Landroid/renderscript/ProgramVertex;
    iget-object v6, p0, Lcom/android/wallpaper/galaxy/GalaxyRS;->mPvStarAlloc:Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;

    invoke-virtual {v6}, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v6

    invoke-virtual {v3, v6, v9}, Landroid/renderscript/ProgramVertex;->bindConstants(Landroid/renderscript/Allocation;I)V

    .line 220
    iget-object v6, p0, Lcom/android/wallpaper/galaxy/GalaxyRS;->mScript:Lcom/android/wallpaper/galaxy/ScriptC_galaxy;

    invoke-virtual {v6, v3}, Lcom/android/wallpaper/galaxy/ScriptC_galaxy;->set_gPVStars(Landroid/renderscript/ProgramVertex;)V

    .line 221
    return-void
.end method

.method private getProjectionNormalized(II)Landroid/renderscript/Matrix4f;
    .registers 14
    .parameter "w"
    .parameter "h"

    .prologue
    .line 84
    new-instance v0, Landroid/renderscript/Matrix4f;

    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 85
    .local v0, m1:Landroid/renderscript/Matrix4f;
    new-instance v10, Landroid/renderscript/Matrix4f;

    invoke-direct {v10}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 87
    .local v10, m2:Landroid/renderscript/Matrix4f;
    if-le p1, p2, :cond_3f

    .line 88
    int-to-float v1, p1

    int-to-float v3, p2

    div-float v2, v1, v3

    .line 89
    .local v2, aspect:F
    neg-float v1, v2

    const/high16 v3, -0x4080

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    const/high16 v6, 0x42c8

    invoke-virtual/range {v0 .. v6}, Landroid/renderscript/Matrix4f;->loadFrustum(FFFFFF)V

    .line 95
    :goto_1c
    const/high16 v1, 0x4334

    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    const/4 v5, 0x0

    invoke-virtual {v10, v1, v3, v4, v5}, Landroid/renderscript/Matrix4f;->loadRotate(FFFF)V

    .line 96
    invoke-virtual {v0, v0, v10}, Landroid/renderscript/Matrix4f;->loadMultiply(Landroid/renderscript/Matrix4f;Landroid/renderscript/Matrix4f;)V

    .line 98
    const/high16 v1, -0x4000

    const/high16 v3, 0x4000

    const/high16 v4, 0x3f80

    invoke-virtual {v10, v1, v3, v4}, Landroid/renderscript/Matrix4f;->loadScale(FFF)V

    .line 99
    invoke-virtual {v0, v0, v10}, Landroid/renderscript/Matrix4f;->loadMultiply(Landroid/renderscript/Matrix4f;Landroid/renderscript/Matrix4f;)V

    .line 101
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x4000

    invoke-virtual {v10, v1, v3, v4}, Landroid/renderscript/Matrix4f;->loadTranslate(FFF)V

    .line 102
    invoke-virtual {v0, v0, v10}, Landroid/renderscript/Matrix4f;->loadMultiply(Landroid/renderscript/Matrix4f;Landroid/renderscript/Matrix4f;)V

    .line 103
    return-object v0

    .line 91
    .end local v2           #aspect:F
    :cond_3f
    int-to-float v1, p2

    int-to-float v3, p1

    div-float v2, v1, v3

    .line 92
    .restart local v2       #aspect:F
    const/high16 v4, -0x4080

    const/high16 v5, 0x3f80

    neg-float v6, v2

    const/high16 v8, 0x3f80

    const/high16 v9, 0x42c8

    move-object v3, v0

    move v7, v2

    invoke-virtual/range {v3 .. v9}, Landroid/renderscript/Matrix4f;->loadFrustum(FFFFFF)V

    goto :goto_1c
.end method

.method private loadTexture(I)Landroid/renderscript/Allocation;
    .registers 5
    .parameter "id"

    .prologue
    .line 138
    iget-object v1, p0, Lcom/android/wallpaper/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    iget-object v2, p0, Lcom/android/wallpaper/RenderScriptScene;->mResources:Landroid/content/res/Resources;

    invoke-static {v1, v2, p1}, Landroid/renderscript/Allocation;->createFromBitmapResource(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)Landroid/renderscript/Allocation;

    move-result-object v0

    .line 139
    .local v0, allocation:Landroid/renderscript/Allocation;
    return-object v0
.end method

.method private loadTextureARGB(I)Landroid/renderscript/Allocation;
    .registers 6
    .parameter "id"

    .prologue
    .line 144
    iget-object v2, p0, Lcom/android/wallpaper/RenderScriptScene;->mResources:Landroid/content/res/Resources;

    iget-object v3, p0, Lcom/android/wallpaper/galaxy/GalaxyRS;->mOptionsARGB:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v2, p1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 145
    .local v1, b:Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/android/wallpaper/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-static {v2, v1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v0

    .line 146
    .local v0, allocation:Landroid/renderscript/Allocation;
    return-object v0
.end method

.method private loadTextures()V
    .registers 3

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/wallpaper/galaxy/GalaxyRS;->mScript:Lcom/android/wallpaper/galaxy/ScriptC_galaxy;

    const v1, 0x7f020013

    invoke-direct {p0, v1}, Lcom/android/wallpaper/galaxy/GalaxyRS;->loadTexture(I)Landroid/renderscript/Allocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/wallpaper/galaxy/ScriptC_galaxy;->set_gTSpace(Landroid/renderscript/Allocation;)V

    .line 133
    iget-object v0, p0, Lcom/android/wallpaper/galaxy/GalaxyRS;->mScript:Lcom/android/wallpaper/galaxy/ScriptC_galaxy;

    const v1, 0x7f02000a

    invoke-direct {p0, v1}, Lcom/android/wallpaper/galaxy/GalaxyRS;->loadTexture(I)Landroid/renderscript/Allocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/wallpaper/galaxy/ScriptC_galaxy;->set_gTLight1(Landroid/renderscript/Allocation;)V

    .line 134
    iget-object v0, p0, Lcom/android/wallpaper/galaxy/GalaxyRS;->mScript:Lcom/android/wallpaper/galaxy/ScriptC_galaxy;

    const/high16 v1, 0x7f02

    invoke-direct {p0, v1}, Lcom/android/wallpaper/galaxy/GalaxyRS;->loadTextureARGB(I)Landroid/renderscript/Allocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/wallpaper/galaxy/ScriptC_galaxy;->set_gTFlares(Landroid/renderscript/Allocation;)V

    .line 135
    return-void
.end method

.method private updateProjectionMatrices()V
    .registers 7

    .prologue
    .line 107
    new-instance v1, Landroid/renderscript/Matrix4f;

    invoke-direct {v1}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 108
    .local v1, proj:Landroid/renderscript/Matrix4f;
    iget v3, p0, Lcom/android/wallpaper/RenderScriptScene;->mWidth:I

    iget v4, p0, Lcom/android/wallpaper/RenderScriptScene;->mHeight:I

    invoke-virtual {v1, v3, v4}, Landroid/renderscript/Matrix4f;->loadOrthoWindow(II)V

    .line 109
    iget-object v3, p0, Lcom/android/wallpaper/galaxy/GalaxyRS;->mPvOrthoAlloc:Landroid/renderscript/ProgramVertexFixedFunction$Constants;

    invoke-virtual {v3, v1}, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->setProjection(Landroid/renderscript/Matrix4f;)V

    .line 111
    iget v3, p0, Lcom/android/wallpaper/RenderScriptScene;->mWidth:I

    iget v4, p0, Lcom/android/wallpaper/RenderScriptScene;->mHeight:I

    invoke-direct {p0, v3, v4}, Lcom/android/wallpaper/galaxy/GalaxyRS;->getProjectionNormalized(II)Landroid/renderscript/Matrix4f;

    move-result-object v2

    .line 112
    .local v2, projNorm:Landroid/renderscript/Matrix4f;
    new-instance v0, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts$Item;

    invoke-direct {v0}, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts$Item;-><init>()V

    .line 113
    .local v0, i:Lcom/android/wallpaper/galaxy/ScriptField_VpConsts$Item;
    iput-object v2, v0, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts$Item;->Proj:Landroid/renderscript/Matrix4f;

    .line 114
    iput-object v2, v0, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts$Item;->MVP:Landroid/renderscript/Matrix4f;

    .line 115
    iget-object v3, p0, Lcom/android/wallpaper/galaxy/GalaxyRS;->mPvStarAlloc:Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;->set(Lcom/android/wallpaper/galaxy/ScriptField_VpConsts$Item;IZ)V

    .line 116
    iget-object v3, p0, Lcom/android/wallpaper/galaxy/GalaxyRS;->mPvProjectionAlloc:Landroid/renderscript/ProgramVertexFixedFunction$Constants;

    invoke-virtual {v3, v2}, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->setProjection(Landroid/renderscript/Matrix4f;)V

    .line 117
    return-void
.end method


# virtual methods
.method protected createScript()Landroid/renderscript/ScriptC;
    .registers 5

    .prologue
    .line 51
    new-instance v0, Lcom/android/wallpaper/galaxy/ScriptC_galaxy;

    iget-object v1, p0, Lcom/android/wallpaper/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    iget-object v2, p0, Lcom/android/wallpaper/RenderScriptScene;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f040001

    invoke-direct {v0, v1, v2, v3}, Lcom/android/wallpaper/galaxy/ScriptC_galaxy;-><init>(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)V

    iput-object v0, p0, Lcom/android/wallpaper/galaxy/GalaxyRS;->mScript:Lcom/android/wallpaper/galaxy/ScriptC_galaxy;

    .line 52
    iget-object v1, p0, Lcom/android/wallpaper/galaxy/GalaxyRS;->mScript:Lcom/android/wallpaper/galaxy/ScriptC_galaxy;

    invoke-virtual {p0}, Lcom/android/wallpaper/galaxy/GalaxyRS;->isPreview()Z

    move-result v0

    if-eqz v0, :cond_49

    const/4 v0, 0x1

    :goto_17
    invoke-virtual {v1, v0}, Lcom/android/wallpaper/galaxy/ScriptC_galaxy;->set_gIsPreview(I)V

    .line 53
    invoke-virtual {p0}, Lcom/android/wallpaper/galaxy/GalaxyRS;->isPreview()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 54
    iget-object v0, p0, Lcom/android/wallpaper/galaxy/GalaxyRS;->mScript:Lcom/android/wallpaper/galaxy/ScriptC_galaxy;

    const/high16 v1, 0x3f00

    invoke-virtual {v0, v1}, Lcom/android/wallpaper/galaxy/ScriptC_galaxy;->set_gXOffset(F)V

    .line 58
    :cond_27
    invoke-direct {p0}, Lcom/android/wallpaper/galaxy/GalaxyRS;->createParticlesMesh()V

    .line 59
    invoke-direct {p0}, Lcom/android/wallpaper/galaxy/GalaxyRS;->createProgramVertex()V

    .line 60
    invoke-direct {p0}, Lcom/android/wallpaper/galaxy/GalaxyRS;->createProgramRaster()V

    .line 61
    invoke-direct {p0}, Lcom/android/wallpaper/galaxy/GalaxyRS;->createProgramFragmentStore()V

    .line 62
    invoke-direct {p0}, Lcom/android/wallpaper/galaxy/GalaxyRS;->createProgramFragment()V

    .line 63
    invoke-direct {p0}, Lcom/android/wallpaper/galaxy/GalaxyRS;->loadTextures()V

    .line 65
    iget-object v0, p0, Lcom/android/wallpaper/galaxy/GalaxyRS;->mScript:Lcom/android/wallpaper/galaxy/ScriptC_galaxy;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/wallpaper/galaxy/ScriptC_galaxy;->setTimeZone(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/android/wallpaper/galaxy/GalaxyRS;->mScript:Lcom/android/wallpaper/galaxy/ScriptC_galaxy;

    return-object v0

    .line 52
    :cond_49
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public resize(II)V
    .registers 3
    .parameter "width"
    .parameter "height"

    .prologue
    .line 126
    invoke-super {p0, p1, p2}, Lcom/android/wallpaper/RenderScriptScene;->resize(II)V

    .line 128
    invoke-direct {p0}, Lcom/android/wallpaper/galaxy/GalaxyRS;->updateProjectionMatrices()V

    .line 129
    return-void
.end method

.method public setOffset(FFII)V
    .registers 6
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "xPixels"
    .parameter "yPixels"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/wallpaper/galaxy/GalaxyRS;->mScript:Lcom/android/wallpaper/galaxy/ScriptC_galaxy;

    invoke-virtual {v0, p1}, Lcom/android/wallpaper/galaxy/ScriptC_galaxy;->set_gXOffset(F)V

    .line 122
    return-void
.end method
