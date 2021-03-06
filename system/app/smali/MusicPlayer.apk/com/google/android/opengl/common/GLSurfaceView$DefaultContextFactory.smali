.class Lcom/google/android/opengl/common/GLSurfaceView$DefaultContextFactory;
.super Ljava/lang/Object;
.source "GLSurfaceView.java"

# interfaces
.implements Lcom/google/android/opengl/common/GLSurfaceView$EGLContextFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/opengl/common/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultContextFactory"
.end annotation


# instance fields
.field private EGL_CONTEXT_CLIENT_VERSION:I

.field final synthetic this$0:Lcom/google/android/opengl/common/GLSurfaceView;


# direct methods
.method private constructor <init>(Lcom/google/android/opengl/common/GLSurfaceView;)V
    .registers 3
    .parameter

    .prologue
    .line 756
    iput-object p1, p0, Lcom/google/android/opengl/common/GLSurfaceView$DefaultContextFactory;->this$0:Lcom/google/android/opengl/common/GLSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 757
    const/16 v0, 0x3098

    iput v0, p0, Lcom/google/android/opengl/common/GLSurfaceView$DefaultContextFactory;->EGL_CONTEXT_CLIENT_VERSION:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/opengl/common/GLSurfaceView;Lcom/google/android/opengl/common/GLSurfaceView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 756
    invoke-direct {p0, p1}, Lcom/google/android/opengl/common/GLSurfaceView$DefaultContextFactory;-><init>(Lcom/google/android/opengl/common/GLSurfaceView;)V

    return-void
.end method


# virtual methods
.method public createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;
    .registers 7
    .parameter "egl"
    .parameter "display"
    .parameter "config"

    .prologue
    .line 760
    const/4 v1, 0x3

    new-array v0, v1, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/opengl/common/GLSurfaceView$DefaultContextFactory;->EGL_CONTEXT_CLIENT_VERSION:I

    aput v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/opengl/common/GLSurfaceView$DefaultContextFactory;->this$0:Lcom/google/android/opengl/common/GLSurfaceView;

    #getter for: Lcom/google/android/opengl/common/GLSurfaceView;->mEGLContextClientVersion:I
    invoke-static {v2}, Lcom/google/android/opengl/common/GLSurfaceView;->access$200(Lcom/google/android/opengl/common/GLSurfaceView;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x3038

    aput v2, v0, v1

    .line 763
    .local v0, attrib_list:[I
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    iget-object v2, p0, Lcom/google/android/opengl/common/GLSurfaceView$DefaultContextFactory;->this$0:Lcom/google/android/opengl/common/GLSurfaceView;

    #getter for: Lcom/google/android/opengl/common/GLSurfaceView;->mEGLContextClientVersion:I
    invoke-static {v2}, Lcom/google/android/opengl/common/GLSurfaceView;->access$200(Lcom/google/android/opengl/common/GLSurfaceView;)I

    move-result v2

    if-eqz v2, :cond_25

    .end local v0           #attrib_list:[I
    :goto_20
    invoke-interface {p1, p2, p3, v1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    return-object v1

    .restart local v0       #attrib_list:[I
    :cond_25
    const/4 v0, 0x0

    goto :goto_20
.end method

.method public destroyContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V
    .registers 7
    .parameter "egl"
    .parameter "display"
    .parameter "context"

    .prologue
    .line 769
    invoke-interface {p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 770
    const-string v0, "DefaultContextFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "display:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " context: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    const-string v0, "eglDestroyContex"

    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;->throwEglException(Ljava/lang/String;I)V

    .line 776
    :cond_31
    return-void
.end method
