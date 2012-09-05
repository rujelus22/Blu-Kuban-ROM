.class final Lcom/sdgtl/mediahub/spr/customview/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLContextFactory;


# static fields
.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x3098

    sput v0, Lcom/sdgtl/mediahub/spr/customview/c;->a:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/customview/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;
    .registers 9

    const/4 v1, 0x0

    :try_start_1
    invoke-static {}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->access$4()Ljava/lang/String;

    move-result-object v0

    const-string v2, "creating OpenGL ES 2.0 context"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Before eglCreateContext"

    #calls: Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->checkEglError(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V
    invoke-static {v0, p1}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->access$5(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V

    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v2, 0x0

    sget v3, Lcom/sdgtl/mediahub/spr/customview/c;->a:I

    aput v3, v0, v2

    const/4 v2, 0x1

    const/4 v3, 0x2

    aput v3, v0, v2

    const/4 v2, 0x2

    const/16 v3, 0x3038

    aput v3, v0, v2

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {p1, p2, p3, v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_25} :catch_2c

    move-result-object v0

    :try_start_26
    const-string v1, "After eglCreateContext"

    #calls: Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->checkEglError(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V
    invoke-static {v1, p1}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->access$5(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2b} :catch_34

    :goto_2b
    return-object v0

    :catch_2c
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    :goto_30
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2b

    :catch_34
    move-exception v1

    goto :goto_30
.end method

.method public final destroyContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V
    .registers 5

    :try_start_0
    invoke-interface {p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    invoke-static {}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->access$1()Lcom/sdgtl/mediahub/spr/customview/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/customview/j;->a()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    :goto_a
    return-void

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a
.end method
