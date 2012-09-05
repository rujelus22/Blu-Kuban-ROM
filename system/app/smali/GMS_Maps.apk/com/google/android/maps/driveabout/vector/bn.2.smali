.class Lcom/google/android/maps/driveabout/vector/bn;
.super Ljava/lang/Object;


# instance fields
.field a:Ljavax/microedition/khronos/egl/EGL10;

.field b:Ljavax/microedition/khronos/egl/EGLDisplay;

.field c:Ljavax/microedition/khronos/egl/EGLSurface;

.field d:Ljavax/microedition/khronos/egl/EGLConfig;

.field e:Ljavax/microedition/khronos/egl/EGLContext;

.field private f:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/bn;->f:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bn;->a:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/maps/driveabout/vector/bn;->a(Ljava/lang/String;I)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/google/android/maps/driveabout/vector/L;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private g()V
    .registers 6

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bn;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bn;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v0, v1, :cond_31

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bn;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bn;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bn;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;

    if-eqz v0, :cond_2e

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->d(Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;)Lcom/google/android/maps/driveabout/vector/bm;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bn;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bn;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bn;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/vector/bm;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)V

    :cond_2e
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bn;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    :cond_31
    return-void
.end method


# virtual methods
.method public a()V
    .registers 6

    const/4 v4, 0x0

    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bn;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bn;->a:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bn;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bn;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v0, v1, :cond_21

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglGetDisplay failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bn;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bn;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v0

    if-nez v0, :cond_36

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglInitialize failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_36
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bn;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;

    if-nez v0, :cond_58

    iput-object v4, p0, Lcom/google/android/maps/driveabout/vector/bn;->d:Ljavax/microedition/khronos/egl/EGLConfig;

    iput-object v4, p0, Lcom/google/android/maps/driveabout/vector/bn;->e:Ljavax/microedition/khronos/egl/EGLContext;

    :goto_44
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bn;->e:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bn;->e:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v0, v1, :cond_55

    :cond_4e
    iput-object v4, p0, Lcom/google/android/maps/driveabout/vector/bn;->e:Ljavax/microedition/khronos/egl/EGLContext;

    const-string v0, "createContext"

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/bn;->a(Ljava/lang/String;)V

    :cond_55
    iput-object v4, p0, Lcom/google/android/maps/driveabout/vector/bn;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    return-void

    :cond_58
    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->b(Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;)Lcom/google/android/maps/driveabout/vector/bk;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bn;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bn;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2, v3}, Lcom/google/android/maps/driveabout/vector/bk;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/bn;->d:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->c(Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;)Lcom/google/android/maps/driveabout/vector/bl;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bn;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bn;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bn;->d:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/vector/bl;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bn;->e:Ljavax/microedition/khronos/egl/EGLContext;

    goto :goto_44
.end method

.method public b()Z
    .registers 6

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bn;->a:Ljavax/microedition/khronos/egl/EGL10;

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "egl not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bn;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-nez v0, :cond_18

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglDisplay not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bn;->d:Ljavax/microedition/khronos/egl/EGLConfig;

    if-nez v0, :cond_24

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mEglConfig not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bn;->g()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bn;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;

    if-eqz v0, :cond_5b

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->d(Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;)Lcom/google/android/maps/driveabout/vector/bm;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bn;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bn;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/bn;->d:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/google/android/maps/driveabout/vector/bm;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bn;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    :goto_45
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bn;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bn;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v0, v1, :cond_5f

    :cond_4f
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bn;->a:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    const/16 v1, 0x300b

    if-ne v0, v1, :cond_59

    :cond_59
    const/4 v0, 0x0

    :goto_5a
    return v0

    :cond_5b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bn;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    goto :goto_45

    :cond_5f
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bn;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bn;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bn;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bn;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/bn;->e:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_74

    const-string v0, "eglMakeCurrent"

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/bn;->a(Ljava/lang/String;)V

    :cond_74
    const/4 v0, 0x1

    goto :goto_5a
.end method

.method c()Ljavax/microedition/khronos/opengles/GL;
    .registers 6

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bn;->e:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v0}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bn;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;

    if-eqz v0, :cond_42

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->e(Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;)Lcom/google/android/maps/driveabout/vector/bq;

    move-result-object v2

    if-eqz v2, :cond_1e

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->e(Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;)Lcom/google/android/maps/driveabout/vector/bq;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/google/android/maps/driveabout/vector/bq;->a(Ljavax/microedition/khronos/opengles/GL;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v1

    :cond_1e
    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f(Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;)I

    move-result v2

    and-int/lit8 v2, v2, 0x3

    if-eqz v2, :cond_42

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f(Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;)I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_31

    const/4 v2, 0x1

    :cond_31
    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f(Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_43

    new-instance v0, Lcom/google/android/maps/driveabout/vector/br;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/vector/br;-><init>()V

    :goto_3e
    invoke-static {v1, v2, v0}, Landroid/opengl/GLDebugHelper;->wrap(Ljavax/microedition/khronos/opengles/GL;ILjava/io/Writer;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v1

    :cond_42
    return-object v1

    :cond_43
    move-object v0, v3

    goto :goto_3e
.end method

.method public d()Z
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bn;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bn;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bn;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bn;->a:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    packed-switch v0, :pswitch_data_1e

    :pswitch_15
    const-string v1, "eglSwapBuffers"

    invoke-direct {p0, v1, v0}, Lcom/google/android/maps/driveabout/vector/bn;->a(Ljava/lang/String;I)V

    :cond_1a
    :pswitch_1a
    const/4 v0, 0x1

    :goto_1b
    return v0

    :pswitch_1c
    const/4 v0, 0x0

    goto :goto_1b

    :pswitch_data_1e
    .packed-switch 0x300b
        :pswitch_1a
        :pswitch_15
        :pswitch_15
        :pswitch_1c
    .end packed-switch
.end method

.method public e()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bn;->g()V

    return-void
.end method

.method public f()V
    .registers 6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bn;->e:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bn;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;

    if-eqz v0, :cond_1c

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->c(Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;)Lcom/google/android/maps/driveabout/vector/bl;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bn;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bn;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bn;->e:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/vector/bl;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V

    :cond_1c
    iput-object v4, p0, Lcom/google/android/maps/driveabout/vector/bn;->e:Ljavax/microedition/khronos/egl/EGLContext;

    :cond_1e
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bn;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bn;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bn;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    iput-object v4, p0, Lcom/google/android/maps/driveabout/vector/bn;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    :cond_2b
    return-void
.end method
