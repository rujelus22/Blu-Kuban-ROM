.class public LEx;
.super Ljava/lang/Object;
.source "TrixGLGridView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLContextFactory;


# static fields
.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    const/16 v0, 0x3098

    sput v0, LEx;->a:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(LEw;)V
    .registers 2
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, LEx;-><init>()V

    return-void
.end method


# virtual methods
.method public createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x2

    .line 32
    invoke-static {}, Lcom/google/android/apps/docs/editors/trix/TrixGLGridView;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "creating OpenGL ES 2.0 context"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    const-string v0, "Before eglCreateContext"

    invoke-static {v0, p1}, Lcom/google/android/apps/docs/editors/trix/TrixGLGridView;->a(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V

    .line 34
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, LEx;->a:I

    aput v2, v0, v1

    const/4 v1, 0x1

    aput v3, v0, v1

    const/16 v1, 0x3038

    aput v1, v0, v3

    .line 35
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {p1, p2, p3, v1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    .line 37
    const-string v1, "After eglCreateContext"

    invoke-static {v1, p1}, Lcom/google/android/apps/docs/editors/trix/TrixGLGridView;->a(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V

    .line 38
    return-object v0
.end method

.method public destroyContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-interface {p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 44
    return-void
.end method
