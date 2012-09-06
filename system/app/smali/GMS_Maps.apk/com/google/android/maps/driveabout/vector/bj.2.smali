.class Lcom/google/android/maps/driveabout/vector/bj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/bm;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;

.field private b:I


# direct methods
.method private constructor <init>(Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;)V
    .registers 3
    .parameter

    .prologue
    .line 830
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/bj;->a:Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 831
    const/16 v0, 0x3098

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->b:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;Lcom/google/android/maps/driveabout/vector/bg;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 830
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/bj;-><init>(Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;)V

    return-void
.end method


# virtual methods
.method public a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 834
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/bj;->b:I

    aput v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bj;->a:Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;

    invoke-static {v2}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->a(Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x3038

    aput v2, v0, v1

    .line 837
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bj;->a:Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;

    invoke-static {v2}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->a(Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;)I

    move-result v2

    if-eqz v2, :cond_25

    :goto_20
    invoke-interface {p1, p2, p3, v1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    return-object v0

    :cond_25
    const/4 v0, 0x0

    goto :goto_20
.end method

.method public a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 843
    invoke-interface {p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 848
    const-string v0, "eglDestroyContex"

    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/vector/bo;->a(Ljava/lang/String;I)V

    .line 850
    :cond_f
    return-void
.end method
