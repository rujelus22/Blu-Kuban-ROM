.class Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;
.super Ljava/lang/Object;
.source "GLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/opengl/glview/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EglHelper"
.end annotation


# instance fields
.field mEgl:Ljavax/microedition/khronos/egl/EGL10;

.field mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/opengl/glview/GLSurfaceView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/opengl/glview/GLSurfaceView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 978
    .local p1, glSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/google/android/opengl/glview/GLSurfaceView;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 979
    iput-object p1, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    .line 980
    return-void
.end method

.method private destroySurfaceImp()V
    .registers 7

    .prologue
    .line 1146
    iget-object v1, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v1, :cond_31

    iget-object v1, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v1, v2, :cond_31

    .line 1147
    iget-object v1, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v2, v3, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 1150
    iget-object v1, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/opengl/glview/GLSurfaceView;

    .line 1151
    .local v0, view:Lcom/google/android/opengl/glview/GLSurfaceView;
    if-eqz v0, :cond_2e

    .line 1152
    #getter for: Lcom/google/android/opengl/glview/GLSurfaceView;->mEGLWindowSurfaceFactory:Lcom/google/android/opengl/glview/GLSurfaceView$EGLWindowSurfaceFactory;
    invoke-static {v0}, Lcom/google/android/opengl/glview/GLSurfaceView;->access$500(Lcom/google/android/opengl/glview/GLSurfaceView;)Lcom/google/android/opengl/glview/GLSurfaceView$EGLWindowSurfaceFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/opengl/glview/GLSurfaceView$EGLWindowSurfaceFactory;->destroySurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 1154
    :cond_2e
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 1156
    .end local v0           #view:Lcom/google/android/opengl/glview/GLSurfaceView;
    :cond_31
    return-void
.end method

.method public static formatEglError(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .parameter "function"
    .parameter "error"

    .prologue
    .line 1193
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

.method public static logEglErrorAsWarning(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4
    .parameter "tag"
    .parameter "function"
    .parameter "error"

    .prologue
    .line 1189
    invoke-static {p1, p2}, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->formatEglError(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    return-void
.end method

.method private throwEglException(Ljava/lang/String;)V
    .registers 3
    .parameter "function"

    .prologue
    .line 1176
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->throwEglException(Ljava/lang/String;I)V

    .line 1177
    return-void
.end method

.method public static throwEglException(Ljava/lang/String;I)V
    .registers 4
    .parameter "function"
    .parameter "error"

    .prologue
    .line 1180
    invoke-static {p0, p1}, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->formatEglError(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1185
    .local v0, message:Ljava/lang/String;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method createGL()Ljavax/microedition/khronos/opengles/GL;
    .registers 6

    .prologue
    .line 1105
    iget-object v4, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v4}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v1

    .line 1106
    .local v1, gl:Ljavax/microedition/khronos/opengles/GL;
    iget-object v4, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/opengl/glview/GLSurfaceView;

    .line 1107
    .local v3, view:Lcom/google/android/opengl/glview/GLSurfaceView;
    if-eqz v3, :cond_43

    .line 1108
    #getter for: Lcom/google/android/opengl/glview/GLSurfaceView;->mGLWrapper:Lcom/google/android/opengl/glview/GLSurfaceView$GLWrapper;
    invoke-static {v3}, Lcom/google/android/opengl/glview/GLSurfaceView;->access$600(Lcom/google/android/opengl/glview/GLSurfaceView;)Lcom/google/android/opengl/glview/GLSurfaceView$GLWrapper;

    move-result-object v4

    if-eqz v4, :cond_1e

    .line 1109
    #getter for: Lcom/google/android/opengl/glview/GLSurfaceView;->mGLWrapper:Lcom/google/android/opengl/glview/GLSurfaceView$GLWrapper;
    invoke-static {v3}, Lcom/google/android/opengl/glview/GLSurfaceView;->access$600(Lcom/google/android/opengl/glview/GLSurfaceView;)Lcom/google/android/opengl/glview/GLSurfaceView$GLWrapper;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/google/android/opengl/glview/GLSurfaceView$GLWrapper;->wrap(Ljavax/microedition/khronos/opengles/GL;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v1

    .line 1112
    :cond_1e
    #getter for: Lcom/google/android/opengl/glview/GLSurfaceView;->mDebugFlags:I
    invoke-static {v3}, Lcom/google/android/opengl/glview/GLSurfaceView;->access$700(Lcom/google/android/opengl/glview/GLSurfaceView;)I

    move-result v4

    and-int/lit8 v4, v4, 0x3

    if-eqz v4, :cond_43

    .line 1113
    const/4 v0, 0x0

    .line 1114
    .local v0, configFlags:I
    const/4 v2, 0x0

    .line 1115
    .local v2, log:Ljava/io/Writer;
    #getter for: Lcom/google/android/opengl/glview/GLSurfaceView;->mDebugFlags:I
    invoke-static {v3}, Lcom/google/android/opengl/glview/GLSurfaceView;->access$700(Lcom/google/android/opengl/glview/GLSurfaceView;)I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_32

    .line 1116
    or-int/lit8 v0, v0, 0x1

    .line 1118
    :cond_32
    #getter for: Lcom/google/android/opengl/glview/GLSurfaceView;->mDebugFlags:I
    invoke-static {v3}, Lcom/google/android/opengl/glview/GLSurfaceView;->access$700(Lcom/google/android/opengl/glview/GLSurfaceView;)I

    move-result v4

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_3f

    .line 1119
    new-instance v2, Lcom/google/android/opengl/glview/GLSurfaceView$LogWriter;

    .end local v2           #log:Ljava/io/Writer;
    invoke-direct {v2}, Lcom/google/android/opengl/glview/GLSurfaceView$LogWriter;-><init>()V

    .line 1121
    .restart local v2       #log:Ljava/io/Writer;
    :cond_3f
    invoke-static {v1, v0, v2}, Landroid/opengl/GLDebugHelper;->wrap(Ljavax/microedition/khronos/opengles/GL;ILjava/io/Writer;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v1

    .line 1124
    .end local v0           #configFlags:I
    .end local v2           #log:Ljava/io/Writer;
    :cond_43
    return-object v1
.end method

.method public createSurface()Z
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 1048
    iget-object v3, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    if-nez v3, :cond_d

    .line 1049
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "egl not initialized"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1051
    :cond_d
    iget-object v3, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-nez v3, :cond_19

    .line 1052
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "eglDisplay not initialized"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1054
    :cond_19
    iget-object v3, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    if-nez v3, :cond_25

    .line 1055
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "mEglConfig not initialized"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1062
    :cond_25
    invoke-direct {p0}, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->destroySurfaceImp()V

    .line 1067
    iget-object v3, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/opengl/glview/GLSurfaceView;

    .line 1068
    .local v1, view:Lcom/google/android/opengl/glview/GLSurfaceView;
    if-eqz v1, :cond_62

    .line 1069
    #getter for: Lcom/google/android/opengl/glview/GLSurfaceView;->mEGLWindowSurfaceFactory:Lcom/google/android/opengl/glview/GLSurfaceView$EGLWindowSurfaceFactory;
    invoke-static {v1}, Lcom/google/android/opengl/glview/GLSurfaceView;->access$500(Lcom/google/android/opengl/glview/GLSurfaceView;)Lcom/google/android/opengl/glview/GLSurfaceView$EGLWindowSurfaceFactory;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v5, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v6, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-virtual {v1}, Lcom/google/android/opengl/glview/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v7

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/google/android/opengl/glview/GLSurfaceView$EGLWindowSurfaceFactory;->createWindowSurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 1075
    :goto_46
    iget-object v3, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v3, :cond_50

    iget-object v3, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v3, v4, :cond_66

    .line 1076
    :cond_50
    iget-object v3, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 1077
    .local v0, error:I
    const/16 v3, 0x300b

    if-ne v0, v3, :cond_61

    .line 1078
    const-string v3, "EglHelper"

    const-string v4, "createWindowSurface returned EGL_BAD_NATIVE_WINDOW."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    .end local v0           #error:I
    :cond_61
    :goto_61
    return v2

    .line 1072
    :cond_62
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    goto :goto_46

    .line 1087
    :cond_66
    iget-object v3, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v5, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v6, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v7, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v3, v4, v5, v6, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v3

    if-nez v3, :cond_84

    .line 1092
    const-string v3, "EGLHelper"

    const-string v4, "eglMakeCurrent"

    iget-object v5, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v5}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->logEglErrorAsWarning(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_61

    .line 1096
    :cond_84
    const/4 v2, 0x1

    goto :goto_61
.end method

.method public destroySurface()V
    .registers 1

    .prologue
    .line 1142
    invoke-direct {p0}, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->destroySurfaceImp()V

    .line 1143
    return-void
.end method

.method public finish()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 1162
    iget-object v1, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v1, :cond_1e

    .line 1163
    iget-object v1, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/opengl/glview/GLSurfaceView;

    .line 1164
    .local v0, view:Lcom/google/android/opengl/glview/GLSurfaceView;
    if-eqz v0, :cond_1c

    .line 1165
    #getter for: Lcom/google/android/opengl/glview/GLSurfaceView;->mEGLContextFactory:Lcom/google/android/opengl/glview/GLSurfaceView$EGLContextFactory;
    invoke-static {v0}, Lcom/google/android/opengl/glview/GLSurfaceView;->access$400(Lcom/google/android/opengl/glview/GLSurfaceView;)Lcom/google/android/opengl/glview/GLSurfaceView$EGLContextFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/opengl/glview/GLSurfaceView$EGLContextFactory;->destroyContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 1167
    :cond_1c
    iput-object v5, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 1169
    .end local v0           #view:Lcom/google/android/opengl/glview/GLSurfaceView;
    :cond_1e
    iget-object v1, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v1, :cond_2b

    .line 1170
    iget-object v1, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 1171
    iput-object v5, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 1173
    :cond_2b
    return-void
.end method

.method public start()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 993
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v2

    check-cast v2, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v2, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 998
    iget-object v2, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 1000
    iget-object v2, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v2, v3, :cond_21

    .line 1001
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "eglGetDisplay failed"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1007
    :cond_21
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 1008
    .local v0, version:[I
    iget-object v2, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v2, v3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v2

    if-nez v2, :cond_36

    .line 1009
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "eglInitialize failed"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1011
    :cond_36
    iget-object v2, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/opengl/glview/GLSurfaceView;

    .line 1012
    .local v1, view:Lcom/google/android/opengl/glview/GLSurfaceView;
    if-nez v1, :cond_58

    .line 1013
    iput-object v6, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 1014
    iput-object v6, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 1024
    :goto_44
    iget-object v2, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v2, :cond_4e

    iget-object v2, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v2, v3, :cond_55

    .line 1025
    :cond_4e
    iput-object v6, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 1026
    const-string v2, "createContext"

    invoke-direct {p0, v2}, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->throwEglException(Ljava/lang/String;)V

    .line 1032
    :cond_55
    iput-object v6, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 1033
    return-void

    .line 1016
    :cond_58
    #getter for: Lcom/google/android/opengl/glview/GLSurfaceView;->mEGLConfigChooser:Lcom/google/android/opengl/glview/GLSurfaceView$EGLConfigChooser;
    invoke-static {v1}, Lcom/google/android/opengl/glview/GLSurfaceView;->access$300(Lcom/google/android/opengl/glview/GLSurfaceView;)Lcom/google/android/opengl/glview/GLSurfaceView$EGLConfigChooser;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v2, v3, v4}, Lcom/google/android/opengl/glview/GLSurfaceView$EGLConfigChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 1022
    #getter for: Lcom/google/android/opengl/glview/GLSurfaceView;->mEGLContextFactory:Lcom/google/android/opengl/glview/GLSurfaceView$EGLContextFactory;
    invoke-static {v1}, Lcom/google/android/opengl/glview/GLSurfaceView;->access$400(Lcom/google/android/opengl/glview/GLSurfaceView;)Lcom/google/android/opengl/glview/GLSurfaceView$EGLContextFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v5, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v2, v3, v4, v5}, Lcom/google/android/opengl/glview/GLSurfaceView$EGLContextFactory;->createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    goto :goto_44
.end method

.method public swap()I
    .registers 4

    .prologue
    .line 1132
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 1133
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 1135
    :goto_12
    return v0

    :cond_13
    const/16 v0, 0x3000

    goto :goto_12
.end method
