.class public Lcom/google/android/apps/unveil/ui/GlOverlay;
.super Landroid/opengl/GLSurfaceView;
.source "GlOverlay.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/unveil/ui/GlOverlay$RenderCallback;
    }
.end annotation


# instance fields
.field private final renderCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/unveil/ui/GlOverlay$RenderCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v5, 0x0

    const/16 v1, 0x8

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/ui/GlOverlay;->renderCallbacks:Ljava/util/ArrayList;

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    move v6, v5

    .line 33
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/unveil/ui/GlOverlay;->setEGLConfigChooser(IIIIII)V

    .line 35
    invoke-virtual {p0, p0}, Lcom/google/android/apps/unveil/ui/GlOverlay;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 36
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/ui/GlOverlay;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x2

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 37
    invoke-virtual {p0, v5}, Lcom/google/android/apps/unveil/ui/GlOverlay;->setRenderMode(I)V

    .line 38
    return-void
.end method

.method private reset(Ljavax/microedition/khronos/opengles/GL10;II)V
    .registers 7
    .parameter "gl"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v0, 0x0

    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 74
    invoke-interface {p1, v0, v0, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 75
    const/16 v0, 0x1701

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 76
    invoke-static {p1, v1, v2, v1, v2}, Landroid/opengl/GLU;->gluOrtho2D(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 78
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 79
    const/16 v0, 0x1700

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 80
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 81
    return-void
.end method


# virtual methods
.method public declared-synchronized addRenderCallback(Lcom/google/android/apps/unveil/ui/GlOverlay$RenderCallback;)V
    .registers 3
    .parameter "renderCallback"

    .prologue
    .line 41
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/unveil/ui/GlOverlay;->renderCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 42
    monitor-exit p0

    return-void

    .line 41
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 6
    .parameter "gl"

    .prologue
    .line 56
    monitor-enter p0

    const/16 v2, 0x4100

    :try_start_3
    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    .line 58
    iget-object v2, p0, Lcom/google/android/apps/unveil/ui/GlOverlay;->renderCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/unveil/ui/GlOverlay$RenderCallback;

    .line 59
    .local v1, renderCallback:Lcom/google/android/apps/unveil/ui/GlOverlay$RenderCallback;
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/ui/GlOverlay;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/ui/GlOverlay;->getHeight()I

    move-result v3

    invoke-direct {p0, p1, v2, v3}, Lcom/google/android/apps/unveil/ui/GlOverlay;->reset(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 60
    invoke-interface {v1, p1}, Lcom/google/android/apps/unveil/ui/GlOverlay$RenderCallback;->drawOverlay(Ljavax/microedition/khronos/opengles/GL10;)V
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_27

    goto :goto_c

    .line 56
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #renderCallback:Lcom/google/android/apps/unveil/ui/GlOverlay$RenderCallback;
    :catchall_27
    move-exception v2

    monitor-exit p0

    throw v2

    .line 62
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_2a
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .registers 5
    .parameter "gl"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 66
    monitor-enter p0

    if-nez p3, :cond_4

    .line 67
    const/4 p3, 0x1

    .line 70
    :cond_4
    :try_start_4
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/unveil/ui/GlOverlay;->reset(Ljavax/microedition/khronos/opengles/GL10;II)V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_9

    .line 71
    monitor-exit p0

    return-void

    .line 66
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .registers 7
    .parameter "gl"
    .parameter "config"

    .prologue
    .line 46
    monitor-enter p0

    const/16 v0, 0xc50

    const/16 v1, 0x1101

    :try_start_5
    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glHint(II)V

    .line 48
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    .line 49
    const/16 v0, 0xb44

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 50
    const/16 v0, 0x1d01

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glShadeModel(I)V

    .line 51
    const/16 v0, 0xb71

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_20

    .line 52
    monitor-exit p0

    return-void

    .line 46
    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method
