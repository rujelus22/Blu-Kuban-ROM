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
    .line 963
    .local p1, glSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/google/android/opengl/glview/GLSurfaceView;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 964
    iput-object p1, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    .line 965
    return-void
.end method

.method private destroySurfaceImp()V
    .registers 7

    .prologue
    .line 1145
    iget-object v1, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v1, :cond_31

    iget-object v1, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v1, v2, :cond_31

    .line 1146
    iget-object v1, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v2, v3, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 1149
    iget-object v1, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/opengl/glview/GLSurfaceView;

    .line 1150
    .local v0, view:Lcom/google/android/opengl/glview/GLSurfaceView;
    if-eqz v0, :cond_2e

    .line 1151
    #getter for: Lcom/google/android/opengl/glview/GLSurfaceView;->mEGLWindowSurfaceFactory:Lcom/google/android/opengl/glview/GLSurfaceView$EGLWindowSurfaceFactory;
    invoke-static {v0}, Lcom/google/android/opengl/glview/GLSurfaceView;->access$500(Lcom/google/android/opengl/glview/GLSurfaceView;)Lcom/google/android/opengl/glview/GLSurfaceView$EGLWindowSurfaceFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/opengl/glview/GLSurfaceView$EGLWindowSurfaceFactory;->destroySurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 1153
    :cond_2e
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 1155
    .end local v0           #view:Lcom/google/android/opengl/glview/GLSurfaceView;
    :cond_31
    return-void
.end method

.method private throwEglException(Ljava/lang/String;)V
    .registers 3
    .parameter "function"

    .prologue
    .line 1175
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->throwEglException(Ljava/lang/String;I)V

    .line 1176
    return-void
.end method

.method private throwEglException(Ljava/lang/String;I)V
    .registers 6
    .parameter "function"
    .parameter "error"

    .prologue
    .line 1179
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

    .line 1183
    .local v0, message:Ljava/lang/String;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method createGL()Ljavax/microedition/khronos/opengles/GL;
    .registers 6

    .prologue
    .line 1085
    iget-object v4, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v4}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v1

    .line 1086
    .local v1, gl:Ljavax/microedition/khronos/opengles/GL;
    iget-object v4, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/opengl/glview/GLSurfaceView;

    .line 1087
    .local v3, view:Lcom/google/android/opengl/glview/GLSurfaceView;
    if-eqz v3, :cond_43

    .line 1088
    #getter for: Lcom/google/android/opengl/glview/GLSurfaceView;->mGLWrapper:Lcom/google/android/opengl/glview/GLSurfaceView$GLWrapper;
    invoke-static {v3}, Lcom/google/android/opengl/glview/GLSurfaceView;->access$600(Lcom/google/android/opengl/glview/GLSurfaceView;)Lcom/google/android/opengl/glview/GLSurfaceView$GLWrapper;

    move-result-object v4

    if-eqz v4, :cond_1e

    .line 1089
    #getter for: Lcom/google/android/opengl/glview/GLSurfaceView;->mGLWrapper:Lcom/google/android/opengl/glview/GLSurfaceView$GLWrapper;
    invoke-static {v3}, Lcom/google/android/opengl/glview/GLSurfaceView;->access$600(Lcom/google/android/opengl/glview/GLSurfaceView;)Lcom/google/android/opengl/glview/GLSurfaceView$GLWrapper;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/google/android/opengl/glview/GLSurfaceView$GLWrapper;->wrap(Ljavax/microedition/khronos/opengles/GL;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v1

    .line 1092
    :cond_1e
    #getter for: Lcom/google/android/opengl/glview/GLSurfaceView;->mDebugFlags:I
    invoke-static {v3}, Lcom/google/android/opengl/glview/GLSurfaceView;->access$700(Lcom/google/android/opengl/glview/GLSurfaceView;)I

    move-result v4

    and-int/lit8 v4, v4, 0x3

    if-eqz v4, :cond_43

    .line 1093
    const/4 v0, 0x0

    .line 1094
    .local v0, configFlags:I
    const/4 v2, 0x0

    .line 1095
    .local v2, log:Ljava/io/Writer;
    #getter for: Lcom/google/android/opengl/glview/GLSurfaceView;->mDebugFlags:I
    invoke-static {v3}, Lcom/google/android/opengl/glview/GLSurfaceView;->access$700(Lcom/google/android/opengl/glview/GLSurfaceView;)I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_32

    .line 1096
    or-int/lit8 v0, v0, 0x1

    .line 1098
    :cond_32
    #getter for: Lcom/google/android/opengl/glview/GLSurfaceView;->mDebugFlags:I
    invoke-static {v3}, Lcom/google/android/opengl/glview/GLSurfaceView;->access$700(Lcom/google/android/opengl/glview/GLSurfaceView;)I

    move-result v4

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_3f

    .line 1099
    new-instance v2, Lcom/google/android/opengl/glview/GLSurfaceView$LogWriter;

    .end local v2           #log:Ljava/io/Writer;
    invoke-direct {v2}, Lcom/google/android/opengl/glview/GLSurfaceView$LogWriter;-><init>()V

    .line 1101
    .restart local v2       #log:Ljava/io/Writer;
    :cond_3f
    invoke-static {v1, v0, v2}, Landroid/opengl/GLDebugHelper;->wrap(Ljavax/microedition/khronos/opengles/GL;ILjava/io/Writer;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v1

    .line 1104
    .end local v0           #configFlags:I
    .end local v2           #log:Ljava/io/Writer;
    :cond_43
    return-object v1
.end method

.method public createSurface()Z
    .registers 8

    .prologue
    .line 1033
    iget-object v2, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    if-nez v2, :cond_c

    .line 1034
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "egl not initialized"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1036
    :cond_c
    iget-object v2, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-nez v2, :cond_18

    .line 1037
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "eglDisplay not initialized"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1039
    :cond_18
    iget-object v2, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    if-nez v2, :cond_24

    .line 1040
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "mEglConfig not initialized"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1047
    :cond_24
    invoke-direct {p0}, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->destroySurfaceImp()V

    .line 1052
    iget-object v2, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/opengl/glview/GLSurfaceView;

    .line 1053
    .local v1, view:Lcom/google/android/opengl/glview/GLSurfaceView;
    if-eqz v1, :cond_62

    .line 1054
    #getter for: Lcom/google/android/opengl/glview/GLSurfaceView;->mEGLWindowSurfaceFactory:Lcom/google/android/opengl/glview/GLSurfaceView$EGLWindowSurfaceFactory;
    invoke-static {v1}, Lcom/google/android/opengl/glview/GLSurfaceView;->access$500(Lcom/google/android/opengl/glview/GLSurfaceView;)Lcom/google/android/opengl/glview/GLSurfaceView$EGLWindowSurfaceFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v5, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-virtual {v1}, Lcom/google/android/opengl/glview/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v6

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/google/android/opengl/glview/GLSurfaceView$EGLWindowSurfaceFactory;->createWindowSurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 1060
    :goto_45
    iget-object v2, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v2, :cond_4f

    iget-object v2, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v2, v3, :cond_66

    .line 1061
    :cond_4f
    iget-object v2, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 1062
    .local v0, error:I
    const/16 v2, 0x300b

    if-ne v0, v2, :cond_60

    .line 1063
    const-string v2, "EglHelper"

    const-string v3, "createWindowSurface returned EGL_BAD_NATIVE_WINDOW."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    :cond_60
    const/4 v2, 0x0

    .line 1076
    .end local v0           #error:I
    :goto_61
    return v2

    .line 1057
    :cond_62
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    goto :goto_45

    .line 1072
    :cond_66
    iget-object v2, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v5, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v6, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v2, v3, v4, v5, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v2

    if-nez v2, :cond_7b

    .line 1073
    const-string v2, "eglMakeCurrent"

    invoke-direct {p0, v2}, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->throwEglException(Ljava/lang/String;)V

    .line 1076
    :cond_7b
    const/4 v2, 0x1

    goto :goto_61
.end method

.method public destroySurface()V
    .registers 1

    .prologue
    .line 1141
    invoke-direct {p0}, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->destroySurfaceImp()V

    .line 1142
    return-void
.end method

.method public finish()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 1161
    iget-object v1, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v1, :cond_1e

    .line 1162
    iget-object v1, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/opengl/glview/GLSurfaceView;

    .line 1163
    .local v0, view:Lcom/google/android/opengl/glview/GLSurfaceView;
    if-eqz v0, :cond_1c

    .line 1164
    #getter for: Lcom/google/android/opengl/glview/GLSurfaceView;->mEGLContextFactory:Lcom/google/android/opengl/glview/GLSurfaceView$EGLContextFactory;
    invoke-static {v0}, Lcom/google/android/opengl/glview/GLSurfaceView;->access$400(Lcom/google/android/opengl/glview/GLSurfaceView;)Lcom/google/android/opengl/glview/GLSurfaceView$EGLContextFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/opengl/glview/GLSurfaceView$EGLContextFactory;->destroyContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 1166
    :cond_1c
    iput-object v5, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 1168
    .end local v0           #view:Lcom/google/android/opengl/glview/GLSurfaceView;
    :cond_1e
    iget-object v1, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v1, :cond_2b

    .line 1169
    iget-object v1, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 1170
    iput-object v5, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 1172
    :cond_2b
    return-void
.end method

.method public start()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 978
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v2

    check-cast v2, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v2, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 983
    iget-object v2, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 985
    iget-object v2, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v2, v3, :cond_21

    .line 986
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "eglGetDisplay failed"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 992
    :cond_21
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 993
    .local v0, version:[I
    iget-object v2, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v2, v3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v2

    if-nez v2, :cond_36

    .line 994
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "eglInitialize failed"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 996
    :cond_36
    iget-object v2, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/opengl/glview/GLSurfaceView;

    .line 997
    .local v1, view:Lcom/google/android/opengl/glview/GLSurfaceView;
    if-nez v1, :cond_58

    .line 998
    iput-object v6, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 999
    iput-object v6, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 1009
    :goto_44
    iget-object v2, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v2, :cond_4e

    iget-object v2, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v2, v3, :cond_55

    .line 1010
    :cond_4e
    iput-object v6, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 1011
    const-string v2, "createContext"

    invoke-direct {p0, v2}, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->throwEglException(Ljava/lang/String;)V

    .line 1017
    :cond_55
    iput-object v6, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 1018
    return-void

    .line 1001
    :cond_58
    #getter for: Lcom/google/android/opengl/glview/GLSurfaceView;->mEGLConfigChooser:Lcom/google/android/opengl/glview/GLSurfaceView$EGLConfigChooser;
    invoke-static {v1}, Lcom/google/android/opengl/glview/GLSurfaceView;->access$300(Lcom/google/android/opengl/glview/GLSurfaceView;)Lcom/google/android/opengl/glview/GLSurfaceView$EGLConfigChooser;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v2, v3, v4}, Lcom/google/android/opengl/glview/GLSurfaceView$EGLConfigChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 1007
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

.method public swap()Z
    .registers 6

    .prologue
    .line 1112
    iget-object v1, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v1, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 1120
    iget-object v1, p0, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 1121
    .local v0, error:I
    packed-switch v0, :pswitch_data_40

    .line 1131
    :pswitch_15
    const-string v1, "eglSwapBuffers"

    invoke-direct {p0, v1, v0}, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->throwEglException(Ljava/lang/String;I)V

    .line 1134
    .end local v0           #error:I
    :cond_1a
    :goto_1a
    const/4 v1, 0x1

    :goto_1b
    return v1

    .line 1123
    .restart local v0       #error:I
    :pswitch_1c
    const/4 v1, 0x0

    goto :goto_1b

    .line 1128
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

    .line 1121
    nop

    :pswitch_data_40
    .packed-switch 0x300b
        :pswitch_1e
        :pswitch_15
        :pswitch_15
        :pswitch_1c
    .end packed-switch
.end method
