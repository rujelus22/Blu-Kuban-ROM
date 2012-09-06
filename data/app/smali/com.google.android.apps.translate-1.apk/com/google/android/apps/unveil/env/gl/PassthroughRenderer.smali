.class public Lcom/google/android/apps/unveil/env/gl/PassthroughRenderer;
.super Ljava/lang/Object;
.source "PassthroughRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/unveil/env/gl/PassthroughRenderer$Renderable;,
        Lcom/google/android/apps/unveil/env/gl/PassthroughRenderer$RenderCompletedCallback;
    }
.end annotation


# static fields
.field private static final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;


# instance fields
.field private boundingBoxes:Lcom/google/android/apps/unveil/env/gl/BoundingBoxLayer;

.field private boxProgram:Lcom/google/android/apps/unveil/env/gl/ShaderProgram;

.field private final callback:Lcom/google/android/apps/unveil/env/gl/PassthroughRenderer$RenderCompletedCallback;

.field private final display:Landroid/view/Display;

.field private previewSize:Lcom/google/android/apps/unveil/env/Size;

.field private quadProgram:Lcom/google/android/apps/unveil/env/gl/ShaderProgram;

.field private final resources:Landroid/content/res/Resources;

.field private screen:Lcom/google/android/apps/unveil/env/gl/NV21Quad;

.field private screenSize:Lcom/google/android/apps/unveil/env/Size;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    sput-object v0, Lcom/google/android/apps/unveil/env/gl/PassthroughRenderer;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/unveil/env/gl/PassthroughRenderer$RenderCompletedCallback;)V
    .registers 4
    .parameter "context"
    .parameter "callback"

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/unveil/env/gl/PassthroughRenderer;->boundingBoxes:Lcom/google/android/apps/unveil/env/gl/BoundingBoxLayer;

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/unveil/env/gl/PassthroughRenderer;->resources:Landroid/content/res/Resources;

    .line 67
    iput-object p2, p0, Lcom/google/android/apps/unveil/env/gl/PassthroughRenderer;->callback:Lcom/google/android/apps/unveil/env/gl/PassthroughRenderer$RenderCompletedCallback;

    .line 68
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/unveil/env/gl/PassthroughRenderer;->display:Landroid/view/Display;

    .line 70
    return-void
.end method

.method private createScreen()V
    .registers 8

    .prologue
    const/4 v1, 0x1

    .line 76
    iget-object v2, p0, Lcom/google/android/apps/unveil/env/gl/PassthroughRenderer;->display:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 77
    .local v0, rotation:I
    new-instance v2, Lcom/google/android/apps/unveil/env/gl/NV21Quad;

    iget-object v3, p0, Lcom/google/android/apps/unveil/env/gl/PassthroughRenderer;->quadProgram:Lcom/google/android/apps/unveil/env/gl/ShaderProgram;

    iget-object v4, p0, Lcom/google/android/apps/unveil/env/gl/PassthroughRenderer;->previewSize:Lcom/google/android/apps/unveil/env/Size;

    iget v4, v4, Lcom/google/android/apps/unveil/env/Size;->width:I

    iget-object v5, p0, Lcom/google/android/apps/unveil/env/gl/PassthroughRenderer;->previewSize:Lcom/google/android/apps/unveil/env/Size;

    iget v5, v5, Lcom/google/android/apps/unveil/env/Size;->height:I

    if-eq v0, v1, :cond_18

    const/4 v6, 0x3

    if-ne v0, v6, :cond_1e

    :cond_18
    :goto_18
    invoke-direct {v2, v3, v4, v5, v1}, Lcom/google/android/apps/unveil/env/gl/NV21Quad;-><init>(Lcom/google/android/apps/unveil/env/gl/ShaderProgram;IIZ)V

    iput-object v2, p0, Lcom/google/android/apps/unveil/env/gl/PassthroughRenderer;->screen:Lcom/google/android/apps/unveil/env/gl/NV21Quad;

    .line 79
    return-void

    .line 77
    :cond_1e
    const/4 v1, 0x0

    goto :goto_18
.end method


# virtual methods
.method public declared-synchronized LoadNV21Data([BLcom/google/android/apps/unveil/env/Size;)V
    .registers 4
    .parameter "NV21data"
    .parameter "size"

    .prologue
    .line 166
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/gl/PassthroughRenderer;->quadProgram:Lcom/google/android/apps/unveil/env/gl/ShaderProgram;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_12

    if-nez v0, :cond_7

    .line 180
    :cond_5
    :goto_5
    monitor-exit p0

    return-void

    .line 173
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/gl/PassthroughRenderer;->previewSize:Lcom/google/android/apps/unveil/env/Size;

    invoke-virtual {p2, v0}, Lcom/google/android/apps/unveil/env/Size;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 174
    iput-object p2, p0, Lcom/google/android/apps/unveil/env/gl/PassthroughRenderer;->previewSize:Lcom/google/android/apps/unveil/env/Size;
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_12

    goto :goto_5

    .line 166
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0

    .line 177
    :cond_15
    :try_start_15
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/gl/PassthroughRenderer;->screen:Lcom/google/android/apps/unveil/env/gl/NV21Quad;

    if-eqz v0, :cond_5

    .line 178
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/gl/PassthroughRenderer;->screen:Lcom/google/android/apps/unveil/env/gl/NV21Quad;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/unveil/env/gl/NV21Quad;->LoadNV21Data([B)V
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_12

    goto :goto_5
.end method

.method public declared-synchronized createBoundingBoxLayer()Lcom/google/android/apps/unveil/env/gl/BoundingBoxLayer;
    .registers 3

    .prologue
    .line 183
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/gl/PassthroughRenderer;->boundingBoxes:Lcom/google/android/apps/unveil/env/gl/BoundingBoxLayer;

    if-nez v0, :cond_e

    .line 184
    new-instance v0, Lcom/google/android/apps/unveil/env/gl/BoundingBoxLayer;

    iget-object v1, p0, Lcom/google/android/apps/unveil/env/gl/PassthroughRenderer;->boxProgram:Lcom/google/android/apps/unveil/env/gl/ShaderProgram;

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/unveil/env/gl/BoundingBoxLayer;-><init>(Lcom/google/android/apps/unveil/env/gl/PassthroughRenderer;Lcom/google/android/apps/unveil/env/gl/ShaderProgram;)V

    iput-object v0, p0, Lcom/google/android/apps/unveil/env/gl/PassthroughRenderer;->boundingBoxes:Lcom/google/android/apps/unveil/env/gl/BoundingBoxLayer;

    .line 187
    :cond_e
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/gl/PassthroughRenderer;->boundingBoxes:Lcom/google/android/apps/unveil/env/gl/BoundingBoxLayer;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    monitor-exit p0

    return-object v0

    .line 183
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 6
    .parameter "gl"

    .prologue
    .line 83
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/gl/PassthroughRenderer;->previewSize:Lcom/google/android/apps/unveil/env/Size;

    if-eqz v0, :cond_32

    .line 84
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/gl/PassthroughRenderer;->screen:Lcom/google/android/apps/unveil/env/gl/NV21Quad;

    if-nez v0, :cond_39

    .line 86
    invoke-direct {p0}, Lcom/google/android/apps/unveil/env/gl/PassthroughRenderer;->createScreen()V

    .line 94
    :cond_c
    :goto_c
    const/16 v0, 0xb71

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 95
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 98
    const/4 v0, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glColorMask(ZZZZ)V

    .line 99
    const/16 v0, 0x302

    const/16 v1, 0x303

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 100
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/gl/PassthroughRenderer;->screen:Lcom/google/android/apps/unveil/env/gl/NV21Quad;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/env/gl/NV21Quad;->render()V

    .line 102
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/gl/PassthroughRenderer;->boundingBoxes:Lcom/google/android/apps/unveil/env/gl/BoundingBoxLayer;

    if-eqz v0, :cond_32

    .line 103
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/gl/PassthroughRenderer;->boundingBoxes:Lcom/google/android/apps/unveil/env/gl/BoundingBoxLayer;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/env/gl/BoundingBoxLayer;->render()V

    .line 107
    :cond_32
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/gl/PassthroughRenderer;->callback:Lcom/google/android/apps/unveil/env/gl/PassthroughRenderer$RenderCompletedCallback;

    invoke-interface {v0}, Lcom/google/android/apps/unveil/env/gl/PassthroughRenderer$RenderCompletedCallback;->frameRendered()V
    :try_end_37
    .catchall {:try_start_1 .. :try_end_37} :catchall_5b

    .line 108
    monitor-exit p0

    return-void

    .line 87
    :cond_39
    :try_start_39
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/gl/PassthroughRenderer;->previewSize:Lcom/google/android/apps/unveil/env/Size;

    new-instance v1, Lcom/google/android/apps/unveil/env/Size;

    iget-object v2, p0, Lcom/google/android/apps/unveil/env/gl/PassthroughRenderer;->screen:Lcom/google/android/apps/unveil/env/gl/NV21Quad;

    invoke-virtual {v2}, Lcom/google/android/apps/unveil/env/gl/NV21Quad;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/apps/unveil/env/gl/PassthroughRenderer;->screen:Lcom/google/android/apps/unveil/env/gl/NV21Quad;

    invoke-virtual {v3}, Lcom/google/android/apps/unveil/env/gl/NV21Quad;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/unveil/env/Size;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/unveil/env/Size;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 89
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/gl/PassthroughRenderer;->screen:Lcom/google/android/apps/unveil/env/gl/NV21Quad;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/env/gl/NV21Quad;->release()V

    .line 90
    invoke-direct {p0}, Lcom/google/android/apps/unveil/env/gl/PassthroughRenderer;->createScreen()V
    :try_end_5a
    .catchall {:try_start_39 .. :try_end_5a} :catchall_5b

    goto :goto_c

    .line 83
    :catchall_5b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .registers 5
    .parameter "gl"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 112
    new-instance v0, Lcom/google/android/apps/unveil/env/Size;

    invoke-direct {v0, p2, p3}, Lcom/google/android/apps/unveil/env/Size;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/apps/unveil/env/gl/PassthroughRenderer;->screenSize:Lcom/google/android/apps/unveil/env/Size;

    .line 113
    return-void
.end method

.method public declared-synchronized onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .registers 12
    .parameter "gl"
    .parameter "config"

    .prologue
    .line 117
    monitor-enter p0

    :try_start_1
    new-instance v4, Lcom/google/android/apps/unveil/env/gl/ShaderProgram$Shader;

    const-string v5, "vShader"

    const v6, 0x8b31

    iget-object v7, p0, Lcom/google/android/apps/unveil/env/gl/PassthroughRenderer;->resources:Landroid/content/res/Resources;

    sget v8, Lcom/google/android/apps/unveil/R$raw;->passthrough_ver_tex:I

    invoke-static {v7, v8}, Lcom/google/android/apps/unveil/env/ResourceUtils;->readTxtFileFromResource(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lcom/google/android/apps/unveil/env/gl/ShaderProgram$Shader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 120
    .local v4, vShaderQuad:Lcom/google/android/apps/unveil/env/gl/ShaderProgram$Shader;
    new-instance v1, Lcom/google/android/apps/unveil/env/gl/ShaderProgram$Shader;

    const-string v5, "fShader"

    const v6, 0x8b30

    iget-object v7, p0, Lcom/google/android/apps/unveil/env/gl/PassthroughRenderer;->resources:Landroid/content/res/Resources;

    sget v8, Lcom/google/android/apps/unveil/R$raw;->yuv2rgb:I

    invoke-static {v7, v8}, Lcom/google/android/apps/unveil/env/ResourceUtils;->readTxtFileFromResource(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v5, v6, v7}, Lcom/google/android/apps/unveil/env/gl/ShaderProgram$Shader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 124
    .local v1, fShaderQuad:Lcom/google/android/apps/unveil/env/gl/ShaderProgram$Shader;
    new-instance v3, Lcom/google/android/apps/unveil/env/gl/ShaderProgram$Shader;

    const-string v5, "vShader"

    const v6, 0x8b31

    iget-object v7, p0, Lcom/google/android/apps/unveil/env/gl/PassthroughRenderer;->resources:Landroid/content/res/Resources;

    sget v8, Lcom/google/android/apps/unveil/R$raw;->transform_ver_tex:I

    invoke-static {v7, v8}, Lcom/google/android/apps/unveil/env/ResourceUtils;->readTxtFileFromResource(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v5, v6, v7}, Lcom/google/android/apps/unveil/env/gl/ShaderProgram$Shader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 127
    .local v3, vShaderBox:Lcom/google/android/apps/unveil/env/gl/ShaderProgram$Shader;
    new-instance v0, Lcom/google/android/apps/unveil/env/gl/ShaderProgram$Shader;

    const-string v5, "fShader"

    const v6, 0x8b30

    iget-object v7, p0, Lcom/google/android/apps/unveil/env/gl/PassthroughRenderer;->resources:Landroid/content/res/Resources;

    sget v8, Lcom/google/android/apps/unveil/R$raw;->passthrough_color:I

    invoke-static {v7, v8}, Lcom/google/android/apps/unveil/env/ResourceUtils;->readTxtFileFromResource(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v5, v6, v7}, Lcom/google/android/apps/unveil/env/gl/ShaderProgram$Shader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 132
    .local v0, fShaderBox:Lcom/google/android/apps/unveil/env/gl/ShaderProgram$Shader;
    new-instance v5, Lcom/google/android/apps/unveil/env/gl/ShaderProgram;

    const-string v6, "NV21QuadShader"

    invoke-direct {v5, v6}, Lcom/google/android/apps/unveil/env/gl/ShaderProgram;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/google/android/apps/unveil/env/gl/PassthroughRenderer;->quadProgram:Lcom/google/android/apps/unveil/env/gl/ShaderProgram;

    .line 133
    iget-object v5, p0, Lcom/google/android/apps/unveil/env/gl/PassthroughRenderer;->quadProgram:Lcom/google/android/apps/unveil/env/gl/ShaderProgram;

    invoke-virtual {v5, v4}, Lcom/google/android/apps/unveil/env/gl/ShaderProgram;->attach(Lcom/google/android/apps/unveil/env/gl/ShaderProgram$Shader;)V

    .line 134
    iget-object v5, p0, Lcom/google/android/apps/unveil/env/gl/PassthroughRenderer;->quadProgram:Lcom/google/android/apps/unveil/env/gl/ShaderProgram;

    invoke-virtual {v5, v1}, Lcom/google/android/apps/unveil/env/gl/ShaderProgram;->attach(Lcom/google/android/apps/unveil/env/gl/ShaderProgram$Shader;)V

    .line 135
    iget-object v5, p0, Lcom/google/android/apps/unveil/env/gl/PassthroughRenderer;->quadProgram:Lcom/google/android/apps/unveil/env/gl/ShaderProgram;

    invoke-virtual {v5}, Lcom/google/android/apps/unveil/env/gl/ShaderProgram;->link()V

    .line 137
    iget-object v5, p0, Lcom/google/android/apps/unveil/env/gl/PassthroughRenderer;->quadProgram:Lcom/google/android/apps/unveil/env/gl/ShaderProgram;

    sget-object v6, Lcom/google/android/apps/unveil/env/gl/ShaderProgram$ATTRIBUTE_SLOT;->VERTEX:Lcom/google/android/apps/unveil/env/gl/ShaderProgram$ATTRIBUTE_SLOT;

    invoke-virtual {v5, v6}, Lcom/google/android/apps/unveil/env/gl/ShaderProgram;->declareAttribute(Lcom/google/android/apps/unveil/env/gl/ShaderProgram$ATTRIBUTE_SLOT;)I

    .line 138
    iget-object v5, p0, Lcom/google/android/apps/unveil/env/gl/PassthroughRenderer;->quadProgram:Lcom/google/android/apps/unveil/env/gl/ShaderProgram;

    sget-object v6, Lcom/google/android/apps/unveil/env/gl/ShaderProgram$ATTRIBUTE_SLOT;->TEXUV:Lcom/google/android/apps/unveil/env/gl/ShaderProgram$ATTRIBUTE_SLOT;

    invoke-virtual {v5, v6}, Lcom/google/android/apps/unveil/env/gl/ShaderProgram;->declareAttribute(Lcom/google/android/apps/unveil/env/gl/ShaderProgram$ATTRIBUTE_SLOT;)I

    .line 139
    iget-object v5, p0, Lcom/google/android/apps/unveil/env/gl/PassthroughRenderer;->quadProgram:Lcom/google/android/apps/unveil/env/gl/ShaderProgram;

    sget-object v6, Lcom/google/android/apps/unveil/env/gl/ShaderProgram$UNIFORM_SLOT;->TEX_Y:Lcom/google/android/apps/unveil/env/gl/ShaderProgram$UNIFORM_SLOT;

    invoke-virtual {v5, v6}, Lcom/google/android/apps/unveil/env/gl/ShaderProgram;->declareUniform(Lcom/google/android/apps/unveil/env/gl/ShaderProgram$UNIFORM_SLOT;)I

    .line 140
    iget-object v5, p0, Lcom/google/android/apps/unveil/env/gl/PassthroughRenderer;->quadProgram:Lcom/google/android/apps/unveil/env/gl/ShaderProgram;

    sget-object v6, Lcom/google/android/apps/unveil/env/gl/ShaderProgram$UNIFORM_SLOT;->TEX_UV:Lcom/google/android/apps/unveil/env/gl/ShaderProgram$UNIFORM_SLOT;

    invoke-virtual {v5, v6}, Lcom/google/android/apps/unveil/env/gl/ShaderProgram;->declareUniform(Lcom/google/android/apps/unveil/env/gl/ShaderProgram$UNIFORM_SLOT;)I

    .line 144
    new-instance v5, Lcom/google/android/apps/unveil/env/gl/ShaderProgram;

    const-string v6, "BoundingBoxShader"

    invoke-direct {v5, v6}, Lcom/google/android/apps/unveil/env/gl/ShaderProgram;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/google/android/apps/unveil/env/gl/PassthroughRenderer;->boxProgram:Lcom/google/android/apps/unveil/env/gl/ShaderProgram;

    .line 145
    iget-object v5, p0, Lcom/google/android/apps/unveil/env/gl/PassthroughRenderer;->boxProgram:Lcom/google/android/apps/unveil/env/gl/ShaderProgram;

    invoke-virtual {v5, v3}, Lcom/google/android/apps/unveil/env/gl/ShaderProgram;->attach(Lcom/google/android/apps/unveil/env/gl/ShaderProgram$Shader;)V

    .line 146
    iget-object v5, p0, Lcom/google/android/apps/unveil/env/gl/PassthroughRenderer;->boxProgram:Lcom/google/android/apps/unveil/env/gl/ShaderProgram;

    invoke-virtual {v5, v0}, Lcom/google/android/apps/unveil/env/gl/ShaderProgram;->attach(Lcom/google/android/apps/unveil/env/gl/ShaderProgram$Shader;)V

    .line 147
    iget-object v5, p0, Lcom/google/android/apps/unveil/env/gl/PassthroughRenderer;->boxProgram:Lcom/google/android/apps/unveil/env/gl/ShaderProgram;

    invoke-virtual {v5}, Lcom/google/android/apps/unveil/env/gl/ShaderProgram;->link()V

    .line 149
    iget-object v5, p0, Lcom/google/android/apps/unveil/env/gl/PassthroughRenderer;->boxProgram:Lcom/google/android/apps/unveil/env/gl/ShaderProgram;

    sget-object v6, Lcom/google/android/apps/unveil/env/gl/ShaderProgram$ATTRIBUTE_SLOT;->VERTEX:Lcom/google/android/apps/unveil/env/gl/ShaderProgram$ATTRIBUTE_SLOT;

    invoke-virtual {v5, v6}, Lcom/google/android/apps/unveil/env/gl/ShaderProgram;->declareAttribute(Lcom/google/android/apps/unveil/env/gl/ShaderProgram$ATTRIBUTE_SLOT;)I

    .line 150
    iget-object v5, p0, Lcom/google/android/apps/unveil/env/gl/PassthroughRenderer;->boxProgram:Lcom/google/android/apps/unveil/env/gl/ShaderProgram;

    sget-object v6, Lcom/google/android/apps/unveil/env/gl/ShaderProgram$UNIFORM_SLOT;->COLOR:Lcom/google/android/apps/unveil/env/gl/ShaderProgram$UNIFORM_SLOT;

    invoke-virtual {v5, v6}, Lcom/google/android/apps/unveil/env/gl/ShaderProgram;->declareUniform(Lcom/google/android/apps/unveil/env/gl/ShaderProgram$UNIFORM_SLOT;)I

    .line 151
    iget-object v5, p0, Lcom/google/android/apps/unveil/env/gl/PassthroughRenderer;->boxProgram:Lcom/google/android/apps/unveil/env/gl/ShaderProgram;

    sget-object v6, Lcom/google/android/apps/unveil/env/gl/ShaderProgram$UNIFORM_SLOT;->PVMATRIX:Lcom/google/android/apps/unveil/env/gl/ShaderProgram$UNIFORM_SLOT;

    invoke-virtual {v5, v6}, Lcom/google/android/apps/unveil/env/gl/ShaderProgram;->declareUniform(Lcom/google/android/apps/unveil/env/gl/ShaderProgram$UNIFORM_SLOT;)I

    .line 153
    iget-object v5, p0, Lcom/google/android/apps/unveil/env/gl/PassthroughRenderer;->boundingBoxes:Lcom/google/android/apps/unveil/env/gl/BoundingBoxLayer;

    if-eqz v5, :cond_c5

    .line 155
    const/4 v2, 0x0

    .local v2, i:I
    :goto_af
    iget-object v5, p0, Lcom/google/android/apps/unveil/env/gl/PassthroughRenderer;->boundingBoxes:Lcom/google/android/apps/unveil/env/gl/BoundingBoxLayer;

    invoke-virtual {v5}, Lcom/google/android/apps/unveil/env/gl/BoundingBoxLayer;->getCount()I

    move-result v5

    if-ge v2, v5, :cond_c5

    .line 156
    iget-object v5, p0, Lcom/google/android/apps/unveil/env/gl/PassthroughRenderer;->boundingBoxes:Lcom/google/android/apps/unveil/env/gl/BoundingBoxLayer;

    invoke-virtual {v5, v2}, Lcom/google/android/apps/unveil/env/gl/BoundingBoxLayer;->get(I)Lcom/google/android/apps/unveil/env/gl/BoundingBox;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/apps/unveil/env/gl/PassthroughRenderer;->boxProgram:Lcom/google/android/apps/unveil/env/gl/ShaderProgram;

    invoke-virtual {v5, v6}, Lcom/google/android/apps/unveil/env/gl/BoundingBox;->setProgram(Lcom/google/android/apps/unveil/env/gl/ShaderProgram;)V
    :try_end_c2
    .catchall {:try_start_1 .. :try_end_c2} :catchall_c7

    .line 155
    add-int/lit8 v2, v2, 0x1

    goto :goto_af

    .line 159
    .end local v2           #i:I
    :cond_c5
    monitor-exit p0

    return-void

    .line 117
    .end local v0           #fShaderBox:Lcom/google/android/apps/unveil/env/gl/ShaderProgram$Shader;
    .end local v1           #fShaderQuad:Lcom/google/android/apps/unveil/env/gl/ShaderProgram$Shader;
    .end local v3           #vShaderBox:Lcom/google/android/apps/unveil/env/gl/ShaderProgram$Shader;
    .end local v4           #vShaderQuad:Lcom/google/android/apps/unveil/env/gl/ShaderProgram$Shader;
    :catchall_c7
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public pxToGLCoords(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .registers 8
    .parameter "r"

    .prologue
    const/high16 v5, 0x4000

    const/high16 v3, 0x3f80

    const/4 v4, 0x0

    .line 195
    iget-object v1, p0, Lcom/google/android/apps/unveil/env/gl/PassthroughRenderer;->screenSize:Lcom/google/android/apps/unveil/env/Size;

    if-nez v1, :cond_19

    .line 196
    sget-object v1, Lcom/google/android/apps/unveil/env/gl/PassthroughRenderer;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v2, "pxToGLCoords called before onSurfaceChanged"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v4, v4, v4, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 205
    :goto_18
    return-object v0

    .line 200
    :cond_19
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 201
    .local v0, ret:Landroid/graphics/RectF;
    iget v1, p1, Landroid/graphics/RectF;->left:F

    mul-float/2addr v1, v5

    iget-object v2, p0, Lcom/google/android/apps/unveil/env/gl/PassthroughRenderer;->screenSize:Lcom/google/android/apps/unveil/env/Size;

    iget v2, v2, Lcom/google/android/apps/unveil/env/Size;->width:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    sub-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 202
    iget v1, p1, Landroid/graphics/RectF;->right:F

    mul-float/2addr v1, v5

    iget-object v2, p0, Lcom/google/android/apps/unveil/env/gl/PassthroughRenderer;->screenSize:Lcom/google/android/apps/unveil/env/Size;

    iget v2, v2, Lcom/google/android/apps/unveil/env/Size;->width:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    sub-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 203
    iget v1, p1, Landroid/graphics/RectF;->top:F

    mul-float/2addr v1, v5

    iget-object v2, p0, Lcom/google/android/apps/unveil/env/gl/PassthroughRenderer;->screenSize:Lcom/google/android/apps/unveil/env/Size;

    iget v2, v2, Lcom/google/android/apps/unveil/env/Size;->height:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    sub-float v1, v3, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 204
    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v1, v5

    iget-object v2, p0, Lcom/google/android/apps/unveil/env/gl/PassthroughRenderer;->screenSize:Lcom/google/android/apps/unveil/env/Size;

    iget v2, v2, Lcom/google/android/apps/unveil/env/Size;->height:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    sub-float v1, v3, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    goto :goto_18
.end method
