.class Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EglHelper;
.super Ljava/lang/Object;
.source "GLWallpaperService.java"


# instance fields
.field private mEGLConfigChooser:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EGLConfigChooser;

.field private mEGLContextFactory:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EGLContextFactory;

.field private mEGLWindowSurfaceFactory:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EGLWindowSurfaceFactory;

.field private mEgl:Ljavax/microedition/khronos/egl/EGL10;

.field mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field private mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private mGLWrapper:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLWrapper;

.field private mHolder:Landroid/view/SurfaceHolder;


# direct methods
.method public constructor <init>(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EGLConfigChooser;Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EGLContextFactory;Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EGLWindowSurfaceFactory;Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLWrapper;)V
    .registers 5
    .parameter "chooser"
    .parameter "contextFactory"
    .parameter "surfaceFactory"
    .parameter "wrapper"

    .prologue
    .line 366
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 367
    iput-object p1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EglHelper;->mEGLConfigChooser:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EGLConfigChooser;

    .line 368
    iput-object p2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EglHelper;->mEGLContextFactory:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EGLContextFactory;

    .line 369
    iput-object p3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EglHelper;->mEGLWindowSurfaceFactory:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EGLWindowSurfaceFactory;

    .line 370
    iput-object p4, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EglHelper;->mGLWrapper:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLWrapper;

    .line 371
    return-void
.end method


# virtual methods
.method public createSurface(Landroid/view/SurfaceHolder;)Ljavax/microedition/khronos/opengles/GL;
    .registers 8
    .parameter "holder"

    .prologue
    .line 433
    iput-object p1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EglHelper;->mHolder:Landroid/view/SurfaceHolder;

    .line 437
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v1, v2, :cond_24

    .line 442
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v2, v3, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 443
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EglHelper;->mEGLWindowSurfaceFactory:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EGLWindowSurfaceFactory;

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v1, v2, v3, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EGLWindowSurfaceFactory;->destroySurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 449
    :cond_24
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EglHelper;->mEGLWindowSurfaceFactory:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EGLWindowSurfaceFactory;

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v1, v2, v3, v4, p1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EGLWindowSurfaceFactory;->createWindowSurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 451
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v1, :cond_3c

    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v1, v2, :cond_44

    .line 452
    :cond_3c
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "createWindowSurface failed"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 458
    :cond_44
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v5, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v2, v3, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v1

    if-nez v1, :cond_5c

    .line 459
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "eglMakeCurrent failed."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 462
    :cond_5c
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v1}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    .line 463
    .local v0, gl:Ljavax/microedition/khronos/opengles/GL;
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EglHelper;->mGLWrapper:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLWrapper;

    if-eqz v1, :cond_6c

    .line 464
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EglHelper;->mGLWrapper:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLWrapper;

    invoke-interface {v1, v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLWrapper;->wrap(Ljavax/microedition/khronos/opengles/GL;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    .line 473
    :cond_6c
    return-object v0
.end method

.method public destroySurface()V
    .registers 6

    .prologue
    .line 492
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v0, v1, :cond_35

    .line 493
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 494
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EglHelper;->mHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_32

    .line 496
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EglHelper;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 498
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EglHelper;->mEGLWindowSurfaceFactory:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EGLWindowSurfaceFactory;

    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EGLWindowSurfaceFactory;->destroySurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 506
    :cond_32
    :goto_32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 508
    :cond_35
    return-void

    .line 502
    :cond_36
    const-string v0, "EglHelper"

    const-string v1, "Surface is invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32
.end method

.method public finish()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 511
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_12

    .line 512
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EglHelper;->mEGLContextFactory:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EGLContextFactory;

    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EGLContextFactory;->destroyContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 513
    iput-object v4, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 515
    :cond_12
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v0, :cond_1f

    .line 516
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 517
    iput-object v4, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 519
    :cond_1f
    return-void
.end method

.method public start()V
    .registers 6

    .prologue
    .line 380
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    if-nez v1, :cond_c

    .line 385
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v1

    check-cast v1, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 390
    :cond_c
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-nez v1, :cond_1a

    .line 395
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 400
    :cond_1a
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    if-nez v1, :cond_34

    .line 405
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 406
    .local v0, version:[I
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    .line 407
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EglHelper;->mEGLConfigChooser:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EGLConfigChooser;

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2, v3}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EGLConfigChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 412
    .end local v0           #version:[I
    :cond_34
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-nez v1, :cond_58

    .line 417
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EglHelper;->mEGLContextFactory:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EGLContextFactory;

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v1, v2, v3, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EGLContextFactory;->createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 418
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v1, :cond_50

    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v1, v2, :cond_58

    .line 419
    :cond_50
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "createContext failed"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 425
    :cond_58
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 426
    return-void
.end method

.method public swap()Z
    .registers 4

    .prologue
    .line 482
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 488
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    const/16 v1, 0x300e

    if-eq v0, v1, :cond_15

    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method
