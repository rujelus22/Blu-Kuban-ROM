.class public final Lcom/android/ex/carousel/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Landroid/renderscript/Allocation$MipmapControl;

.field private static final w:Ljava/lang/String;

.field private static final x:Ljava/lang/String;

.field private static final y:Ljava/lang/String;

.field private static final z:Ljava/lang/String;


# instance fields
.field private A:Landroid/renderscript/RenderScript$RSMessageHandler;

.field private b:Landroid/renderscript/RenderScriptGL;

.field private c:Landroid/content/res/Resources;

.field private d:Lcom/android/ex/carousel/g;

.field private e:Lcom/android/ex/carousel/h;

.field private f:Lcom/android/ex/carousel/j;

.field private g:Lcom/android/ex/carousel/l;

.field private h:Landroid/renderscript/ProgramFragment;

.field private i:Landroid/renderscript/ProgramFragment;

.field private j:Landroid/renderscript/ProgramFragment;

.field private k:Landroid/renderscript/ProgramFragment;

.field private l:Landroid/renderscript/ProgramVertex;

.field private m:Landroid/renderscript/ProgramRaster;

.field private n:[Landroid/renderscript/Allocation;

.field private o:Z

.field private p:I

.field private q:I

.field private r:I

.field private s:Lcom/android/ex/carousel/d;

.field private t:[F

.field private u:[F

.field private v:[F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 63
    sget-object v0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    sput-object v0, Lcom/android/ex/carousel/b;->a:Landroid/renderscript/Allocation$MipmapControl;

    .line 89
    new-instance v0, Ljava/lang/String;

    const-string v1, "varying vec2 varTex0;void main() {vec2 t0 = varTex0.xy;vec4 col = texture2D(UNI_Tex0, t0);gl_FragColor = col; }"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/ex/carousel/b;->w:Ljava/lang/String;

    .line 97
    new-instance v0, Ljava/lang/String;

    const-string v1, "varying vec2 varTex0;void main() {vec2 t0 = varTex0.xy;vec4 col = texture2D(UNI_Tex0, t0);gl_FragColor = col * UNI_overallAlpha; }"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/ex/carousel/b;->x:Ljava/lang/String;

    .line 105
    new-instance v0, Ljava/lang/String;

    const-string v1, "varying vec2 varTex0;void main() {vec2 t0 = varTex0.xy;vec4 col = texture2D(UNI_Tex0, t0);vec4 col2 = texture2D(UNI_Tex1, t0);gl_FragColor = mix(col, col2, UNI_fadeAmount);}"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/ex/carousel/b;->y:Ljava/lang/String;

    .line 113
    new-instance v0, Ljava/lang/String;

    const-string v1, "varying vec2 varTex0;void main() {vec2 t0 = varTex0.xy;vec4 col = texture2D(UNI_Tex0, t0);vec4 col2 = texture2D(UNI_Tex1, t0);gl_FragColor = mix(col, col2, UNI_fadeAmount) * UNI_overallAlpha;}"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/ex/carousel/b;->z:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/renderscript/RenderScriptGL;Landroid/content/res/Resources;I)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-array v0, v1, [F

    fill-array-data v0, :array_1cc

    iput-object v0, p0, Lcom/android/ex/carousel/b;->t:[F

    .line 86
    new-array v0, v1, [F

    fill-array-data v0, :array_1d6

    iput-object v0, p0, Lcom/android/ex/carousel/b;->u:[F

    .line 87
    new-array v0, v1, [F

    fill-array-data v0, :array_1e0

    iput-object v0, p0, Lcom/android/ex/carousel/b;->v:[F

    .line 200
    new-instance v0, Lcom/android/ex/carousel/c;

    invoke-direct {v0, p0}, Lcom/android/ex/carousel/c;-><init>(Lcom/android/ex/carousel/b;)V

    iput-object v0, p0, Lcom/android/ex/carousel/b;->A:Landroid/renderscript/RenderScript$RSMessageHandler;

    .line 264
    iput-object p1, p0, Lcom/android/ex/carousel/b;->b:Landroid/renderscript/RenderScriptGL;

    .line 265
    iput-object p2, p0, Lcom/android/ex/carousel/b;->c:Landroid/content/res/Resources;

    .line 268
    new-instance v0, Lcom/android/ex/carousel/g;

    iget-object v1, p0, Lcom/android/ex/carousel/b;->b:Landroid/renderscript/RenderScriptGL;

    iget-object v2, p0, Lcom/android/ex/carousel/b;->c:Landroid/content/res/Resources;

    invoke-direct {v0, v1, v2, p3}, Lcom/android/ex/carousel/g;-><init>(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)V

    iput-object v0, p0, Lcom/android/ex/carousel/b;->d:Lcom/android/ex/carousel/g;

    .line 269
    iget-object v0, p0, Lcom/android/ex/carousel/b;->b:Landroid/renderscript/RenderScriptGL;

    iget-object v1, p0, Lcom/android/ex/carousel/b;->A:Landroid/renderscript/RenderScript$RSMessageHandler;

    invoke-virtual {v0, v1}, Landroid/renderscript/RenderScriptGL;->setMessageHandler(Landroid/renderscript/RenderScript$RSMessageHandler;)V

    .line 270
    invoke-direct {p0}, Lcom/android/ex/carousel/b;->c()V

    .line 271
    new-instance v0, Landroid/renderscript/ProgramFragment$Builder;

    iget-object v1, p0, Lcom/android/ex/carousel/b;->b:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v0, v1}, Landroid/renderscript/ProgramFragment$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    sget-object v1, Lcom/android/ex/carousel/b;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramFragment$Builder;->setShader(Ljava/lang/String;)Landroid/renderscript/Program$BaseProgramBuilder;

    sget-object v1, Landroid/renderscript/Program$TextureType;->TEXTURE_2D:Landroid/renderscript/Program$TextureType;

    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramFragment$Builder;->addTexture(Landroid/renderscript/Program$TextureType;)Landroid/renderscript/Program$BaseProgramBuilder;

    invoke-virtual {v0}, Landroid/renderscript/ProgramFragment$Builder;->create()Landroid/renderscript/ProgramFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/carousel/b;->h:Landroid/renderscript/ProgramFragment;

    iget-object v0, p0, Lcom/android/ex/carousel/b;->h:Landroid/renderscript/ProgramFragment;

    iget-object v1, p0, Lcom/android/ex/carousel/b;->b:Landroid/renderscript/RenderScriptGL;

    invoke-static {v1}, Landroid/renderscript/Sampler;->CLAMP_LINEAR(Landroid/renderscript/RenderScript;)Landroid/renderscript/Sampler;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/renderscript/ProgramFragment;->bindSampler(Landroid/renderscript/Sampler;I)V

    new-instance v0, Lcom/android/ex/carousel/j;

    iget-object v1, p0, Lcom/android/ex/carousel/b;->b:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v0, v1, v4}, Lcom/android/ex/carousel/j;-><init>(Landroid/renderscript/RenderScript;I)V

    iput-object v0, p0, Lcom/android/ex/carousel/b;->f:Lcom/android/ex/carousel/j;

    iget-object v0, p0, Lcom/android/ex/carousel/b;->d:Lcom/android/ex/carousel/g;

    iget-object v1, p0, Lcom/android/ex/carousel/b;->f:Lcom/android/ex/carousel/j;

    invoke-virtual {v0, v1}, Lcom/android/ex/carousel/g;->a(Lcom/android/ex/carousel/j;)V

    new-instance v0, Landroid/renderscript/ProgramFragment$Builder;

    iget-object v1, p0, Lcom/android/ex/carousel/b;->b:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v0, v1}, Landroid/renderscript/ProgramFragment$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    sget-object v1, Lcom/android/ex/carousel/b;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramFragment$Builder;->setShader(Ljava/lang/String;)Landroid/renderscript/Program$BaseProgramBuilder;

    sget-object v1, Landroid/renderscript/Program$TextureType;->TEXTURE_2D:Landroid/renderscript/Program$TextureType;

    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramFragment$Builder;->addTexture(Landroid/renderscript/Program$TextureType;)Landroid/renderscript/Program$BaseProgramBuilder;

    iget-object v1, p0, Lcom/android/ex/carousel/b;->f:Lcom/android/ex/carousel/j;

    invoke-virtual {v1}, Lcom/android/ex/carousel/j;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramFragment$Builder;->addConstant(Landroid/renderscript/Type;)Landroid/renderscript/Program$BaseProgramBuilder;

    invoke-virtual {v0}, Landroid/renderscript/ProgramFragment$Builder;->create()Landroid/renderscript/ProgramFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/carousel/b;->i:Landroid/renderscript/ProgramFragment;

    iget-object v0, p0, Lcom/android/ex/carousel/b;->i:Landroid/renderscript/ProgramFragment;

    iget-object v1, p0, Lcom/android/ex/carousel/b;->f:Lcom/android/ex/carousel/j;

    invoke-virtual {v1}, Lcom/android/ex/carousel/j;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/renderscript/ProgramFragment;->bindConstants(Landroid/renderscript/Allocation;I)V

    iget-object v0, p0, Lcom/android/ex/carousel/b;->i:Landroid/renderscript/ProgramFragment;

    iget-object v1, p0, Lcom/android/ex/carousel/b;->b:Landroid/renderscript/RenderScriptGL;

    invoke-static {v1}, Landroid/renderscript/Sampler;->CLAMP_LINEAR(Landroid/renderscript/RenderScript;)Landroid/renderscript/Sampler;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/renderscript/ProgramFragment;->bindSampler(Landroid/renderscript/Sampler;I)V

    new-instance v0, Landroid/renderscript/ProgramFragment$Builder;

    iget-object v1, p0, Lcom/android/ex/carousel/b;->b:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v0, v1}, Landroid/renderscript/ProgramFragment$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    sget-object v1, Lcom/android/ex/carousel/b;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramFragment$Builder;->setShader(Ljava/lang/String;)Landroid/renderscript/Program$BaseProgramBuilder;

    sget-object v1, Landroid/renderscript/Program$TextureType;->TEXTURE_2D:Landroid/renderscript/Program$TextureType;

    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramFragment$Builder;->addTexture(Landroid/renderscript/Program$TextureType;)Landroid/renderscript/Program$BaseProgramBuilder;

    sget-object v1, Landroid/renderscript/Program$TextureType;->TEXTURE_2D:Landroid/renderscript/Program$TextureType;

    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramFragment$Builder;->addTexture(Landroid/renderscript/Program$TextureType;)Landroid/renderscript/Program$BaseProgramBuilder;

    iget-object v1, p0, Lcom/android/ex/carousel/b;->f:Lcom/android/ex/carousel/j;

    invoke-virtual {v1}, Lcom/android/ex/carousel/j;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramFragment$Builder;->addConstant(Landroid/renderscript/Type;)Landroid/renderscript/Program$BaseProgramBuilder;

    invoke-virtual {v0}, Landroid/renderscript/ProgramFragment$Builder;->create()Landroid/renderscript/ProgramFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/carousel/b;->j:Landroid/renderscript/ProgramFragment;

    iget-object v0, p0, Lcom/android/ex/carousel/b;->j:Landroid/renderscript/ProgramFragment;

    iget-object v1, p0, Lcom/android/ex/carousel/b;->f:Lcom/android/ex/carousel/j;

    invoke-virtual {v1}, Lcom/android/ex/carousel/j;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/renderscript/ProgramFragment;->bindConstants(Landroid/renderscript/Allocation;I)V

    iget-object v0, p0, Lcom/android/ex/carousel/b;->j:Landroid/renderscript/ProgramFragment;

    iget-object v1, p0, Lcom/android/ex/carousel/b;->b:Landroid/renderscript/RenderScriptGL;

    invoke-static {v1}, Landroid/renderscript/Sampler;->CLAMP_LINEAR(Landroid/renderscript/RenderScript;)Landroid/renderscript/Sampler;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/renderscript/ProgramFragment;->bindSampler(Landroid/renderscript/Sampler;I)V

    iget-object v0, p0, Lcom/android/ex/carousel/b;->j:Landroid/renderscript/ProgramFragment;

    iget-object v1, p0, Lcom/android/ex/carousel/b;->b:Landroid/renderscript/RenderScriptGL;

    invoke-static {v1}, Landroid/renderscript/Sampler;->CLAMP_LINEAR(Landroid/renderscript/RenderScript;)Landroid/renderscript/Sampler;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/renderscript/ProgramFragment;->bindSampler(Landroid/renderscript/Sampler;I)V

    new-instance v0, Landroid/renderscript/ProgramFragment$Builder;

    iget-object v1, p0, Lcom/android/ex/carousel/b;->b:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v0, v1}, Landroid/renderscript/ProgramFragment$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    sget-object v1, Lcom/android/ex/carousel/b;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramFragment$Builder;->setShader(Ljava/lang/String;)Landroid/renderscript/Program$BaseProgramBuilder;

    sget-object v1, Landroid/renderscript/Program$TextureType;->TEXTURE_2D:Landroid/renderscript/Program$TextureType;

    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramFragment$Builder;->addTexture(Landroid/renderscript/Program$TextureType;)Landroid/renderscript/Program$BaseProgramBuilder;

    sget-object v1, Landroid/renderscript/Program$TextureType;->TEXTURE_2D:Landroid/renderscript/Program$TextureType;

    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramFragment$Builder;->addTexture(Landroid/renderscript/Program$TextureType;)Landroid/renderscript/Program$BaseProgramBuilder;

    iget-object v1, p0, Lcom/android/ex/carousel/b;->f:Lcom/android/ex/carousel/j;

    invoke-virtual {v1}, Lcom/android/ex/carousel/j;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramFragment$Builder;->addConstant(Landroid/renderscript/Type;)Landroid/renderscript/Program$BaseProgramBuilder;

    invoke-virtual {v0}, Landroid/renderscript/ProgramFragment$Builder;->create()Landroid/renderscript/ProgramFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/carousel/b;->k:Landroid/renderscript/ProgramFragment;

    iget-object v0, p0, Lcom/android/ex/carousel/b;->k:Landroid/renderscript/ProgramFragment;

    iget-object v1, p0, Lcom/android/ex/carousel/b;->f:Lcom/android/ex/carousel/j;

    invoke-virtual {v1}, Lcom/android/ex/carousel/j;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/renderscript/ProgramFragment;->bindConstants(Landroid/renderscript/Allocation;I)V

    iget-object v0, p0, Lcom/android/ex/carousel/b;->k:Landroid/renderscript/ProgramFragment;

    iget-object v1, p0, Lcom/android/ex/carousel/b;->b:Landroid/renderscript/RenderScriptGL;

    invoke-static {v1}, Landroid/renderscript/Sampler;->CLAMP_LINEAR(Landroid/renderscript/RenderScript;)Landroid/renderscript/Sampler;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/renderscript/ProgramFragment;->bindSampler(Landroid/renderscript/Sampler;I)V

    iget-object v0, p0, Lcom/android/ex/carousel/b;->k:Landroid/renderscript/ProgramFragment;

    iget-object v1, p0, Lcom/android/ex/carousel/b;->b:Landroid/renderscript/RenderScriptGL;

    invoke-static {v1}, Landroid/renderscript/Sampler;->CLAMP_LINEAR(Landroid/renderscript/RenderScript;)Landroid/renderscript/Sampler;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/renderscript/ProgramFragment;->bindSampler(Landroid/renderscript/Sampler;I)V

    iget-object v0, p0, Lcom/android/ex/carousel/b;->d:Lcom/android/ex/carousel/g;

    iget-object v1, p0, Lcom/android/ex/carousel/b;->b:Landroid/renderscript/RenderScriptGL;

    invoke-static {v1}, Landroid/renderscript/Sampler;->CLAMP_LINEAR(Landroid/renderscript/RenderScript;)Landroid/renderscript/Sampler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ex/carousel/g;->a(Landroid/renderscript/Sampler;)V

    iget-object v0, p0, Lcom/android/ex/carousel/b;->d:Lcom/android/ex/carousel/g;

    iget-object v1, p0, Lcom/android/ex/carousel/b;->h:Landroid/renderscript/ProgramFragment;

    invoke-virtual {v0, v1}, Lcom/android/ex/carousel/g;->a(Landroid/renderscript/ProgramFragment;)V

    iget-object v0, p0, Lcom/android/ex/carousel/b;->d:Lcom/android/ex/carousel/g;

    iget-object v1, p0, Lcom/android/ex/carousel/b;->i:Landroid/renderscript/ProgramFragment;

    invoke-virtual {v0, v1}, Lcom/android/ex/carousel/g;->b(Landroid/renderscript/ProgramFragment;)V

    iget-object v0, p0, Lcom/android/ex/carousel/b;->d:Lcom/android/ex/carousel/g;

    iget-object v1, p0, Lcom/android/ex/carousel/b;->j:Landroid/renderscript/ProgramFragment;

    invoke-virtual {v0, v1}, Lcom/android/ex/carousel/g;->c(Landroid/renderscript/ProgramFragment;)V

    iget-object v0, p0, Lcom/android/ex/carousel/b;->d:Lcom/android/ex/carousel/g;

    iget-object v1, p0, Lcom/android/ex/carousel/b;->k:Landroid/renderscript/ProgramFragment;

    invoke-virtual {v0, v1}, Lcom/android/ex/carousel/g;->d(Landroid/renderscript/ProgramFragment;)V

    .line 272
    new-instance v0, Landroid/renderscript/ProgramRaster$Builder;

    iget-object v1, p0, Lcom/android/ex/carousel/b;->b:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v0, v1}, Landroid/renderscript/ProgramRaster$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    invoke-virtual {v0}, Landroid/renderscript/ProgramRaster$Builder;->create()Landroid/renderscript/ProgramRaster;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/carousel/b;->m:Landroid/renderscript/ProgramRaster;

    iget-object v0, p0, Lcom/android/ex/carousel/b;->d:Lcom/android/ex/carousel/g;

    iget-object v1, p0, Lcom/android/ex/carousel/b;->m:Landroid/renderscript/ProgramRaster;

    invoke-virtual {v0, v1}, Lcom/android/ex/carousel/g;->a(Landroid/renderscript/ProgramRaster;)V

    .line 273
    new-instance v0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;

    iget-object v1, p0, Lcom/android/ex/carousel/b;->b:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v0, v1}, Landroid/renderscript/ProgramVertexFixedFunction$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    invoke-virtual {v0}, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->create()Landroid/renderscript/ProgramVertexFixedFunction;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/carousel/b;->l:Landroid/renderscript/ProgramVertex;

    new-instance v1, Landroid/renderscript/ProgramVertexFixedFunction$Constants;

    iget-object v0, p0, Lcom/android/ex/carousel/b;->b:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v1, v0}, Landroid/renderscript/ProgramVertexFixedFunction$Constants;-><init>(Landroid/renderscript/RenderScript;)V

    iget-object v0, p0, Lcom/android/ex/carousel/b;->l:Landroid/renderscript/ProgramVertex;

    check-cast v0, Landroid/renderscript/ProgramVertexFixedFunction;

    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramVertexFixedFunction;->bindConstants(Landroid/renderscript/ProgramVertexFixedFunction$Constants;)V

    new-instance v0, Landroid/renderscript/Matrix4f;

    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    invoke-virtual {v0, v4, v4}, Landroid/renderscript/Matrix4f;->loadProjectionNormalized(II)V

    invoke-virtual {v1, v0}, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->setProjection(Landroid/renderscript/Matrix4f;)V

    iget-object v0, p0, Lcom/android/ex/carousel/b;->d:Lcom/android/ex/carousel/g;

    iget-object v1, p0, Lcom/android/ex/carousel/b;->l:Landroid/renderscript/ProgramVertex;

    invoke-virtual {v0, v1}, Lcom/android/ex/carousel/g;->a(Landroid/renderscript/ProgramVertex;)V

    .line 274
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/b;->i(I)V

    .line 275
    invoke-virtual {p0, v4}, Lcom/android/ex/carousel/b;->d(I)V

    .line 276
    invoke-virtual {p0, v4}, Lcom/android/ex/carousel/b;->f(I)V

    .line 277
    invoke-virtual {p0, v3}, Lcom/android/ex/carousel/b;->c(I)V

    .line 278
    invoke-virtual {p0, v5}, Lcom/android/ex/carousel/b;->h(F)V

    .line 279
    invoke-virtual {p0, v5}, Lcom/android/ex/carousel/b;->i(F)V

    .line 280
    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/b;->a(F)V

    .line 281
    iget-object v0, p0, Lcom/android/ex/carousel/b;->t:[F

    iget-object v1, p0, Lcom/android/ex/carousel/b;->u:[F

    iget-object v2, p0, Lcom/android/ex/carousel/b;->v:[F

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/ex/carousel/b;->a([F[F[F)V

    .line 282
    const/high16 v0, 0x41a0

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/b;->a(F)V

    .line 284
    return-void

    .line 85
    :array_1cc
    .array-data 0x4
        0x0t 0x0t 0x0t 0x40t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 86
    :array_1d6
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 87
    :array_1e0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private a(ILandroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;)Landroid/renderscript/Allocation;
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 659
    iget v0, p0, Lcom/android/ex/carousel/b;->p:I

    iget v2, p0, Lcom/android/ex/carousel/b;->r:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/android/ex/carousel/b;->q:I

    mul-int/2addr v2, v0

    .line 660
    iget-object v0, p0, Lcom/android/ex/carousel/b;->n:[Landroid/renderscript/Allocation;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/ex/carousel/b;->n:[Landroid/renderscript/Allocation;

    array-length v0, v0

    if-eq v0, v2, :cond_2e

    .line 661
    :cond_12
    new-array v3, v2, [Landroid/renderscript/Allocation;

    .line 662
    iget-object v0, p0, Lcom/android/ex/carousel/b;->n:[Landroid/renderscript/Allocation;

    if-nez v0, :cond_28

    move v0, v1

    .line 663
    :goto_19
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-ge v1, v4, :cond_2c

    .line 664
    iget-object v4, p0, Lcom/android/ex/carousel/b;->n:[Landroid/renderscript/Allocation;

    aget-object v4, v4, v1

    aput-object v4, v3, v1

    .line 663
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 662
    :cond_28
    iget-object v0, p0, Lcom/android/ex/carousel/b;->n:[Landroid/renderscript/Allocation;

    array-length v0, v0

    goto :goto_19

    .line 666
    :cond_2c
    iput-object v3, p0, Lcom/android/ex/carousel/b;->n:[Landroid/renderscript/Allocation;

    .line 668
    :cond_2e
    iget-object v0, p0, Lcom/android/ex/carousel/b;->n:[Landroid/renderscript/Allocation;

    rem-int v1, p1, v2

    aget-object v0, v0, v1

    .line 669
    if-nez v0, :cond_41

    .line 670
    invoke-direct {p0, p2, p3}, Lcom/android/ex/carousel/b;->a(Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;)Landroid/renderscript/Allocation;

    move-result-object v0

    .line 671
    iget-object v1, p0, Lcom/android/ex/carousel/b;->n:[Landroid/renderscript/Allocation;

    rem-int v2, p1, v2

    aput-object v0, v1, v2

    .line 682
    :cond_40
    :goto_40
    return-object v0

    .line 672
    :cond_41
    if-eqz p2, :cond_40

    .line 673
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    move-result v3

    if-ne v1, v3, :cond_63

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getY()I

    move-result v3

    if-ne v1, v3, :cond_63

    .line 675
    invoke-virtual {v0, p2}, Landroid/renderscript/Allocation;->copyFrom(Landroid/graphics/Bitmap;)V

    goto :goto_40

    .line 677
    :cond_63
    const-string v0, "CarouselRS"

    const-string v1, "Warning, bitmap has different size. Taking slow path"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    invoke-direct {p0, p2, p3}, Lcom/android/ex/carousel/b;->a(Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;)Landroid/renderscript/Allocation;

    move-result-object v0

    .line 679
    iget-object v1, p0, Lcom/android/ex/carousel/b;->n:[Landroid/renderscript/Allocation;

    rem-int v2, p1, v2

    aput-object v0, v1, v2

    goto :goto_40
.end method

.method private a(Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;)Landroid/renderscript/Allocation;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 651
    if-nez p1, :cond_4

    const/4 v0, 0x0

    .line 654
    :goto_3
    return-object v0

    .line 652
    :cond_4
    iget-object v0, p0, Lcom/android/ex/carousel/b;->b:Landroid/renderscript/RenderScriptGL;

    const/4 v1, 0x2

    invoke-static {v0, p1, p2, v1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v0

    goto :goto_3
.end method

.method static synthetic a(Lcom/android/ex/carousel/b;)Lcom/android/ex/carousel/d;
    .registers 2
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/ex/carousel/b;->s:Lcom/android/ex/carousel/d;

    return-object v0
.end method

.method private a(ILandroid/renderscript/ProgramStore;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 545
    iget-object v0, p0, Lcom/android/ex/carousel/b;->g:Lcom/android/ex/carousel/l;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/l;->a(I)Lcom/android/ex/carousel/m;

    move-result-object v0

    .line 546
    if-nez v0, :cond_d

    .line 547
    new-instance v0, Lcom/android/ex/carousel/m;

    invoke-direct {v0}, Lcom/android/ex/carousel/m;-><init>()V

    .line 549
    :cond_d
    iput-object p2, v0, Lcom/android/ex/carousel/m;->a:Landroid/renderscript/ProgramStore;

    .line 550
    iget-object v1, p0, Lcom/android/ex/carousel/b;->g:Lcom/android/ex/carousel/l;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p1, v2}, Lcom/android/ex/carousel/l;->a(Lcom/android/ex/carousel/m;IZ)V

    .line 551
    iget-object v0, p0, Lcom/android/ex/carousel/b;->d:Lcom/android/ex/carousel/g;

    invoke-virtual {v0, p1, p2}, Lcom/android/ex/carousel/g;->a(ILandroid/renderscript/ProgramStore;)V

    .line 552
    return-void
.end method

.method private a(ILcom/android/ex/carousel/i;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 708
    :try_start_0
    iget-object v0, p0, Lcom/android/ex/carousel/b;->e:Lcom/android/ex/carousel/h;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Lcom/android/ex/carousel/h;->a(Lcom/android/ex/carousel/i;IZ)V
    :try_end_6
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_6} :catch_7

    .line 716
    :goto_6
    return-void

    .line 714
    :catch_7
    move-exception v0

    const-string v0, "CarouselRS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCard("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): Texture "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " doesn\'t exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method private c()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 443
    invoke-direct {p0, v5}, Lcom/android/ex/carousel/b;->k(I)V

    .line 445
    iget-boolean v0, p0, Lcom/android/ex/carousel/b;->o:Z

    if-eqz v0, :cond_7c

    sget-object v0, Landroid/renderscript/ProgramStore$DepthFunc;->LESS:Landroid/renderscript/ProgramStore$DepthFunc;

    .line 450
    :goto_b
    iget-object v1, p0, Lcom/android/ex/carousel/b;->d:Lcom/android/ex/carousel/g;

    new-instance v2, Landroid/renderscript/ProgramStore$Builder;

    iget-object v3, p0, Lcom/android/ex/carousel/b;->b:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v2, v3}, Landroid/renderscript/ProgramStore$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    sget-object v3, Landroid/renderscript/ProgramStore$BlendSrcFunc;->ONE:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    sget-object v4, Landroid/renderscript/ProgramStore$BlendDstFunc;->ZERO:Landroid/renderscript/ProgramStore$BlendDstFunc;

    invoke-virtual {v2, v3, v4}, Landroid/renderscript/ProgramStore$Builder;->setBlendFunc(Landroid/renderscript/ProgramStore$BlendSrcFunc;Landroid/renderscript/ProgramStore$BlendDstFunc;)Landroid/renderscript/ProgramStore$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/renderscript/ProgramStore$Builder;->setDitherEnabled(Z)Landroid/renderscript/ProgramStore$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/renderscript/ProgramStore$Builder;->setDepthFunc(Landroid/renderscript/ProgramStore$DepthFunc;)Landroid/renderscript/ProgramStore$Builder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/ex/carousel/b;->o:Z

    invoke-virtual {v2, v3}, Landroid/renderscript/ProgramStore$Builder;->setDepthMaskEnabled(Z)Landroid/renderscript/ProgramStore$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/ProgramStore$Builder;->create()Landroid/renderscript/ProgramStore;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/ex/carousel/g;->a(Landroid/renderscript/ProgramStore;)V

    .line 458
    new-instance v1, Landroid/renderscript/ProgramStore$Builder;

    iget-object v2, p0, Lcom/android/ex/carousel/b;->b:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v1, v2}, Landroid/renderscript/ProgramStore$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    sget-object v2, Landroid/renderscript/ProgramStore$BlendSrcFunc;->ONE:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    sget-object v3, Landroid/renderscript/ProgramStore$BlendDstFunc;->ONE_MINUS_SRC_ALPHA:Landroid/renderscript/ProgramStore$BlendDstFunc;

    invoke-virtual {v1, v2, v3}, Landroid/renderscript/ProgramStore$Builder;->setBlendFunc(Landroid/renderscript/ProgramStore$BlendSrcFunc;Landroid/renderscript/ProgramStore$BlendDstFunc;)Landroid/renderscript/ProgramStore$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/renderscript/ProgramStore$Builder;->setDitherEnabled(Z)Landroid/renderscript/ProgramStore$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/renderscript/ProgramStore$Builder;->setDepthFunc(Landroid/renderscript/ProgramStore$DepthFunc;)Landroid/renderscript/ProgramStore$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/ex/carousel/b;->o:Z

    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramStore$Builder;->setDepthMaskEnabled(Z)Landroid/renderscript/ProgramStore$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/ProgramStore$Builder;->create()Landroid/renderscript/ProgramStore;

    move-result-object v0

    invoke-direct {p0, v6, v0}, Lcom/android/ex/carousel/b;->a(ILandroid/renderscript/ProgramStore;)V

    .line 467
    iget-object v0, p0, Lcom/android/ex/carousel/b;->d:Lcom/android/ex/carousel/g;

    new-instance v1, Landroid/renderscript/ProgramStore$Builder;

    iget-object v2, p0, Lcom/android/ex/carousel/b;->b:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v1, v2}, Landroid/renderscript/ProgramStore$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    sget-object v2, Landroid/renderscript/ProgramStore$BlendSrcFunc;->ONE:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    sget-object v3, Landroid/renderscript/ProgramStore$BlendDstFunc;->ONE_MINUS_SRC_ALPHA:Landroid/renderscript/ProgramStore$BlendDstFunc;

    invoke-virtual {v1, v2, v3}, Landroid/renderscript/ProgramStore$Builder;->setBlendFunc(Landroid/renderscript/ProgramStore$BlendSrcFunc;Landroid/renderscript/ProgramStore$BlendDstFunc;)Landroid/renderscript/ProgramStore$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/renderscript/ProgramStore$Builder;->setDitherEnabled(Z)Landroid/renderscript/ProgramStore$Builder;

    move-result-object v1

    sget-object v2, Landroid/renderscript/ProgramStore$DepthFunc;->ALWAYS:Landroid/renderscript/ProgramStore$DepthFunc;

    invoke-virtual {v1, v2}, Landroid/renderscript/ProgramStore$Builder;->setDepthFunc(Landroid/renderscript/ProgramStore$DepthFunc;)Landroid/renderscript/ProgramStore$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/renderscript/ProgramStore$Builder;->setDepthMaskEnabled(Z)Landroid/renderscript/ProgramStore$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/ProgramStore$Builder;->create()Landroid/renderscript/ProgramStore;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ex/carousel/g;->b(Landroid/renderscript/ProgramStore;)V

    .line 474
    return-void

    .line 445
    :cond_7c
    sget-object v0, Landroid/renderscript/ProgramStore$DepthFunc;->ALWAYS:Landroid/renderscript/ProgramStore$DepthFunc;

    goto :goto_b
.end method

.method private k(I)V
    .registers 4
    .parameter

    .prologue
    .line 533
    iget-object v0, p0, Lcom/android/ex/carousel/b;->g:Lcom/android/ex/carousel/l;

    .line 539
    new-instance v0, Lcom/android/ex/carousel/l;

    iget-object v1, p0, Lcom/android/ex/carousel/b;->b:Landroid/renderscript/RenderScriptGL;

    if-lez p1, :cond_15

    :goto_8
    invoke-direct {v0, v1, p1}, Lcom/android/ex/carousel/l;-><init>(Landroid/renderscript/RenderScript;I)V

    iput-object v0, p0, Lcom/android/ex/carousel/b;->g:Lcom/android/ex/carousel/l;

    .line 540
    iget-object v0, p0, Lcom/android/ex/carousel/b;->d:Lcom/android/ex/carousel/g;

    iget-object v1, p0, Lcom/android/ex/carousel/b;->g:Lcom/android/ex/carousel/l;

    invoke-virtual {v0, v1}, Lcom/android/ex/carousel/g;->a(Lcom/android/ex/carousel/l;)V

    .line 542
    return-void

    .line 539
    :cond_15
    const/4 p1, 0x1

    goto :goto_8
.end method

.method private l(I)Lcom/android/ex/carousel/i;
    .registers 3
    .parameter

    .prologue
    .line 688
    :try_start_0
    iget-object v0, p0, Lcom/android/ex/carousel/b;->e:Lcom/android/ex/carousel/h;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/h;->a(I)Lcom/android/ex/carousel/i;
    :try_end_5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    .line 694
    :goto_6
    return-object v0

    .line 692
    :catch_7
    move-exception v0

    const/4 v0, 0x0

    goto :goto_6
.end method

.method private m(I)Lcom/android/ex/carousel/i;
    .registers 3
    .parameter

    .prologue
    .line 698
    invoke-direct {p0, p1}, Lcom/android/ex/carousel/b;->l(I)Lcom/android/ex/carousel/i;

    move-result-object v0

    .line 699
    if-nez v0, :cond_b

    .line 701
    new-instance v0, Lcom/android/ex/carousel/i;

    invoke-direct {v0}, Lcom/android/ex/carousel/i;-><init>()V

    .line 703
    :cond_b
    return-object v0
.end method


# virtual methods
.method public final a()V
    .registers 3

    .prologue
    .line 882
    iget-object v0, p0, Lcom/android/ex/carousel/b;->b:Landroid/renderscript/RenderScriptGL;

    iget-object v1, p0, Lcom/android/ex/carousel/b;->d:Lcom/android/ex/carousel/g;

    invoke-virtual {v0, v1}, Landroid/renderscript/RenderScriptGL;->bindRootScript(Landroid/renderscript/Script;)V

    .line 883
    return-void
.end method

.method public final a(F)V
    .registers 3
    .parameter

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/ex/carousel/b;->d:Lcom/android/ex/carousel/g;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/g;->i(F)V

    .line 297
    return-void
.end method

.method public final a(FFJ)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 890
    iget-object v0, p0, Lcom/android/ex/carousel/b;->d:Lcom/android/ex/carousel/g;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/ex/carousel/g;->c(FFJ)V

    .line 891
    return-void
.end method

.method public final a(I)V
    .registers 3
    .parameter

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/ex/carousel/b;->d:Lcom/android/ex/carousel/g;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/g;->i(I)V

    .line 321
    return-void
.end method

.method final a(IFFFFLandroid/graphics/Bitmap;)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 739
    if-gez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Index cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 741
    :cond_a
    monitor-enter p0

    .line 742
    :try_start_b
    invoke-direct {p0, p1}, Lcom/android/ex/carousel/b;->m(I)Lcom/android/ex/carousel/i;

    move-result-object v1

    .line 743
    if-eqz p6, :cond_30

    .line 746
    sget-object v0, Lcom/android/ex/carousel/b;->a:Landroid/renderscript/Allocation$MipmapControl;

    invoke-direct {p0, p6, v0}, Lcom/android/ex/carousel/b;->a(Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;)Landroid/renderscript/Allocation;

    move-result-object v0

    iput-object v0, v1, Lcom/android/ex/carousel/i;->b:Landroid/renderscript/Allocation;

    .line 747
    invoke-virtual {p6}, Landroid/graphics/Bitmap;->getWidth()I

    .line 748
    invoke-virtual {p6}, Landroid/graphics/Bitmap;->getHeight()I

    .line 758
    :cond_1f
    :goto_1f
    invoke-direct {p0, p1, v1}, Lcom/android/ex/carousel/b;->a(ILcom/android/ex/carousel/i;)V

    .line 759
    iget-object v0, p0, Lcom/android/ex/carousel/b;->d:Lcom/android/ex/carousel/g;

    iget-object v6, v1, Lcom/android/ex/carousel/i;->b:Landroid/renderscript/Allocation;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/ex/carousel/g;->a(IFFFFLandroid/renderscript/Allocation;)V

    .line 760
    monitor-exit p0

    return-void

    .line 750
    :cond_30
    iget-object v0, v1, Lcom/android/ex/carousel/i;->b:Landroid/renderscript/Allocation;

    if-eqz v0, :cond_1f

    .line 754
    iget-object v0, v1, Lcom/android/ex/carousel/i;->b:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    .line 755
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/android/ex/carousel/i;->b:Landroid/renderscript/Allocation;
    :try_end_3c
    .catchall {:try_start_b .. :try_end_3c} :catchall_3d

    goto :goto_1f

    .line 760
    :catchall_3d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(ILandroid/graphics/Bitmap;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 720
    if-gez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Index cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 722
    :cond_a
    monitor-enter p0

    .line 723
    :try_start_b
    invoke-direct {p0, p1}, Lcom/android/ex/carousel/b;->m(I)Lcom/android/ex/carousel/i;

    move-result-object v0

    .line 724
    if-eqz p2, :cond_25

    .line 725
    sget-object v1, Lcom/android/ex/carousel/b;->a:Landroid/renderscript/Allocation$MipmapControl;

    invoke-direct {p0, p1, p2, v1}, Lcom/android/ex/carousel/b;->a(ILandroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;)Landroid/renderscript/Allocation;

    move-result-object v1

    iput-object v1, v0, Lcom/android/ex/carousel/i;->a:Landroid/renderscript/Allocation;

    .line 732
    :cond_19
    :goto_19
    invoke-direct {p0, p1, v0}, Lcom/android/ex/carousel/b;->a(ILcom/android/ex/carousel/i;)V

    .line 733
    iget-object v1, p0, Lcom/android/ex/carousel/b;->d:Lcom/android/ex/carousel/g;

    iget-object v0, v0, Lcom/android/ex/carousel/i;->a:Landroid/renderscript/Allocation;

    invoke-virtual {v1, p1, v0}, Lcom/android/ex/carousel/g;->a(ILandroid/renderscript/Allocation;)V

    .line 734
    monitor-exit p0

    return-void

    .line 727
    :cond_25
    iget-object v1, v0, Lcom/android/ex/carousel/i;->a:Landroid/renderscript/Allocation;

    if-eqz v1, :cond_19

    .line 729
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/ex/carousel/i;->a:Landroid/renderscript/Allocation;
    :try_end_2c
    .catchall {:try_start_b .. :try_end_2c} :catchall_2d

    goto :goto_19

    .line 734
    :catchall_2d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(ILandroid/renderscript/Mesh;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 809
    if-gez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Index cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 811
    :cond_a
    monitor-enter p0

    .line 812
    :try_start_b
    invoke-direct {p0, p1}, Lcom/android/ex/carousel/b;->m(I)Lcom/android/ex/carousel/i;

    move-result-object v0

    .line 814
    iget-object v1, v0, Lcom/android/ex/carousel/i;->f:Landroid/renderscript/Mesh;

    if-eqz v1, :cond_16

    .line 820
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/ex/carousel/i;->f:Landroid/renderscript/Mesh;

    .line 823
    :cond_16
    invoke-direct {p0, p1, v0}, Lcom/android/ex/carousel/b;->a(ILcom/android/ex/carousel/i;)V

    .line 824
    iget-object v1, p0, Lcom/android/ex/carousel/b;->d:Lcom/android/ex/carousel/g;

    iget-object v0, v0, Lcom/android/ex/carousel/i;->f:Landroid/renderscript/Mesh;

    invoke-virtual {v1, p1, v0}, Lcom/android/ex/carousel/g;->a(ILandroid/renderscript/Mesh;)V

    .line 825
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_b .. :try_end_21} :catchall_22

    return-void

    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final a(IZ)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 765
    if-gez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Index cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 767
    :cond_a
    monitor-enter p0

    .line 768
    :try_start_b
    invoke-direct {p0, p1}, Lcom/android/ex/carousel/b;->l(I)Lcom/android/ex/carousel/i;

    move-result-object v0

    .line 769
    if-nez v0, :cond_13

    .line 771
    monitor-exit p0

    .line 782
    :goto_12
    return-void

    .line 773
    :cond_13
    if-eqz p2, :cond_21

    iget-object v1, v0, Lcom/android/ex/carousel/i;->a:Landroid/renderscript/Allocation;

    if-eqz v1, :cond_21

    .line 777
    iget-object v1, v0, Lcom/android/ex/carousel/i;->a:Landroid/renderscript/Allocation;

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->destroy()V

    .line 778
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/ex/carousel/i;->a:Landroid/renderscript/Allocation;

    .line 780
    :cond_21
    invoke-direct {p0, p1, v0}, Lcom/android/ex/carousel/b;->a(ILcom/android/ex/carousel/i;)V

    .line 781
    iget-object v0, p0, Lcom/android/ex/carousel/b;->d:Lcom/android/ex/carousel/g;

    invoke-virtual {v0, p1, p2}, Lcom/android/ex/carousel/g;->a(IZ)V

    .line 782
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_b .. :try_end_2a} :catchall_2b

    goto :goto_12

    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(J)V
    .registers 5
    .parameter

    .prologue
    .line 910
    iget-object v0, p0, Lcom/android/ex/carousel/b;->d:Lcom/android/ex/carousel/g;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Lcom/android/ex/carousel/g;->f(I)V

    .line 911
    return-void
.end method

.method public final a(Landroid/graphics/Bitmap;)V
    .registers 4
    .parameter

    .prologue
    .line 611
    iget-object v0, p0, Lcom/android/ex/carousel/b;->d:Lcom/android/ex/carousel/g;

    sget-object v1, Lcom/android/ex/carousel/b;->a:Landroid/renderscript/Allocation$MipmapControl;

    invoke-direct {p0, p1, v1}, Lcom/android/ex/carousel/b;->a(Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;)Landroid/renderscript/Allocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ex/carousel/g;->a(Landroid/renderscript/Allocation;)V

    .line 612
    return-void
.end method

.method public final a(Landroid/renderscript/Float4;)V
    .registers 3
    .parameter

    .prologue
    .line 846
    iget-object v0, p0, Lcom/android/ex/carousel/b;->d:Lcom/android/ex/carousel/g;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/g;->a(Landroid/renderscript/Float4;)V

    .line 847
    return-void
.end method

.method public final a(Landroid/renderscript/Mesh;)V
    .registers 3
    .parameter

    .prologue
    .line 621
    iget-object v0, p0, Lcom/android/ex/carousel/b;->d:Lcom/android/ex/carousel/g;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/g;->a(Landroid/renderscript/Mesh;)V

    .line 622
    return-void
.end method

.method public final a(Lcom/android/ex/carousel/d;)V
    .registers 2
    .parameter

    .prologue
    .line 646
    iput-object p1, p0, Lcom/android/ex/carousel/b;->s:Lcom/android/ex/carousel/d;

    .line 647
    return-void
.end method

.method public final a(Z)V
    .registers 3
    .parameter

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/ex/carousel/b;->d:Lcom/android/ex/carousel/g;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/g;->b(Z)V

    .line 305
    return-void
.end method

.method public final a([F)V
    .registers 9
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 350
    iget-object v4, p0, Lcom/android/ex/carousel/b;->d:Lcom/android/ex/carousel/g;

    if-eqz p1, :cond_8

    array-length v0, p1

    if-nez v0, :cond_1f

    :cond_8
    move v0, v1

    :goto_9
    new-instance v5, Landroid/renderscript/Matrix4f;

    invoke-direct {v5}, Landroid/renderscript/Matrix4f;-><init>()V

    move v3, v1

    :goto_f
    if-ge v3, v0, :cond_39

    move v2, v1

    :goto_12
    if-ge v2, v0, :cond_35

    mul-int v6, v3, v0

    add-int/2addr v6, v2

    aget v6, p1, v6

    invoke-virtual {v5, v3, v2, v6}, Landroid/renderscript/Matrix4f;->set(IIF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_1f
    array-length v0, p1

    const/16 v2, 0x10

    if-ne v0, v2, :cond_26

    const/4 v0, 0x4

    goto :goto_9

    :cond_26
    array-length v0, p1

    const/16 v2, 0x9

    if-ne v0, v2, :cond_2d

    const/4 v0, 0x3

    goto :goto_9

    :cond_2d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "matrix length not 0,9 or 16"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_35
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_f

    :cond_39
    invoke-virtual {v4, v5}, Lcom/android/ex/carousel/g;->a(Landroid/renderscript/Matrix4f;)V

    .line 351
    return-void
.end method

.method public final a([F[F[F)V
    .registers 14
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    move v0, v7

    .line 287
    :goto_4
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1c

    .line 288
    iget-object v1, p0, Lcom/android/ex/carousel/b;->t:[F

    aget v2, p1, v0

    aput v2, v1, v0

    .line 289
    iget-object v1, p0, Lcom/android/ex/carousel/b;->u:[F

    aget v2, p2, v0

    aput v2, v1, v0

    .line 290
    iget-object v1, p0, Lcom/android/ex/carousel/b;->v:[F

    aget v2, p3, v0

    aput v2, v1, v0

    .line 287
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 292
    :cond_1c
    iget-object v0, p0, Lcom/android/ex/carousel/b;->d:Lcom/android/ex/carousel/g;

    aget v1, p1, v7

    aget v2, p1, v8

    aget v3, p1, v9

    aget v4, p2, v7

    aget v5, p2, v8

    aget v6, p2, v9

    aget v7, p3, v7

    aget v8, p3, v8

    aget v9, p3, v9

    invoke-virtual/range {v0 .. v9}, Lcom/android/ex/carousel/g;->a(FFFFFFFFF)V

    .line 293
    return-void
.end method

.method public final a([I)V
    .registers 11
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 555
    if-nez p1, :cond_8

    .line 556
    invoke-direct {p0}, Lcom/android/ex/carousel/b;->c()V

    .line 588
    :cond_7
    return-void

    .line 560
    :cond_8
    array-length v7, p1

    .line 562
    invoke-direct {p0, v7}, Lcom/android/ex/carousel/b;->k(I)V

    move v6, v4

    .line 563
    :goto_d
    if-ge v6, v7, :cond_7

    .line 564
    aget v1, p1, v6

    .line 566
    and-int/lit8 v0, v1, 0x1

    if-eqz v0, :cond_4d

    move v0, v3

    .line 567
    :goto_16
    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_4f

    move v5, v3

    .line 568
    :goto_1b
    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_51

    move v2, v3

    .line 571
    :goto_20
    if-eqz v0, :cond_53

    sget-object v0, Landroid/renderscript/ProgramStore$BlendDstFunc;->ONE_MINUS_SRC_ALPHA:Landroid/renderscript/ProgramStore$BlendDstFunc;

    move-object v1, v0

    .line 575
    :goto_25
    if-eqz v5, :cond_57

    sget-object v0, Landroid/renderscript/ProgramStore$DepthFunc;->LESS:Landroid/renderscript/ProgramStore$DepthFunc;

    .line 579
    :goto_29
    new-instance v5, Landroid/renderscript/ProgramStore$Builder;

    iget-object v8, p0, Lcom/android/ex/carousel/b;->b:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v5, v8}, Landroid/renderscript/ProgramStore$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    sget-object v8, Landroid/renderscript/ProgramStore$BlendSrcFunc;->ONE:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    invoke-virtual {v5, v8, v1}, Landroid/renderscript/ProgramStore$Builder;->setBlendFunc(Landroid/renderscript/ProgramStore$BlendSrcFunc;Landroid/renderscript/ProgramStore$BlendDstFunc;)Landroid/renderscript/ProgramStore$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/renderscript/ProgramStore$Builder;->setDitherEnabled(Z)Landroid/renderscript/ProgramStore$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/renderscript/ProgramStore$Builder;->setDepthFunc(Landroid/renderscript/ProgramStore$DepthFunc;)Landroid/renderscript/ProgramStore$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/renderscript/ProgramStore$Builder;->setDepthMaskEnabled(Z)Landroid/renderscript/ProgramStore$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/ProgramStore$Builder;->create()Landroid/renderscript/ProgramStore;

    move-result-object v0

    .line 586
    invoke-direct {p0, v6, v0}, Lcom/android/ex/carousel/b;->a(ILandroid/renderscript/ProgramStore;)V

    .line 563
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_d

    :cond_4d
    move v0, v4

    .line 566
    goto :goto_16

    :cond_4f
    move v5, v4

    .line 567
    goto :goto_1b

    :cond_51
    move v2, v4

    .line 568
    goto :goto_20

    .line 571
    :cond_53
    sget-object v0, Landroid/renderscript/ProgramStore$BlendDstFunc;->ZERO:Landroid/renderscript/ProgramStore$BlendDstFunc;

    move-object v1, v0

    goto :goto_25

    .line 575
    :cond_57
    sget-object v0, Landroid/renderscript/ProgramStore$DepthFunc;->ALWAYS:Landroid/renderscript/ProgramStore$DepthFunc;

    goto :goto_29
.end method

.method public final b()V
    .registers 2

    .prologue
    .line 886
    iget-object v0, p0, Lcom/android/ex/carousel/b;->d:Lcom/android/ex/carousel/g;

    invoke-virtual {v0}, Lcom/android/ex/carousel/g;->a()V

    .line 887
    return-void
.end method

.method public final b(F)V
    .registers 3
    .parameter

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/ex/carousel/b;->d:Lcom/android/ex/carousel/g;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/g;->b(F)V

    .line 301
    return-void
.end method

.method public final b(FFJ)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 894
    iget-object v0, p0, Lcom/android/ex/carousel/b;->d:Lcom/android/ex/carousel/g;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/ex/carousel/g;->a(FFJ)V

    .line 895
    return-void
.end method

.method public final b(I)V
    .registers 3
    .parameter

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/ex/carousel/b;->d:Lcom/android/ex/carousel/g;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/g;->j(I)V

    .line 325
    return-void
.end method

.method final b(IZ)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 787
    if-gez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Index cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 789
    :cond_a
    monitor-enter p0

    .line 790
    :try_start_b
    invoke-direct {p0, p1}, Lcom/android/ex/carousel/b;->l(I)Lcom/android/ex/carousel/i;

    move-result-object v0

    .line 791
    if-nez v0, :cond_13

    .line 793
    monitor-exit p0

    .line 804
    :goto_12
    return-void

    .line 795
    :cond_13
    if-eqz p2, :cond_21

    iget-object v1, v0, Lcom/android/ex/carousel/i;->b:Landroid/renderscript/Allocation;

    if-eqz v1, :cond_21

    .line 799
    iget-object v1, v0, Lcom/android/ex/carousel/i;->b:Landroid/renderscript/Allocation;

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->destroy()V

    .line 800
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/ex/carousel/i;->b:Landroid/renderscript/Allocation;

    .line 802
    :cond_21
    invoke-direct {p0, p1, v0}, Lcom/android/ex/carousel/b;->a(ILcom/android/ex/carousel/i;)V

    .line 803
    iget-object v0, p0, Lcom/android/ex/carousel/b;->d:Lcom/android/ex/carousel/g;

    invoke-virtual {v0, p1, p2}, Lcom/android/ex/carousel/g;->b(IZ)V

    .line 804
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_b .. :try_end_2a} :catchall_2b

    goto :goto_12

    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(J)V
    .registers 5
    .parameter

    .prologue
    .line 914
    iget-object v0, p0, Lcom/android/ex/carousel/b;->d:Lcom/android/ex/carousel/g;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Lcom/android/ex/carousel/g;->g(I)V

    .line 915
    return-void
.end method

.method public final b(Landroid/graphics/Bitmap;)V
    .registers 4
    .parameter

    .prologue
    .line 616
    iget-object v0, p0, Lcom/android/ex/carousel/b;->d:Lcom/android/ex/carousel/g;

    sget-object v1, Lcom/android/ex/carousel/b;->a:Landroid/renderscript/Allocation$MipmapControl;

    invoke-direct {p0, p1, v1}, Lcom/android/ex/carousel/b;->a(Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;)Landroid/renderscript/Allocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ex/carousel/g;->b(Landroid/renderscript/Allocation;)V

    .line 617
    return-void
.end method

.method public final b(Landroid/renderscript/Mesh;)V
    .registers 3
    .parameter

    .prologue
    .line 626
    iget-object v0, p0, Lcom/android/ex/carousel/b;->d:Lcom/android/ex/carousel/g;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/g;->b(Landroid/renderscript/Mesh;)V

    .line 627
    return-void
.end method

.method public final b(Z)V
    .registers 3
    .parameter

    .prologue
    .line 518
    iget-object v0, p0, Lcom/android/ex/carousel/b;->d:Lcom/android/ex/carousel/g;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/g;->c(Z)V

    .line 519
    return-void
.end method

.method public final c(F)V
    .registers 3
    .parameter

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/ex/carousel/b;->d:Lcom/android/ex/carousel/g;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/g;->c(F)V

    .line 309
    return-void
.end method

.method public final c(FFJ)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 898
    iget-object v0, p0, Lcom/android/ex/carousel/b;->d:Lcom/android/ex/carousel/g;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/ex/carousel/g;->b(FFJ)V

    .line 899
    return-void
.end method

.method public final c(I)V
    .registers 5
    .parameter

    .prologue
    .line 481
    iget-object v0, p0, Lcom/android/ex/carousel/b;->e:Lcom/android/ex/carousel/h;

    if-eqz v0, :cond_1f

    if-lez p1, :cond_1f

    .line 483
    iget-object v0, p0, Lcom/android/ex/carousel/b;->e:Lcom/android/ex/carousel/h;

    invoke-virtual {v0}, Lcom/android/ex/carousel/h;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getX()I

    move-result v0

    .line 484
    iget-object v1, p0, Lcom/android/ex/carousel/b;->e:Lcom/android/ex/carousel/h;

    invoke-virtual {v1, p1}, Lcom/android/ex/carousel/h;->b(I)V

    .line 485
    iget-object v1, p0, Lcom/android/ex/carousel/b;->d:Lcom/android/ex/carousel/g;

    invoke-virtual {v1, v0, p1}, Lcom/android/ex/carousel/g;->a(II)V

    .line 492
    :goto_1e
    return-void

    .line 488
    :cond_1f
    new-instance v1, Lcom/android/ex/carousel/h;

    iget-object v2, p0, Lcom/android/ex/carousel/b;->b:Landroid/renderscript/RenderScriptGL;

    if-lez p1, :cond_39

    move v0, p1

    :goto_26
    invoke-direct {v1, v2, v0}, Lcom/android/ex/carousel/h;-><init>(Landroid/renderscript/RenderScript;I)V

    iput-object v1, p0, Lcom/android/ex/carousel/b;->e:Lcom/android/ex/carousel/h;

    .line 489
    iget-object v0, p0, Lcom/android/ex/carousel/b;->d:Lcom/android/ex/carousel/g;

    iget-object v1, p0, Lcom/android/ex/carousel/b;->e:Lcom/android/ex/carousel/h;

    invoke-virtual {v0, v1}, Lcom/android/ex/carousel/g;->a(Lcom/android/ex/carousel/h;)V

    .line 490
    iget-object v0, p0, Lcom/android/ex/carousel/b;->d:Lcom/android/ex/carousel/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/ex/carousel/g;->a(II)V

    goto :goto_1e

    .line 488
    :cond_39
    const/4 v0, 0x1

    goto :goto_26
.end method

.method public final c(Landroid/graphics/Bitmap;)V
    .registers 5
    .parameter

    .prologue
    .line 850
    const/4 v0, 0x0

    .line 851
    if-eqz p1, :cond_c

    .line 852
    iget-object v0, p0, Lcom/android/ex/carousel/b;->b:Landroid/renderscript/RenderScriptGL;

    sget-object v1, Lcom/android/ex/carousel/b;->a:Landroid/renderscript/Allocation$MipmapControl;

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v0

    .line 855
    :cond_c
    iget-object v1, p0, Lcom/android/ex/carousel/b;->d:Lcom/android/ex/carousel/g;

    invoke-virtual {v1, v0}, Lcom/android/ex/carousel/g;->c(Landroid/renderscript/Allocation;)V

    .line 856
    return-void
.end method

.method public final c(Z)V
    .registers 2
    .parameter

    .prologue
    .line 601
    iput-boolean p1, p0, Lcom/android/ex/carousel/b;->o:Z

    .line 602
    invoke-direct {p0}, Lcom/android/ex/carousel/b;->c()V

    .line 603
    return-void
.end method

.method public final d(F)V
    .registers 3
    .parameter

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/ex/carousel/b;->d:Lcom/android/ex/carousel/g;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/g;->d(F)V

    .line 313
    return-void
.end method

.method public final d(I)V
    .registers 3
    .parameter

    .prologue
    .line 496
    iput p1, p0, Lcom/android/ex/carousel/b;->p:I

    .line 497
    iget-object v0, p0, Lcom/android/ex/carousel/b;->d:Lcom/android/ex/carousel/g;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/g;->b(I)V

    .line 498
    return-void
.end method

.method public final d(Landroid/graphics/Bitmap;)V
    .registers 5
    .parameter

    .prologue
    .line 859
    const/4 v0, 0x0

    .line 860
    if-eqz p1, :cond_c

    .line 861
    iget-object v0, p0, Lcom/android/ex/carousel/b;->b:Landroid/renderscript/RenderScriptGL;

    sget-object v1, Lcom/android/ex/carousel/b;->a:Landroid/renderscript/Allocation$MipmapControl;

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v0

    .line 864
    :cond_c
    iget-object v1, p0, Lcom/android/ex/carousel/b;->d:Lcom/android/ex/carousel/g;

    invoke-virtual {v1, v0}, Lcom/android/ex/carousel/g;->d(Landroid/renderscript/Allocation;)V

    .line 865
    return-void
.end method

.method public final d(Z)V
    .registers 3
    .parameter

    .prologue
    .line 606
    iget-object v0, p0, Lcom/android/ex/carousel/b;->d:Lcom/android/ex/carousel/g;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/g;->a(Z)V

    .line 607
    return-void
.end method

.method public final e(F)V
    .registers 3
    .parameter

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/ex/carousel/b;->d:Lcom/android/ex/carousel/g;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/g;->e(F)V

    .line 317
    return-void
.end method

.method public final e(I)V
    .registers 3
    .parameter

    .prologue
    .line 501
    iget-object v0, p0, Lcom/android/ex/carousel/b;->d:Lcom/android/ex/carousel/g;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/g;->c(I)V

    .line 502
    return-void
.end method

.method public final e(Landroid/graphics/Bitmap;)V
    .registers 5
    .parameter

    .prologue
    .line 868
    const/4 v0, 0x0

    .line 869
    if-eqz p1, :cond_c

    .line 870
    iget-object v0, p0, Lcom/android/ex/carousel/b;->b:Landroid/renderscript/RenderScriptGL;

    sget-object v1, Lcom/android/ex/carousel/b;->a:Landroid/renderscript/Allocation$MipmapControl;

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v0

    .line 873
    :cond_c
    iget-object v1, p0, Lcom/android/ex/carousel/b;->d:Lcom/android/ex/carousel/g;

    invoke-virtual {v1, v0}, Lcom/android/ex/carousel/g;->e(Landroid/renderscript/Allocation;)V

    .line 874
    return-void
.end method

.method public final f(F)V
    .registers 3
    .parameter

    .prologue
    .line 510
    iget-object v0, p0, Lcom/android/ex/carousel/b;->d:Lcom/android/ex/carousel/g;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/g;->g(F)V

    .line 511
    return-void
.end method

.method public final f(I)V
    .registers 3
    .parameter

    .prologue
    .line 505
    iput p1, p0, Lcom/android/ex/carousel/b;->q:I

    .line 506
    iget-object v0, p0, Lcom/android/ex/carousel/b;->d:Lcom/android/ex/carousel/g;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/g;->h(I)V

    .line 507
    return-void
.end method

.method public final g(F)V
    .registers 3
    .parameter

    .prologue
    .line 514
    iget-object v0, p0, Lcom/android/ex/carousel/b;->d:Lcom/android/ex/carousel/g;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/g;->h(F)V

    .line 515
    return-void
.end method

.method public final g(I)V
    .registers 3
    .parameter

    .prologue
    .line 522
    iput p1, p0, Lcom/android/ex/carousel/b;->r:I

    .line 523
    iget-object v0, p0, Lcom/android/ex/carousel/b;->d:Lcom/android/ex/carousel/g;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/g;->d(I)V

    .line 524
    return-void
.end method

.method public final h(F)V
    .registers 3
    .parameter

    .prologue
    .line 631
    iget-object v0, p0, Lcom/android/ex/carousel/b;->d:Lcom/android/ex/carousel/g;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/g;->a(F)V

    .line 632
    return-void
.end method

.method public final h(I)V
    .registers 3
    .parameter

    .prologue
    .line 527
    iget-object v0, p0, Lcom/android/ex/carousel/b;->d:Lcom/android/ex/carousel/g;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/g;->e(I)V

    .line 528
    return-void
.end method

.method public final i(F)V
    .registers 3
    .parameter

    .prologue
    .line 635
    iget-object v0, p0, Lcom/android/ex/carousel/b;->d:Lcom/android/ex/carousel/g;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/g;->j(F)V

    .line 636
    return-void
.end method

.method public final i(I)V
    .registers 3
    .parameter

    .prologue
    .line 902
    iget-object v0, p0, Lcom/android/ex/carousel/b;->d:Lcom/android/ex/carousel/g;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/g;->a(I)V

    .line 903
    return-void
.end method

.method public final j(I)Landroid/renderscript/Mesh;
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 936
    if-nez p1, :cond_4

    .line 947
    :cond_3
    :goto_3
    return-object v0

    .line 939
    :cond_4
    iget-object v1, p0, Lcom/android/ex/carousel/b;->b:Landroid/renderscript/RenderScriptGL;

    iget-object v2, p0, Lcom/android/ex/carousel/b;->c:Landroid/content/res/Resources;

    invoke-static {v1, v2, p1}, Landroid/renderscript/FileA3D;->createFromResource(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)Landroid/renderscript/FileA3D;

    move-result-object v1

    .line 940
    if-eqz v1, :cond_3

    .line 943
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/renderscript/FileA3D;->getIndexEntry(I)Landroid/renderscript/FileA3D$IndexEntry;

    move-result-object v1

    .line 944
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/renderscript/FileA3D$IndexEntry;->getEntryType()Landroid/renderscript/FileA3D$EntryType;

    move-result-object v2

    sget-object v3, Landroid/renderscript/FileA3D$EntryType;->MESH:Landroid/renderscript/FileA3D$EntryType;

    if-ne v2, v3, :cond_3

    .line 947
    invoke-virtual {v1}, Landroid/renderscript/FileA3D$IndexEntry;->getObject()Landroid/renderscript/BaseObj;

    move-result-object v0

    check-cast v0, Landroid/renderscript/Mesh;

    goto :goto_3
.end method

.method public final j(F)V
    .registers 3
    .parameter

    .prologue
    .line 906
    iget-object v0, p0, Lcom/android/ex/carousel/b;->d:Lcom/android/ex/carousel/g;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/g;->f(F)V

    .line 907
    return-void
.end method
