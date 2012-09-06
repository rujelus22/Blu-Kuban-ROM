.class Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;
.super Ljava/lang/Object;
.source "GLTextureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/views/GLTextureView;
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

.field final synthetic this$0:Lcom/google/android/apps/plus/views/GLTextureView;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/plus/views/GLTextureView;)V
    .registers 2
    .parameter

    .prologue
    .line 987
    iput-object p1, p0, Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;->this$0:Lcom/google/android/apps/plus/views/GLTextureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 989
    return-void
.end method

.method private throwEglException(Ljava/lang/String;)V
    .registers 3
    .parameter "function"

    .prologue
    .line 1183
    iget-object v0, p0, Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;->throwEglException(Ljava/lang/String;I)V

    .line 1184
    return-void
.end method

.method private throwEglException(Ljava/lang/String;I)V
    .registers 6
    .parameter "function"
    .parameter "error"

    .prologue
    .line 1187
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

    .line 1192
    .local v0, message:Ljava/lang/String;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public createSurface(Landroid/graphics/SurfaceTexture;)Ljavax/microedition/khronos/opengles/GL;
    .registers 11
    .parameter "surfaceTexture"

    .prologue
    .line 1050
    iget-object v4, p0, Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    if-nez v4, :cond_c

    .line 1051
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "egl not initialized"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1053
    :cond_c
    iget-object v4, p0, Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-nez v4, :cond_18

    .line 1054
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "eglDisplay not initialized"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1056
    :cond_18
    iget-object v4, p0, Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    if-nez v4, :cond_24

    .line 1057
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "mEglConfig not initialized"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1063
    :cond_24
    iget-object v4, p0, Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v4, :cond_4a

    iget-object v4, p0, Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v4, v5, :cond_4a

    .line 1069
    iget-object v4, p0, Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v5, p0, Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v6, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v7, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v8, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v4, v5, v6, v7, v8}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 1071
    iget-object v4, p0, Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;->this$0:Lcom/google/android/apps/plus/views/GLTextureView;

    #getter for: Lcom/google/android/apps/plus/views/GLTextureView;->mEGLWindowSurfaceFactory:Lcom/google/android/apps/plus/views/GLTextureView$EGLWindowSurfaceFactory;
    invoke-static {v4}, Lcom/google/android/apps/plus/views/GLTextureView;->access$500(Lcom/google/android/apps/plus/views/GLTextureView;)Lcom/google/android/apps/plus/views/GLTextureView$EGLWindowSurfaceFactory;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v6, p0, Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v7, p0, Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v4, v5, v6, v7}, Lcom/google/android/apps/plus/views/GLTextureView$EGLWindowSurfaceFactory;->destroySurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 1077
    :cond_4a
    iget-object v4, p0, Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;->this$0:Lcom/google/android/apps/plus/views/GLTextureView;

    #getter for: Lcom/google/android/apps/plus/views/GLTextureView;->mEGLWindowSurfaceFactory:Lcom/google/android/apps/plus/views/GLTextureView$EGLWindowSurfaceFactory;
    invoke-static {v4}, Lcom/google/android/apps/plus/views/GLTextureView;->access$500(Lcom/google/android/apps/plus/views/GLTextureView;)Lcom/google/android/apps/plus/views/GLTextureView$EGLWindowSurfaceFactory;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v6, p0, Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v7, p0, Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v4, v5, v6, v7, p1}, Lcom/google/android/apps/plus/views/GLTextureView$EGLWindowSurfaceFactory;->createWindowSurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 1080
    iget-object v4, p0, Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v4, :cond_66

    iget-object v4, p0, Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v4, v5, :cond_79

    .line 1081
    :cond_66
    iget-object v4, p0, Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v1

    .line 1082
    .local v1, error:I
    const/16 v4, 0x300b

    if-ne v1, v4, :cond_77

    .line 1083
    const-string v4, "EglHelper"

    const-string v5, "createWindowSurface returned EGL_BAD_NATIVE_WINDOW."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    :cond_77
    const/4 v2, 0x0

    .line 1112
    .end local v1           #error:I
    :cond_78
    :goto_78
    return-object v2

    .line 1092
    :cond_79
    iget-object v4, p0, Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v5, p0, Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v6, p0, Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v7, p0, Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v8, p0, Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v4, v5, v6, v7, v8}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v4

    if-nez v4, :cond_8e

    .line 1093
    const-string v4, "eglMakeCurrent"

    invoke-direct {p0, v4}, Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;->throwEglException(Ljava/lang/String;)V

    .line 1096
    :cond_8e
    iget-object v4, p0, Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v4}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v2

    .line 1097
    .local v2, gl:Ljavax/microedition/khronos/opengles/GL;
    iget-object v4, p0, Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;->this$0:Lcom/google/android/apps/plus/views/GLTextureView;

    #getter for: Lcom/google/android/apps/plus/views/GLTextureView;->mGLWrapper:Lcom/google/android/apps/plus/views/GLTextureView$GLWrapper;
    invoke-static {v4}, Lcom/google/android/apps/plus/views/GLTextureView;->access$600(Lcom/google/android/apps/plus/views/GLTextureView;)Lcom/google/android/apps/plus/views/GLTextureView$GLWrapper;

    move-result-object v4

    if-eqz v4, :cond_a6

    .line 1098
    iget-object v4, p0, Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;->this$0:Lcom/google/android/apps/plus/views/GLTextureView;

    #getter for: Lcom/google/android/apps/plus/views/GLTextureView;->mGLWrapper:Lcom/google/android/apps/plus/views/GLTextureView$GLWrapper;
    invoke-static {v4}, Lcom/google/android/apps/plus/views/GLTextureView;->access$600(Lcom/google/android/apps/plus/views/GLTextureView;)Lcom/google/android/apps/plus/views/GLTextureView$GLWrapper;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/google/android/apps/plus/views/GLTextureView$GLWrapper;->wrap(Ljavax/microedition/khronos/opengles/GL;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v2

    .line 1101
    :cond_a6
    iget-object v4, p0, Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;->this$0:Lcom/google/android/apps/plus/views/GLTextureView;

    #getter for: Lcom/google/android/apps/plus/views/GLTextureView;->mDebugFlags:I
    invoke-static {v4}, Lcom/google/android/apps/plus/views/GLTextureView;->access$700(Lcom/google/android/apps/plus/views/GLTextureView;)I

    move-result v4

    and-int/lit8 v4, v4, 0x3

    if-eqz v4, :cond_78

    .line 1102
    const/4 v0, 0x0

    .line 1103
    .local v0, configFlags:I
    const/4 v3, 0x0

    .line 1104
    .local v3, log:Ljava/io/Writer;
    iget-object v4, p0, Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;->this$0:Lcom/google/android/apps/plus/views/GLTextureView;

    #getter for: Lcom/google/android/apps/plus/views/GLTextureView;->mDebugFlags:I
    invoke-static {v4}, Lcom/google/android/apps/plus/views/GLTextureView;->access$700(Lcom/google/android/apps/plus/views/GLTextureView;)I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_be

    .line 1105
    or-int/lit8 v0, v0, 0x1

    .line 1107
    :cond_be
    iget-object v4, p0, Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;->this$0:Lcom/google/android/apps/plus/views/GLTextureView;

    #getter for: Lcom/google/android/apps/plus/views/GLTextureView;->mDebugFlags:I
    invoke-static {v4}, Lcom/google/android/apps/plus/views/GLTextureView;->access$700(Lcom/google/android/apps/plus/views/GLTextureView;)I

    move-result v4

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_cd

    .line 1108
    new-instance v3, Lcom/google/android/apps/plus/views/GLTextureView$LogWriter;

    .end local v3           #log:Ljava/io/Writer;
    invoke-direct {v3}, Lcom/google/android/apps/plus/views/GLTextureView$LogWriter;-><init>()V

    .line 1110
    .restart local v3       #log:Ljava/io/Writer;
    :cond_cd
    invoke-static {v2, v0, v3}, Landroid/opengl/GLDebugHelper;->wrap(Ljavax/microedition/khronos/opengles/GL;ILjava/io/Writer;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v2

    goto :goto_78
.end method

.method public destroySurface()V
    .registers 6

    .prologue
    .line 1159
    iget-object v0, p0, Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v0, v1, :cond_29

    .line 1160
    iget-object v0, p0, Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 1163
    iget-object v0, p0, Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;->this$0:Lcom/google/android/apps/plus/views/GLTextureView;

    #getter for: Lcom/google/android/apps/plus/views/GLTextureView;->mEGLWindowSurfaceFactory:Lcom/google/android/apps/plus/views/GLTextureView$EGLWindowSurfaceFactory;
    invoke-static {v0}, Lcom/google/android/apps/plus/views/GLTextureView;->access$500(Lcom/google/android/apps/plus/views/GLTextureView;)Lcom/google/android/apps/plus/views/GLTextureView$EGLWindowSurfaceFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/apps/plus/views/GLTextureView$EGLWindowSurfaceFactory;->destroySurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 1164
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 1166
    :cond_29
    return-void
.end method

.method public finish()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1172
    iget-object v0, p0, Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_16

    .line 1173
    iget-object v0, p0, Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;->this$0:Lcom/google/android/apps/plus/views/GLTextureView;

    #getter for: Lcom/google/android/apps/plus/views/GLTextureView;->mEGLContextFactory:Lcom/google/android/apps/plus/views/GLTextureView$EGLContextFactory;
    invoke-static {v0}, Lcom/google/android/apps/plus/views/GLTextureView;->access$400(Lcom/google/android/apps/plus/views/GLTextureView;)Lcom/google/android/apps/plus/views/GLTextureView$EGLContextFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/apps/plus/views/GLTextureView$EGLContextFactory;->destroyContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 1174
    iput-object v4, p0, Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 1176
    :cond_16
    iget-object v0, p0, Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v0, :cond_23

    .line 1177
    iget-object v0, p0, Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 1178
    iput-object v4, p0, Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 1180
    :cond_23
    return-void
.end method

.method public purgeBuffers()V
    .registers 6

    .prologue
    .line 1116
    iget-object v0, p0, Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 1119
    iget-object v0, p0, Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v3, p0, Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 1122
    return-void
.end method

.method public start()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 1002
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v1

    check-cast v1, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v1, p0, Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 1007
    iget-object v1, p0, Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 1009
    iget-object v1, p0, Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v1, v2, :cond_21

    .line 1010
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "eglGetDisplay failed"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1016
    :cond_21
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 1017
    .local v0, version:[I
    iget-object v1, p0, Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v1

    if-nez v1, :cond_36

    .line 1018
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "eglInitialize failed"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1020
    :cond_36
    iget-object v1, p0, Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;->this$0:Lcom/google/android/apps/plus/views/GLTextureView;

    #getter for: Lcom/google/android/apps/plus/views/GLTextureView;->mEGLConfigChooser:Lcom/google/android/apps/plus/views/GLTextureView$EGLConfigChooser;
    invoke-static {v1}, Lcom/google/android/apps/plus/views/GLTextureView;->access$300(Lcom/google/android/apps/plus/views/GLTextureView;)Lcom/google/android/apps/plus/views/GLTextureView$EGLConfigChooser;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2, v3}, Lcom/google/android/apps/plus/views/GLTextureView$EGLConfigChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 1026
    iget-object v1, p0, Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;->this$0:Lcom/google/android/apps/plus/views/GLTextureView;

    #getter for: Lcom/google/android/apps/plus/views/GLTextureView;->mEGLContextFactory:Lcom/google/android/apps/plus/views/GLTextureView$EGLContextFactory;
    invoke-static {v1}, Lcom/google/android/apps/plus/views/GLTextureView;->access$400(Lcom/google/android/apps/plus/views/GLTextureView;)Lcom/google/android/apps/plus/views/GLTextureView$EGLContextFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/apps/plus/views/GLTextureView$EGLContextFactory;->createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 1027
    iget-object v1, p0, Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v1, :cond_62

    iget-object v1, p0, Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v1, v2, :cond_69

    .line 1028
    :cond_62
    iput-object v5, p0, Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 1029
    const-string v1, "createContext"

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;->throwEglException(Ljava/lang/String;)V

    .line 1036
    :cond_69
    iput-object v5, p0, Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 1037
    return-void
.end method

.method public swap()Z
    .registers 6

    .prologue
    .line 1129
    iget-object v1, p0, Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v1, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 1137
    iget-object v1, p0, Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 1138
    .local v0, error:I
    packed-switch v0, :pswitch_data_40

    .line 1149
    :pswitch_15
    const-string v1, "eglSwapBuffers"

    invoke-direct {p0, v1, v0}, Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;->throwEglException(Ljava/lang/String;I)V

    .line 1152
    .end local v0           #error:I
    :cond_1a
    :goto_1a
    const/4 v1, 0x1

    :goto_1b
    return v1

    .line 1140
    .restart local v0       #error:I
    :pswitch_1c
    const/4 v1, 0x0

    goto :goto_1b

    .line 1145
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

    .line 1138
    nop

    :pswitch_data_40
    .packed-switch 0x300b
        :pswitch_1e
        :pswitch_15
        :pswitch_15
        :pswitch_1c
    .end packed-switch
.end method
