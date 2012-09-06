.class Lcom/google/android/maps/driveabout/vector/bC;
.super Ljava/lang/Object;
.source "SourceFile"


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
    .parameter

    .prologue
    .line 777
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 778
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/bC;->f:Ljava/lang/ref/WeakReference;

    .line 779
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 985
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bC;->a:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/android/maps/driveabout/vector/bC;->a(Ljava/lang/String;I)V

    .line 986
    return-void
.end method

.method public static a(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 989
    invoke-static {p0, p1}, Lcom/google/android/maps/driveabout/vector/bC;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 994
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 999
    return-void
.end method

.method public static b(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1002
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private g()V
    .registers 6

    .prologue
    .line 955
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bC;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bC;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v0, v1, :cond_31

    .line 956
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bC;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bC;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 959
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bC;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;

    .line 960
    if-eqz v0, :cond_2e

    .line 961
    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->d(Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;)Lcom/google/android/maps/driveabout/vector/bB;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bC;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bC;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bC;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/vector/bB;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 963
    :cond_2e
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bC;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 965
    :cond_31
    return-void
.end method


# virtual methods
.method public a()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 788
    const-string v0, "GmmGLTextureView.start"

    invoke-static {v0}, Lcom/google/googlenav/common/util/o;->a(Ljava/lang/String;)V

    .line 797
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bC;->a:Ljavax/microedition/khronos/egl/EGL10;

    .line 802
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bC;->a:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bC;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 804
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bC;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v0, v1, :cond_26

    .line 805
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglGetDisplay failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 811
    :cond_26
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 812
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bC;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bC;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 813
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglInitialize failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 815
    :cond_3b
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bC;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;

    .line 816
    if-nez v0, :cond_62

    .line 817
    iput-object v4, p0, Lcom/google/android/maps/driveabout/vector/bC;->d:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 818
    iput-object v4, p0, Lcom/google/android/maps/driveabout/vector/bC;->e:Ljavax/microedition/khronos/egl/EGLContext;

    .line 828
    :goto_49
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bC;->e:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bC;->e:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v0, v1, :cond_5a

    .line 829
    :cond_53
    iput-object v4, p0, Lcom/google/android/maps/driveabout/vector/bC;->e:Ljavax/microedition/khronos/egl/EGLContext;

    .line 830
    const-string v0, "createContext"

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/bC;->a(Ljava/lang/String;)V

    .line 836
    :cond_5a
    iput-object v4, p0, Lcom/google/android/maps/driveabout/vector/bC;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 840
    const-string v0, "GmmGLTextureView.start"

    invoke-static {v0}, Lcom/google/googlenav/common/util/o;->b(Ljava/lang/String;)V

    .line 842
    return-void

    .line 820
    :cond_62
    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->b(Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;)Lcom/google/android/maps/driveabout/vector/bl;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bC;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bC;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2, v3}, Lcom/google/android/maps/driveabout/vector/bl;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/bC;->d:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 826
    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->c(Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;)Lcom/google/android/maps/driveabout/vector/bA;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bC;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bC;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bC;->d:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/vector/bA;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bC;->e:Ljavax/microedition/khronos/egl/EGLContext;

    goto :goto_49
.end method

.method public b()Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 857
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bC;->a:Ljavax/microedition/khronos/egl/EGL10;

    if-nez v0, :cond_d

    .line 858
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "egl not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 860
    :cond_d
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bC;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-nez v0, :cond_19

    .line 861
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglDisplay not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 863
    :cond_19
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bC;->d:Ljavax/microedition/khronos/egl/EGLConfig;

    if-nez v0, :cond_25

    .line 864
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mEglConfig not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 871
    :cond_25
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bC;->g()V

    .line 876
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bC;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;

    .line 877
    if-eqz v0, :cond_5c

    .line 878
    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->d(Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;)Lcom/google/android/maps/driveabout/vector/bB;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bC;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/bC;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/bC;->d:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-interface {v2, v3, v4, v5, v0}, Lcom/google/android/maps/driveabout/vector/bB;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bC;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 884
    :goto_46
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bC;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bC;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v0, v2, :cond_60

    .line 885
    :cond_50
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bC;->a:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 886
    const/16 v2, 0x300b

    if-ne v0, v2, :cond_5a

    :cond_5a
    move v0, v1

    .line 905
    :goto_5b
    return v0

    .line 881
    :cond_5c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bC;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    goto :goto_46

    .line 896
    :cond_60
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bC;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bC;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bC;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/bC;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/bC;->e:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v2, v3, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_7f

    .line 901
    const-string v0, "EGLHelper"

    const-string v2, "eglMakeCurrent"

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bC;->a:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/google/android/maps/driveabout/vector/bC;->a(Ljava/lang/String;Ljava/lang/String;I)V

    move v0, v1

    .line 902
    goto :goto_5b

    .line 905
    :cond_7f
    const/4 v0, 0x1

    goto :goto_5b
.end method

.method c()Ljavax/microedition/khronos/opengles/GL;
    .registers 6

    .prologue
    .line 914
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bC;->e:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v0}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v1

    .line 915
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bC;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;

    .line 916
    if-eqz v0, :cond_42

    .line 917
    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->e(Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;)Lcom/google/android/maps/driveabout/vector/br;

    move-result-object v2

    if-eqz v2, :cond_1e

    .line 918
    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->e(Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;)Lcom/google/android/maps/driveabout/vector/br;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/google/android/maps/driveabout/vector/br;->a(Ljavax/microedition/khronos/opengles/GL;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v1

    .line 921
    :cond_1e
    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->f(Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;)I

    move-result v2

    and-int/lit8 v2, v2, 0x3

    if-eqz v2, :cond_42

    .line 922
    const/4 v2, 0x0

    .line 923
    const/4 v3, 0x0

    .line 924
    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->f(Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;)I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_31

    .line 925
    const/4 v2, 0x1

    .line 927
    :cond_31
    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->f(Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_43

    .line 928
    new-instance v0, Lcom/google/android/maps/driveabout/vector/bF;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/vector/bF;-><init>()V

    .line 930
    :goto_3e
    invoke-static {v1, v2, v0}, Landroid/opengl/GLDebugHelper;->wrap(Ljavax/microedition/khronos/opengles/GL;ILjava/io/Writer;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v1

    .line 933
    :cond_42
    return-object v1

    :cond_43
    move-object v0, v3

    goto :goto_3e
.end method

.method public d()I
    .registers 4

    .prologue
    .line 941
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bC;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bC;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bC;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 942
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bC;->a:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 944
    :goto_12
    return v0

    :cond_13
    const/16 v0, 0x3000

    goto :goto_12
.end method

.method public e()V
    .registers 1

    .prologue
    .line 951
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bC;->g()V

    .line 952
    return-void
.end method

.method public f()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 971
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bC;->e:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_1e

    .line 972
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bC;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;

    .line 973
    if-eqz v0, :cond_1c

    .line 974
    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->c(Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;)Lcom/google/android/maps/driveabout/vector/bA;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bC;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bC;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bC;->e:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/vector/bA;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 976
    :cond_1c
    iput-object v4, p0, Lcom/google/android/maps/driveabout/vector/bC;->e:Ljavax/microedition/khronos/egl/EGLContext;

    .line 978
    :cond_1e
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bC;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v0, :cond_2b

    .line 979
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bC;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bC;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 980
    iput-object v4, p0, Lcom/google/android/maps/driveabout/vector/bC;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 982
    :cond_2b
    return-void
.end method
