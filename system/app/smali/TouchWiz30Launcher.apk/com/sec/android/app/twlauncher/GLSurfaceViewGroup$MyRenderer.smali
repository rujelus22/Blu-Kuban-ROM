.class Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$MyRenderer;
.super Ljava/lang/Object;
.source "GLSurfaceViewGroup.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyRenderer"
.end annotation


# instance fields
.field mGraph:Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;

.field mGraphRenderer:Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;

.field private mSurfaceCreated:Z

.field final synthetic this$0:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;)V
    .registers 3
    .parameter

    .prologue
    .line 347
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$MyRenderer;->this$0:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 350
    new-instance v0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;

    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$MyRenderer;->mGraphRenderer:Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;

    .line 351
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$MyRenderer;->mSurfaceCreated:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized getSceneGraph()Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;
    .registers 2

    .prologue
    .line 427
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$MyRenderer;->mGraph:Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isReady()Z
    .registers 2

    .prologue
    .line 414
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$MyRenderer;->mSurfaceCreated:Z

    return v0
.end method

.method public declared-synchronized onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 7
    .parameter "gl"

    .prologue
    .line 362
    monitor-enter p0

    const/16 v1, 0xc11

    :try_start_3
    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 363
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {p1, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    .line 364
    const/16 v1, 0x4000

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    .line 365
    const/16 v1, 0xbe2

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 366
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$MyRenderer;->getSceneGraph()Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;

    move-result-object v0

    .line 367
    .local v0, graph:Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;
    if-eqz v0, :cond_49

    .line 368
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$MyRenderer;->this$0:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    const/4 v2, 0x0

    #setter for: Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mDrawBlackFrame:Z
    invoke-static {v1, v2}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->access$002(Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;Z)Z

    .line 369
    sget-object v2, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->sTextureUploadLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_46

    .line 370
    :try_start_26
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$MyRenderer;->mGraphRenderer:Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$MyRenderer;->this$0:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$MyRenderer;->this$0:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getHeight()I

    move-result v4

    invoke-virtual {v1, v0, v3, v4}, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;->render(Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;II)V

    .line 371
    monitor-exit v2
    :try_end_38
    .catchall {:try_start_26 .. :try_end_38} :catchall_43

    .line 391
    :cond_38
    :goto_38
    :try_start_38
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$MyRenderer;->this$0:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    #getter for: Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mWaitFrameSemaphore:Ljava/util/concurrent/Semaphore;
    invoke-static {v1}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->access$100(Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;)Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_41
    .catchall {:try_start_38 .. :try_end_41} :catchall_46

    .line 400
    monitor-exit p0

    return-void

    .line 371
    :catchall_43
    move-exception v1

    :try_start_44
    monitor-exit v2
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    :try_start_45
    throw v1
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_46

    .line 362
    .end local v0           #graph:Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;
    :catchall_46
    move-exception v1

    monitor-exit p0

    throw v1

    .line 372
    .restart local v0       #graph:Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;
    :cond_49
    :try_start_49
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$MyRenderer;->this$0:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    #getter for: Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mDrawBlackFrame:Z
    invoke-static {v1}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->access$000(Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 373
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    invoke-interface {p1, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    .line 374
    const/16 v1, 0x4000

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    goto :goto_38

    .line 375
    :cond_5f
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$MyRenderer;->this$0:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_38

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$MyRenderer;->this$0:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getQuickViewMainMenu()Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->isOpened()Z

    move-result v1

    if-nez v1, :cond_38

    .line 376
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x3f30a3d7

    invoke-interface {p1, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    .line 377
    const/16 v1, 0x4000

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V
    :try_end_91
    .catchall {:try_start_49 .. :try_end_91} :catchall_46

    goto :goto_38
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .registers 4
    .parameter "gl"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 418
    return-void
.end method

.method public declared-synchronized onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .registers 5
    .parameter "gl"
    .parameter "config"

    .prologue
    .line 403
    monitor-enter p0

    const/4 v1, -0x8

    :try_start_2
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 404
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$MyRenderer;->mGraphRenderer:Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;->onContextLost()V

    .line 405
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$MyRenderer;->this$0:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    #calls: Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->refreshAllPreloaded()V
    invoke-static {v1}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->access$200(Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;)V

    .line 406
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$MyRenderer;->setSceneGraph(Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;)V

    .line 407
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$MyRenderer;->this$0:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/Launcher;

    .line 408
    .local v0, launcher:Lcom/sec/android/app/twlauncher/Launcher;
    new-instance v1, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$GLSurfaceCreatedNotifier;

    invoke-direct {v1, v0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$GLSurfaceCreatedNotifier;-><init>(Lcom/sec/android/app/twlauncher/Launcher;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 409
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$MyRenderer;->this$0:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->postInvalidate()V

    .line 410
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$MyRenderer;->mSurfaceCreated:Z
    :try_end_2b
    .catchall {:try_start_2 .. :try_end_2b} :catchall_2d

    .line 411
    monitor-exit p0

    return-void

    .line 403
    .end local v0           #launcher:Lcom/sec/android/app/twlauncher/Launcher;
    :catchall_2d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setSceneGraph(Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;)V
    .registers 3
    .parameter "graph"

    .prologue
    .line 421
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$MyRenderer;->mGraph:Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;

    if-eqz v0, :cond_a

    .line 422
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$MyRenderer;->mGraph:Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;->recycle()V

    .line 423
    :cond_a
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$MyRenderer;->mGraph:Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 424
    monitor-exit p0

    return-void

    .line 421
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method
