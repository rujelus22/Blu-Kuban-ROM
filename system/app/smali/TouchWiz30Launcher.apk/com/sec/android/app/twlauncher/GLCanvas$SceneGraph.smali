.class Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;
.super Ljava/lang/Object;
.source "GLCanvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/GLCanvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SceneGraph"
.end annotation


# instance fields
.field mGeometriesToResend:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;",
            ">;"
        }
    .end annotation
.end field

.field private mNativeSelf:I

.field mPreloadShaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/twlauncher/ShaderProgram;",
            ">;"
        }
    .end annotation
.end field

.field mShadersToResend:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/twlauncher/ShaderProgram;",
            ">;"
        }
    .end annotation
.end field

.field mSurfaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/twlauncher/GLCanvas$Surface;",
            ">;"
        }
    .end annotation
.end field

.field mSurfacesToResend:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/twlauncher/GLCanvas$Surface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 1089
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1075
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;->mSurfaces:Ljava/util/List;

    .line 1077
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;->mPreloadShaders:Ljava/util/List;

    .line 1081
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;->mGeometriesToResend:Ljava/util/List;

    .line 1083
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;->mShadersToResend:Ljava/util/List;

    .line 1085
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;->mSurfacesToResend:Ljava/util/List;

    .line 1090
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;->nativeInit()V

    .line 1091
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 1074
    iget v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;->mNativeSelf:I

    return v0
.end method

.method static native nativeClassInit()V
.end method

.method private native nativeFinalize()V
.end method

.method private native replaceGeometry(IIIII)V
.end method

.method private native replaceShaderProgram(II)V
.end method

.method private native replaceTexture(II)V
.end method


# virtual methods
.method public addSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;)V
    .registers 3
    .parameter "surface"

    .prologue
    .line 1105
    if-eqz p1, :cond_7

    .line 1106
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;->mSurfaces:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1107
    :cond_7
    return-void
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1095
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1097
    :try_start_3
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;->nativeFinalize()V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_7

    .line 1100
    return-void

    .line 1098
    :catchall_7
    move-exception v0

    throw v0
.end method

.method native nativeInit()V
.end method

.method public preloadShader(Lcom/sec/android/app/twlauncher/ShaderProgram;)V
    .registers 3
    .parameter "p"

    .prologue
    .line 1110
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;->mPreloadShaders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1111
    return-void
.end method

.method public recycle()V
    .registers 1

    .prologue
    .line 1115
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;->nativeFinalize()V

    .line 1116
    return-void
.end method

.method native renderQuads(I)V
.end method

.method resendGeometries(Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;)V
    .registers 10
    .parameter "renderer"

    .prologue
    .line 1119
    const/4 v1, -0x1

    .line 1120
    .local v1, oldId:I
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;->mGeometriesToResend:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;

    .line 1121
    .local v6, g:Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;
    invoke-virtual {v6, p1}, Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;->uploadIfNeeded(Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;)V

    .line 1122
    #getter for: Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;->mVertexVBO:I
    invoke-static {v6}, Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;->access$400(Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;)I

    move-result v2

    #getter for: Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;->mIndexVBO:I
    invoke-static {v6}, Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;->access$500(Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;)I

    move-result v3

    #getter for: Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;->mCount:I
    invoke-static {v6}, Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;->access$600(Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;)I

    move-result v4

    #getter for: Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;->mComponentCount:I
    invoke-static {v6}, Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;->access$700(Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;)I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;->replaceGeometry(IIIII)V

    .line 1123
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    .line 1125
    .end local v6           #g:Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;
    :cond_2d
    return-void
.end method

.method resendShaderPrograms(Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;)V
    .registers 6
    .parameter "renderer"

    .prologue
    .line 1131
    const/4 v1, -0x1

    .line 1132
    .local v1, oldId:I
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;->mShadersToResend:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/ShaderProgram;

    .line 1133
    .local v2, s:Lcom/sec/android/app/twlauncher/ShaderProgram;
    invoke-virtual {v2, p1}, Lcom/sec/android/app/twlauncher/ShaderProgram;->create(Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;)V

    .line 1134
    iget v3, v2, Lcom/sec/android/app/twlauncher/ShaderProgram;->prog:I

    invoke-direct {p0, v1, v3}, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;->replaceShaderProgram(II)V

    .line 1135
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    .line 1137
    .end local v2           #s:Lcom/sec/android/app/twlauncher/ShaderProgram;
    :cond_1e
    return-void
.end method

.method resendSurfaces()V
    .registers 5

    .prologue
    .line 1142
    const/4 v1, -0x1

    .line 1143
    .local v1, oldId:I
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;->mSurfacesToResend:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

    .line 1144
    .local v2, s:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;
    iget v3, v2, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->mTextureId:I

    invoke-direct {p0, v1, v3}, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;->replaceTexture(II)V

    .line 1145
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    .line 1147
    .end local v2           #s:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;
    :cond_1b
    return-void
.end method
