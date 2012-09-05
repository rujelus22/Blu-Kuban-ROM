.class Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/DefaultWindowSurfaceFactory;
.super Ljava/lang/Object;
.source "GLWallpaperService.java"

# interfaces
.implements Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EGLWindowSurfaceFactory;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 315
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createWindowSurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLSurface;
    .registers 9
    .parameter "egl"
    .parameter "display"
    .parameter "config"
    .parameter "nativeWindow"

    .prologue
    .line 319
    const/4 v0, 0x0

    .line 320
    .local v0, eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;
    :cond_1
    :goto_1
    if-nez v0, :cond_28

    .line 322
    const/4 v1, 0x0

    :try_start_4
    invoke-interface {p1, p2, p3, p4, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_1d
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_7} :catch_12

    move-result-object v0

    .line 325
    if-nez v0, :cond_1

    .line 327
    const-wide/16 v1, 0xa

    :try_start_c
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_f} :catch_10

    goto :goto_1

    .line 328
    :catch_10
    move-exception v1

    goto :goto_1

    .line 323
    :catch_12
    move-exception v1

    .line 325
    if-nez v0, :cond_1

    .line 327
    const-wide/16 v1, 0xa

    :try_start_17
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1a
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_1a} :catch_1b

    goto :goto_1

    .line 328
    :catch_1b
    move-exception v1

    goto :goto_1

    .line 325
    :catchall_1d
    move-exception v1

    if-nez v0, :cond_25

    .line 327
    const-wide/16 v2, 0xa

    :try_start_22
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_25
    .catch Ljava/lang/InterruptedException; {:try_start_22 .. :try_end_25} :catch_26

    .line 329
    :cond_25
    :goto_25
    throw v1

    .line 328
    :catch_26
    move-exception v2

    goto :goto_25

    .line 333
    :cond_28
    return-object v0
.end method

.method public destroySurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)V
    .registers 4
    .parameter "egl"
    .parameter "display"
    .parameter "surface"

    .prologue
    .line 337
    invoke-interface {p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 338
    return-void
.end method
