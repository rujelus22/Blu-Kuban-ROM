.class Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;
.super Ljava/lang/Object;
.source "GLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/opengl/common/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EglHelper"
.end annotation


# instance fields
.field mEgl:Ljavax/microedition/khronos/egl/EGL10;

.field mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field final synthetic this$0:Lcom/google/android/opengl/common/GLSurfaceView;


# direct methods
.method public constructor <init>(Lcom/google/android/opengl/common/GLSurfaceView;)V
    .registers 2
    .parameter

    .prologue
    .line 953
    iput-object p1, p0, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;->this$0:Lcom/google/android/opengl/common/GLSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 955
    return-void
.end method

.method private throwEglException(Ljava/lang/String;)V
    .registers 3
    .parameter "function"

    .prologue
    .line 1149
    iget-object v0, p0, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;->throwEglException(Ljava/lang/String;I)V

    .line 1150
    return-void
.end method

.method private throwEglException(Ljava/lang/String;I)V
    .registers 6
    .parameter "function"
    .parameter "error"

    .prologue
    .line 1153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1157
    .local v0, message:Ljava/lang/String;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method createGL()Ljavax/microedition/khronos/opengles/GL;
    .registers 5

    .prologue
    .line 1072
    iget-object v3, p0, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v3}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v1

    .line 1073
    .local v1, gl:Ljavax/microedition/khronos/opengles/GL;
    iget-object v3, p0, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;->this$0:Lcom/google/android/opengl/common/GLSurfaceView;

    #getter for: Lcom/google/android/opengl/common/GLSurfaceView;->mGLWrapper:Lcom/google/android/opengl/common/GLSurfaceView$GLWrapper;
    invoke-static {v3}, Lcom/google/android/opengl/common/GLSurfaceView;->access$600(Lcom/google/android/opengl/common/GLSurfaceView;)Lcom/google/android/opengl/common/GLSurfaceView$GLWrapper;

    move-result-object v3

    if-eqz v3, :cond_18

    .line 1074
    iget-object v3, p0, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;->this$0:Lcom/google/android/opengl/common/GLSurfaceView;

    #getter for: Lcom/google/android/opengl/common/GLSurfaceView;->mGLWrapper:Lcom/google/android/opengl/common/GLSurfaceView$GLWrapper;
    invoke-static {v3}, Lcom/google/android/opengl/common/GLSurfaceView;->access$600(Lcom/google/android/opengl/common/GLSurfaceView;)Lcom/google/android/opengl/common/GLSurfaceView$GLWrapper;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/google/android/opengl/common/GLSurfaceView$GLWrapper;->wrap(Ljavax/microedition/khronos/opengles/GL;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v1

    .line 1077
    :cond_18
    iget-object v3, p0, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;->this$0:Lcom/google/android/opengl/common/GLSurfaceView;

    #getter for: Lcom/google/android/opengl/common/GLSurfaceView;->mDebugFlags:I
    invoke-static {v3}, Lcom/google/android/opengl/common/GLSurfaceView;->access$700(Lcom/google/android/opengl/common/GLSurfaceView;)I

    move-result v3

    and-int/lit8 v3, v3, 0x3

    if-eqz v3, :cond_43

    .line 1078
    const/4 v0, 0x0

    .line 1079
    .local v0, configFlags:I
    const/4 v2, 0x0

    .line 1080
    .local v2, log:Ljava/io/Writer;
    iget-object v3, p0, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;->this$0:Lcom/google/android/opengl/common/GLSurfaceView;

    #getter for: Lcom/google/android/opengl/common/GLSurfaceView;->mDebugFlags:I
    invoke-static {v3}, Lcom/google/android/opengl/common/GLSurfaceView;->access$700(Lcom/google/android/opengl/common/GLSurfaceView;)I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_30

    .line 1081
    or-int/lit8 v0, v0, 0x1

    .line 1083
    :cond_30
    iget-object v3, p0, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;->this$0:Lcom/google/android/opengl/common/GLSurfaceView;

    #getter for: Lcom/google/android/opengl/common/GLSurfaceView;->mDebugFlags:I
    invoke-static {v3}, Lcom/google/android/opengl/common/GLSurfaceView;->access$700(Lcom/google/android/opengl/common/GLSurfaceView;)I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_3f

    .line 1084
    new-instance v2, Lcom/google/android/opengl/common/GLSurfaceView$LogWriter;

    .end local v2           #log:Ljava/io/Writer;
    invoke-direct {v2}, Lcom/google/android/opengl/common/GLSurfaceView$LogWriter;-><init>()V

    .line 1086
    .restart local v2       #log:Ljava/io/Writer;
    :cond_3f
    invoke-static {v1, v0, v2}, Landroid/opengl/GLDebugHelper;->wrap(Ljavax/microedition/khronos/opengles/GL;ILjava/io/Writer;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v1

    .line 1088
    .end local v0           #configFlags:I
    .end local v2           #log:Ljava/io/Writer;
    :cond_43
    return-object v1
.end method

.method public createSurface(Landroid/view/SurfaceHolder;)Z
    .registers 8
    .parameter "holder"

    .prologue
    .line 1017
    iget-object v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    if-nez v1, :cond_c

    .line 1018
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "egl not initialized"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1020
    :cond_c
    iget-object v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-nez v1, :cond_18

    .line 1021
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "eglDisplay not initialized"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1023
    :cond_18
    iget-object v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    if-nez v1, :cond_24

    .line 1024
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "mEglConfig not initialized"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1030
    :cond_24
    iget-object v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v1, :cond_4a

    iget-object v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v1, v2, :cond_4a

    .line 1036
    iget-object v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v2, v3, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 1038
    iget-object v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;->this$0:Lcom/google/android/opengl/common/GLSurfaceView;

    #getter for: Lcom/google/android/opengl/common/GLSurfaceView;->mEGLWindowSurfaceFactory:Lcom/google/android/opengl/common/GLSurfaceView$EGLWindowSurfaceFactory;
    invoke-static {v1}, Lcom/google/android/opengl/common/GLSurfaceView;->access$500(Lcom/google/android/opengl/common/GLSurfaceView;)Lcom/google/android/opengl/common/GLSurfaceView$EGLWindowSurfaceFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/opengl/common/GLSurfaceView$EGLWindowSurfaceFactory;->destroySurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 1044
    :cond_4a
    iget-object v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;->this$0:Lcom/google/android/opengl/common/GLSurfaceView;

    #getter for: Lcom/google/android/opengl/common/GLSurfaceView;->mEGLWindowSurfaceFactory:Lcom/google/android/opengl/common/GLSurfaceView$EGLWindowSurfaceFactory;
    invoke-static {v1}, Lcom/google/android/opengl/common/GLSurfaceView;->access$500(Lcom/google/android/opengl/common/GLSurfaceView;)Lcom/google/android/opengl/common/GLSurfaceView$EGLWindowSurfaceFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v1, v2, v3, v4, p1}, Lcom/google/android/opengl/common/GLSurfaceView$EGLWindowSurfaceFactory;->createWindowSurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 1047
    iget-object v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v1, :cond_66

    iget-object v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v1, v2, :cond_79

    .line 1048
    :cond_66
    iget-object v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 1049
    .local v0, error:I
    const/16 v1, 0x300b

    if-ne v0, v1, :cond_77

    .line 1050
    const-string v1, "EglHelper"

    const-string v2, "createWindowSurface returned EGL_BAD_NATIVE_WINDOW."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    :cond_77
    const/4 v1, 0x0

    .line 1063
    .end local v0           #error:I
    :goto_78
    return v1

    .line 1059
    :cond_79
    iget-object v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v5, p0, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v2, v3, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v1

    if-nez v1, :cond_8e

    .line 1060
    const-string v1, "eglMakeCurrent"

    invoke-direct {p0, v1}, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;->throwEglException(Ljava/lang/String;)V

    .line 1063
    :cond_8e
    const/4 v1, 0x1

    goto :goto_78
.end method

.method public destroySurface()V
    .registers 6

    .prologue
    .line 1125
    iget-object v0, p0, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v0, v1, :cond_29

    .line 1126
    iget-object v0, p0, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 1129
    iget-object v0, p0, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;->this$0:Lcom/google/android/opengl/common/GLSurfaceView;

    #getter for: Lcom/google/android/opengl/common/GLSurfaceView;->mEGLWindowSurfaceFactory:Lcom/google/android/opengl/common/GLSurfaceView$EGLWindowSurfaceFactory;
    invoke-static {v0}, Lcom/google/android/opengl/common/GLSurfaceView;->access$500(Lcom/google/android/opengl/common/GLSurfaceView;)Lcom/google/android/opengl/common/GLSurfaceView$EGLWindowSurfaceFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/opengl/common/GLSurfaceView$EGLWindowSurfaceFactory;->destroySurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 1130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 1132
    :cond_29
    return-void
.end method

.method public finish()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1138
    iget-object v0, p0, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_16

    .line 1139
    iget-object v0, p0, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;->this$0:Lcom/google/android/opengl/common/GLSurfaceView;

    #getter for: Lcom/google/android/opengl/common/GLSurfaceView;->mEGLContextFactory:Lcom/google/android/opengl/common/GLSurfaceView$EGLContextFactory;
    invoke-static {v0}, Lcom/google/android/opengl/common/GLSurfaceView;->access$400(Lcom/google/android/opengl/common/GLSurfaceView;)Lcom/google/android/opengl/common/GLSurfaceView$EGLContextFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/opengl/common/GLSurfaceView$EGLContextFactory;->destroyContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 1140
    iput-object v4, p0, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 1142
    :cond_16
    iget-object v0, p0, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v0, :cond_23

    .line 1143
    iget-object v0, p0, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 1144
    iput-object v4, p0, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 1146
    :cond_23
    return-void
.end method

.method public start()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 968
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v1

    check-cast v1, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 973
    iget-object v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 975
    iget-object v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v1, v2, :cond_21

    .line 976
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "eglGetDisplay failed"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 982
    :cond_21
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 983
    .local v0, version:[I
    iget-object v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v1

    if-nez v1, :cond_36

    .line 984
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "eglInitialize failed"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 986
    :cond_36
    iget-object v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;->this$0:Lcom/google/android/opengl/common/GLSurfaceView;

    #getter for: Lcom/google/android/opengl/common/GLSurfaceView;->mEGLConfigChooser:Lcom/google/android/opengl/common/GLSurfaceView$EGLConfigChooser;
    invoke-static {v1}, Lcom/google/android/opengl/common/GLSurfaceView;->access$300(Lcom/google/android/opengl/common/GLSurfaceView;)Lcom/google/android/opengl/common/GLSurfaceView$EGLConfigChooser;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2, v3}, Lcom/google/android/opengl/common/GLSurfaceView$EGLConfigChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 992
    iget-object v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;->this$0:Lcom/google/android/opengl/common/GLSurfaceView;

    #getter for: Lcom/google/android/opengl/common/GLSurfaceView;->mEGLContextFactory:Lcom/google/android/opengl/common/GLSurfaceView$EGLContextFactory;
    invoke-static {v1}, Lcom/google/android/opengl/common/GLSurfaceView;->access$400(Lcom/google/android/opengl/common/GLSurfaceView;)Lcom/google/android/opengl/common/GLSurfaceView$EGLContextFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/opengl/common/GLSurfaceView$EGLContextFactory;->createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 993
    iget-object v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v1, :cond_62

    iget-object v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v1, v2, :cond_69

    .line 994
    :cond_62
    iput-object v5, p0, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 995
    const-string v1, "createContext"

    invoke-direct {p0, v1}, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;->throwEglException(Ljava/lang/String;)V

    .line 1001
    :cond_69
    iput-object v5, p0, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 1002
    return-void
.end method

.method public swap()Z
    .registers 6

    .prologue
    .line 1096
    iget-object v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v1, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 1104
    iget-object v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 1105
    .local v0, error:I
    packed-switch v0, :pswitch_data_40

    .line 1115
    :pswitch_15
    const-string v1, "eglSwapBuffers"

    invoke-direct {p0, v1, v0}, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;->throwEglException(Ljava/lang/String;I)V

    .line 1118
    .end local v0           #error:I
    :cond_1a
    :goto_1a
    const/4 v1, 0x1

    :goto_1b
    return v1

    .line 1107
    .restart local v0       #error:I
    :pswitch_1c
    const/4 v1, 0x0

    goto :goto_1b

    .line 1112
    :pswitch_1e
    const-string v1, "EglHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "eglSwapBuffers returned EGL_BAD_NATIVE_WINDOW. tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    .line 1105
    nop

    :pswitch_data_40
    .packed-switch 0x300b
        :pswitch_1e
        :pswitch_15
        :pswitch_15
        :pswitch_1c
    .end packed-switch
.end method
