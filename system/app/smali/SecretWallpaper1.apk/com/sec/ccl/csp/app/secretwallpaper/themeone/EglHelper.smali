.class Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EglHelper;
.super Ljava/lang/Object;
.source "GLWallpaperService.java"


# instance fields
.field private mEGLConfigChooser:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EGLConfigChooser;

.field private mEGLContextFactory:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EGLContextFactory;

.field private mEGLWindowSurfaceFactory:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EGLWindowSurfaceFactory;

.field private mEgl:Ljavax/microedition/khronos/egl/EGL10;

.field mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field private mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private mGLWrapper:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLWrapper;

.field private mHolder:Landroid/view/SurfaceHolder;


# direct methods
.method public constructor <init>(Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EGLConfigChooser;Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EGLContextFactory;Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EGLWindowSurfaceFactory;Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLWrapper;)V
    .registers 5
    .parameter "chooser"
    .parameter "contextFactory"
    .parameter "surfaceFactory"
    .parameter "wrapper"

    .prologue
    .line 370
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 371
    iput-object p1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EglHelper;->mEGLConfigChooser:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EGLConfigChooser;

    .line 372
    iput-object p2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EglHelper;->mEGLContextFactory:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EGLContextFactory;

    .line 373
    iput-object p3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EglHelper;->mEGLWindowSurfaceFactory:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EGLWindowSurfaceFactory;

    .line 374
    iput-object p4, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EglHelper;->mGLWrapper:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLWrapper;

    .line 375
    return-void
.end method


# virtual methods
.method public createSurface(Landroid/view/SurfaceHolder;)Ljavax/microedition/khronos/opengles/GL;
    .registers 8
    .parameter "holder"

    .prologue
    .line 437
    iput-object p1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EglHelper;->mHolder:Landroid/view/SurfaceHolder;

    .line 441
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v1, v2, :cond_24

    .line 446
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v2, v3, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 447
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EglHelper;->mEGLWindowSurfaceFactory:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EGLWindowSurfaceFactory;

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v1, v2, v3, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EGLWindowSurfaceFactory;->destroySurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 453
    :cond_24
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EglHelper;->mEGLWindowSurfaceFactory:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EGLWindowSurfaceFactory;

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v1, v2, v3, v4, p1}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EGLWindowSurfaceFactory;->createWindowSurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 455
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v1, :cond_3c

    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v1, v2, :cond_44

    .line 456
    :cond_3c
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "createWindowSurface failed"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 462
    :cond_44
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v5, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v2, v3, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v1

    if-nez v1, :cond_5c

    .line 463
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "eglMakeCurrent failed."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 466
    :cond_5c
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v1}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    .line 467
    .local v0, gl:Ljavax/microedition/khronos/opengles/GL;
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EglHelper;->mGLWrapper:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLWrapper;

    if-eqz v1, :cond_6c

    .line 468
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EglHelper;->mGLWrapper:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLWrapper;

    invoke-interface {v1, v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLWrapper;->wrap(Ljavax/microedition/khronos/opengles/GL;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    .line 477
    :cond_6c
    return-object v0
.end method

.method public destroySurface()V
    .registers 6

    .prologue
    .line 496
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v0, v1, :cond_35

    .line 497
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 498
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EglHelper;->mHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_32

    .line 500
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EglHelper;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 502
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EglHelper;->mEGLWindowSurfaceFactory:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EGLWindowSurfaceFactory;

    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EGLWindowSurfaceFactory;->destroySurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 510
    :cond_32
    :goto_32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 512
    :cond_35
    return-void

    .line 506
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

    .line 515
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_12

    .line 516
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EglHelper;->mEGLContextFactory:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EGLContextFactory;

    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EGLContextFactory;->destroyContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 517
    iput-object v4, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 519
    :cond_12
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v0, :cond_1f

    .line 520
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 521
    iput-object v4, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 523
    :cond_1f
    return-void
.end method

.method public start()V
    .registers 6

    .prologue
    .line 384
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    if-nez v1, :cond_c

    .line 389
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v1

    check-cast v1, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 394
    :cond_c
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-nez v1, :cond_1a

    .line 399
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 404
    :cond_1a
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    if-nez v1, :cond_34

    .line 409
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 410
    .local v0, version:[I
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    .line 411
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EglHelper;->mEGLConfigChooser:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EGLConfigChooser;

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2, v3}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EGLConfigChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 416
    .end local v0           #version:[I
    :cond_34
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-nez v1, :cond_58

    .line 421
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EglHelper;->mEGLContextFactory:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EGLContextFactory;

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v1, v2, v3, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EGLContextFactory;->createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 422
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v1, :cond_50

    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v1, v2, :cond_58

    .line 423
    :cond_50
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "createContext failed"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 429
    :cond_58
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 430
    return-void
.end method

.method public swap()Z
    .registers 4

    .prologue
    .line 486
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 492
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

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
