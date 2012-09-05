.class Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;
.super Ljava/lang/Object;
.source "GLCanvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/GLCanvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SceneGraphRenderer"
.end annotation


# instance fields
.field private mFBO:I

.field private mGLObjects:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/sec/android/app/twlauncher/GLCanvas$GLObject;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mNativeRenderCache:I

.field private mObjectFinalizeQueue:Lcom/sec/android/app/twlauncher/GLCanvas$ObjectFinalizeQueue;

.field private temp:[I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 1202
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1194
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;->mFBO:I

    .line 1196
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;->mGLObjects:Ljava/util/WeakHashMap;

    .line 1198
    new-instance v0, Lcom/sec/android/app/twlauncher/GLCanvas$ObjectFinalizeQueue;

    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/GLCanvas$ObjectFinalizeQueue;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;->mObjectFinalizeQueue:Lcom/sec/android/app/twlauncher/GLCanvas$ObjectFinalizeQueue;

    .line 1200
    #calls: Lcom/sec/android/app/twlauncher/GLCanvas;->createRenderCache()I
    invoke-static {}, Lcom/sec/android/app/twlauncher/GLCanvas;->access$1200()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;->mNativeRenderCache:I

    .line 1242
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;->temp:[I

    .line 1203
    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;)Lcom/sec/android/app/twlauncher/GLCanvas$ObjectFinalizeQueue;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1193
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;->mObjectFinalizeQueue:Lcom/sec/android/app/twlauncher/GLCanvas$ObjectFinalizeQueue;

    return-object v0
.end method


# virtual methods
.method public addGLObject(Lcom/sec/android/app/twlauncher/GLCanvas$GLObject;)V
    .registers 4
    .parameter "obj"

    .prologue
    .line 1269
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;->mGLObjects:Ljava/util/WeakHashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1270
    return-void
.end method

.method clearRenderTarget()V
    .registers 5

    .prologue
    const v3, 0x8d40

    const/4 v2, 0x0

    .line 1260
    iget v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;->mFBO:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_19

    .line 1261
    iget v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;->mFBO:I

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 1262
    const v0, 0x8ce0

    const/16 v1, 0xde1

    invoke-static {v3, v0, v1, v2, v2}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 1264
    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 1266
    :cond_19
    return-void
.end method

.method public finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1287
    iget v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;->mNativeRenderCache:I

    #calls: Lcom/sec/android/app/twlauncher/GLCanvas;->destroyRenderCache(I)V
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->access$1300(I)V

    .line 1288
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1289
    return-void
.end method

.method public onContextLost()V
    .registers 4

    .prologue
    .line 1273
    const/4 v2, -0x1

    iput v2, p0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;->mFBO:I

    .line 1274
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;->mGLObjects:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/GLCanvas$GLObject;

    .line 1275
    .local v1, obj:Lcom/sec/android/app/twlauncher/GLCanvas$GLObject;
    invoke-interface {v1}, Lcom/sec/android/app/twlauncher/GLCanvas$GLObject;->onContextLost()V

    goto :goto_d

    .line 1277
    .end local v1           #obj:Lcom/sec/android/app/twlauncher/GLCanvas$GLObject;
    :cond_1d
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;->mGLObjects:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->clear()V

    .line 1280
    new-instance v2, Lcom/sec/android/app/twlauncher/GLCanvas$ObjectFinalizeQueue;

    invoke-direct {v2}, Lcom/sec/android/app/twlauncher/GLCanvas$ObjectFinalizeQueue;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;->mObjectFinalizeQueue:Lcom/sec/android/app/twlauncher/GLCanvas$ObjectFinalizeQueue;

    .line 1282
    iget v2, p0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;->mNativeRenderCache:I

    #calls: Lcom/sec/android/app/twlauncher/GLCanvas;->destroyRenderCache(I)V
    invoke-static {v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->access$1300(I)V

    .line 1283
    #calls: Lcom/sec/android/app/twlauncher/GLCanvas;->createRenderCache()I
    invoke-static {}, Lcom/sec/android/app/twlauncher/GLCanvas;->access$1200()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;->mNativeRenderCache:I

    .line 1284
    return-void
.end method

.method preRender(Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;)V
    .registers 6
    .parameter "graph"

    .prologue
    .line 1226
    iget-object v3, p1, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;->mPreloadShaders:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/ShaderProgram;

    .line 1227
    .local v1, p:Lcom/sec/android/app/twlauncher/ShaderProgram;
    invoke-virtual {v1, p0}, Lcom/sec/android/app/twlauncher/ShaderProgram;->create(Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;)V

    goto :goto_6

    .line 1229
    .end local v1           #p:Lcom/sec/android/app/twlauncher/ShaderProgram;
    :cond_16
    iget-object v3, p1, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;->mSurfaces:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

    .line 1230
    .local v2, s:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;
    invoke-virtual {v2, p0}, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->preRender(Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;)V

    goto :goto_1c

    .line 1233
    .end local v2           #s:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;
    :cond_2c
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;->resendSurfaces()V

    .line 1234
    invoke-virtual {p1, p0}, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;->resendGeometries(Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;)V

    .line 1235
    invoke-virtual {p1, p0}, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;->resendShaderPrograms(Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;)V

    .line 1236
    return-void
.end method

.method render(Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;II)V
    .registers 6
    .parameter "graph"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v1, 0x0

    .line 1206
    const/16 v0, 0xb44

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 1208
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;->preRender(Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;)V

    .line 1211
    const/16 v0, 0x900

    invoke-static {v0}, Landroid/opengl/GLES20;->glFrontFace(I)V

    .line 1212
    const v0, 0x8d40

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 1213
    invoke-static {v1, v1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 1215
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;->renderQuads(Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;)V

    .line 1217
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;->mObjectFinalizeQueue:Lcom/sec/android/app/twlauncher/GLCanvas$ObjectFinalizeQueue;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLCanvas$ObjectFinalizeQueue;->doCleanup()V

    .line 1218
    return-void
.end method

.method renderQuads(Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;)V
    .registers 3
    .parameter "graph"

    .prologue
    .line 1239
    iget v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;->mNativeRenderCache:I

    invoke-virtual {p1, v0}, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;->renderQuads(I)V

    .line 1240
    return-void
.end method

.method setRenderTarget(III)V
    .registers 9
    .parameter "textureId"
    .parameter "width"
    .parameter "height"

    .prologue
    const v3, 0x8d40

    const/4 v4, 0x0

    .line 1245
    iget v1, p0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;->mFBO:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_15

    .line 1246
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;->temp:[I

    invoke-static {v1, v2, v4}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 1247
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;->temp:[I

    aget v1, v1, v4

    iput v1, p0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;->mFBO:I

    .line 1249
    :cond_15
    iget v1, p0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;->mFBO:I

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 1250
    const v1, 0x8ce0

    const/16 v2, 0xde1

    invoke-static {v3, v1, v2, p1, v4}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 1252
    invoke-static {v3}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    move-result v0

    .line 1253
    .local v0, res:I
    const v1, 0x8cd5

    if-eq v0, v1, :cond_43

    .line 1254
    const-string v1, "GLCanvas"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Framebuffer not complete: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    :cond_43
    invoke-static {v4, v4, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 1257
    return-void
.end method
