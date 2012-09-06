.class public Lcom/jme3/system/NullRenderer;
.super Ljava/lang/Object;
.source "NullRenderer.java"

# interfaces
.implements Lcom/jme3/renderer/Renderer;


# static fields
.field private static final caps:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/jme3/renderer/Caps;",
            ">;"
        }
    .end annotation
.end field

.field private static final stats:Lcom/jme3/renderer/Statistics;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 54
    const-class v0, Lcom/jme3/renderer/Caps;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/jme3/system/NullRenderer;->caps:Ljava/util/EnumSet;

    .line 55
    new-instance v0, Lcom/jme3/renderer/Statistics;

    invoke-direct {v0}, Lcom/jme3/renderer/Statistics;-><init>()V

    sput-object v0, Lcom/jme3/system/NullRenderer;->stats:Lcom/jme3/renderer/Statistics;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyRenderState(Lcom/jme3/material/RenderState;)V
    .registers 2
    .parameter "state"

    .prologue
    .line 75
    return-void
.end method

.method public clearBuffers(ZZZ)V
    .registers 4
    .parameter "color"
    .parameter "depth"
    .parameter "stencil"

    .prologue
    .line 69
    return-void
.end method

.method public deleteBuffer(Lcom/jme3/scene/VertexBuffer;)V
    .registers 2
    .parameter "vb"

    .prologue
    .line 135
    return-void
.end method

.method public deleteFrameBuffer(Lcom/jme3/texture/FrameBuffer;)V
    .registers 2
    .parameter "fb"

    .prologue
    .line 126
    return-void
.end method

.method public deleteImage(Lcom/jme3/texture/Image;)V
    .registers 2
    .parameter "image"

    .prologue
    .line 147
    return-void
.end method

.method public deleteShader(Lcom/jme3/shader/Shader;)V
    .registers 2
    .parameter "shader"

    .prologue
    .line 105
    return-void
.end method

.method public deleteShaderSource(Lcom/jme3/shader/Shader$ShaderSource;)V
    .registers 2
    .parameter "source"

    .prologue
    .line 108
    return-void
.end method

.method public getCaps()Ljava/util/EnumSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/jme3/renderer/Caps;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    sget-object v0, Lcom/jme3/system/NullRenderer;->caps:Ljava/util/EnumSet;

    return-object v0
.end method

.method public getStatistics()Lcom/jme3/renderer/Statistics;
    .registers 2

    .prologue
    .line 62
    sget-object v0, Lcom/jme3/system/NullRenderer;->stats:Lcom/jme3/renderer/Statistics;

    return-object v0
.end method

.method public renderMesh(Lcom/jme3/scene/Mesh;II)V
    .registers 4
    .parameter "mesh"
    .parameter "lod"
    .parameter "count"

    .prologue
    .line 138
    return-void
.end method

.method public setBackgroundColor(Lcom/jme3/math/ColorRGBA;)V
    .registers 2
    .parameter "color"

    .prologue
    .line 72
    return-void
.end method

.method public setClipRect(IIII)V
    .registers 5
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 93
    return-void
.end method

.method public setDepthRange(FF)V
    .registers 3
    .parameter "start"
    .parameter "end"

    .prologue
    .line 78
    return-void
.end method

.method public setFrameBuffer(Lcom/jme3/texture/FrameBuffer;)V
    .registers 2
    .parameter "fb"

    .prologue
    .line 120
    return-void
.end method

.method public setLighting(Lcom/jme3/light/LightList;)V
    .registers 2
    .parameter "lights"

    .prologue
    .line 99
    return-void
.end method

.method public setShader(Lcom/jme3/shader/Shader;)V
    .registers 2
    .parameter "shader"

    .prologue
    .line 102
    return-void
.end method

.method public setTexture(ILcom/jme3/texture/Texture;)V
    .registers 3
    .parameter "unit"
    .parameter "tex"

    .prologue
    .line 129
    return-void
.end method

.method public setViewPort(IIII)V
    .registers 5
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 90
    return-void
.end method

.method public setViewProjectionMatrices(Lcom/jme3/math/Matrix4f;Lcom/jme3/math/Matrix4f;)V
    .registers 3
    .parameter "viewMatrix"
    .parameter "projMatrix"

    .prologue
    .line 87
    return-void
.end method

.method public setWorldMatrix(Lcom/jme3/math/Matrix4f;)V
    .registers 2
    .parameter "worldMatrix"

    .prologue
    .line 84
    return-void
.end method
