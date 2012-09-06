.class Lcom/google/android/maps/driveabout/vector/bo;
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
    .line 1052
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1053
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/bo;->f:Ljava/lang/ref/WeakReference;

    .line 1054
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 1260
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bo;->a:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/android/maps/driveabout/vector/bo;->a(Ljava/lang/String;I)V

    .line 1261
    return-void
.end method

.method public static a(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1264
    invoke-static {p0, p1}, Lcom/google/android/maps/driveabout/vector/bo;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1269
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
    .line 1274
    return-void
.end method

.method public static b(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1277
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
    .line 1230
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bo;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bo;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v0, v1, :cond_31

    .line 1231
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bo;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bo;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 1234
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bo;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;

    .line 1235
    if-eqz v0, :cond_2e

    .line 1236
    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->d(Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;)Lcom/google/android/maps/driveabout/vector/bn;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bo;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bo;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bo;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/vector/bn;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 1238
    :cond_2e
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bo;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 1240
    :cond_31
    return-void
.end method


# virtual methods
.method public a()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1063
    const-string v0, "GmmGLSurfaceView.start"

    invoke-static {v0}, Lcom/google/googlenav/common/util/o;->a(Ljava/lang/String;)V

    .line 1072
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bo;->a:Ljavax/microedition/khronos/egl/EGL10;

    .line 1077
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bo;->a:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bo;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 1079
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bo;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v0, v1, :cond_26

    .line 1080
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglGetDisplay failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1086
    :cond_26
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1087
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bo;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bo;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 1088
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglInitialize failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1090
    :cond_3b
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bo;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;

    .line 1091
    if-nez v0, :cond_62

    .line 1092
    iput-object v4, p0, Lcom/google/android/maps/driveabout/vector/bo;->d:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 1093
    iput-object v4, p0, Lcom/google/android/maps/driveabout/vector/bo;->e:Ljavax/microedition/khronos/egl/EGLContext;

    .line 1103
    :goto_49
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bo;->e:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bo;->e:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v0, v1, :cond_5a

    .line 1104
    :cond_53
    iput-object v4, p0, Lcom/google/android/maps/driveabout/vector/bo;->e:Ljavax/microedition/khronos/egl/EGLContext;

    .line 1105
    const-string v0, "createContext"

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/bo;->a(Ljava/lang/String;)V

    .line 1111
    :cond_5a
    iput-object v4, p0, Lcom/google/android/maps/driveabout/vector/bo;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 1115
    const-string v0, "GmmGLSurfaceView.start"

    invoke-static {v0}, Lcom/google/googlenav/common/util/o;->b(Ljava/lang/String;)V

    .line 1117
    return-void

    .line 1095
    :cond_62
    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->b(Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;)Lcom/google/android/maps/driveabout/vector/bl;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bo;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bo;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2, v3}, Lcom/google/android/maps/driveabout/vector/bl;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/bo;->d:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 1101
    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->c(Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;)Lcom/google/android/maps/driveabout/vector/bm;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bo;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bo;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bo;->d:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/vector/bm;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bo;->e:Ljavax/microedition/khronos/egl/EGLContext;

    goto :goto_49
.end method

.method public b()Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 1132
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bo;->a:Ljavax/microedition/khronos/egl/EGL10;

    if-nez v0, :cond_d

    .line 1133
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "egl not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1135
    :cond_d
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bo;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-nez v0, :cond_19

    .line 1136
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglDisplay not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1138
    :cond_19
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bo;->d:Ljavax/microedition/khronos/egl/EGLConfig;

    if-nez v0, :cond_25

    .line 1139
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mEglConfig not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1146
    :cond_25
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bo;->g()V

    .line 1151
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bo;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;

    .line 1152
    if-eqz v0, :cond_5c

    .line 1153
    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->d(Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;)Lcom/google/android/maps/driveabout/vector/bn;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bo;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/bo;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/bo;->d:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v2, v3, v4, v5, v0}, Lcom/google/android/maps/driveabout/vector/bn;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bo;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 1159
    :goto_46
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bo;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bo;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v0, v2, :cond_60

    .line 1160
    :cond_50
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bo;->a:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 1161
    const/16 v2, 0x300b

    if-ne v0, v2, :cond_5a

    :cond_5a
    move v0, v1

    .line 1180
    :goto_5b
    return v0

    .line 1156
    :cond_5c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bo;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    goto :goto_46

    .line 1171
    :cond_60
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bo;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bo;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bo;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/bo;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/bo;->e:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v2, v3, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_7f

    .line 1176
    const-string v0, "EGLHelper"

    const-string v2, "eglMakeCurrent"

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bo;->a:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/google/android/maps/driveabout/vector/bo;->a(Ljava/lang/String;Ljava/lang/String;I)V

    move v0, v1

    .line 1177
    goto :goto_5b

    .line 1180
    :cond_7f
    const/4 v0, 0x1

    goto :goto_5b
.end method

.method c()Ljavax/microedition/khronos/opengles/GL;
    .registers 6

    .prologue
    .line 1189
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bo;->e:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v0}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v1

    .line 1190
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bo;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;

    .line 1191
    if-eqz v0, :cond_42

    .line 1192
    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->e(Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;)Lcom/google/android/maps/driveabout/vector/br;

    move-result-object v2

    if-eqz v2, :cond_1e

    .line 1193
    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->e(Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;)Lcom/google/android/maps/driveabout/vector/br;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/google/android/maps/driveabout/vector/br;->a(Ljavax/microedition/khronos/opengles/GL;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v1

    .line 1196
    :cond_1e
    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f(Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;)I

    move-result v2

    and-int/lit8 v2, v2, 0x3

    if-eqz v2, :cond_42

    .line 1197
    const/4 v2, 0x0

    .line 1198
    const/4 v3, 0x0

    .line 1199
    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f(Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;)I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_31

    .line 1200
    const/4 v2, 0x1

    .line 1202
    :cond_31
    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f(Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_43

    .line 1203
    new-instance v0, Lcom/google/android/maps/driveabout/vector/bs;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/vector/bs;-><init>()V

    .line 1205
    :goto_3e
    invoke-static {v1, v2, v0}, Landroid/opengl/GLDebugHelper;->wrap(Ljavax/microedition/khronos/opengles/GL;ILjava/io/Writer;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v1

    .line 1208
    :cond_42
    return-object v1

    :cond_43
    move-object v0, v3

    goto :goto_3e
.end method

.method public d()I
    .registers 4

    .prologue
    .line 1216
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bo;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bo;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bo;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 1217
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bo;->a:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 1219
    :goto_12
    return v0

    :cond_13
    const/16 v0, 0x3000

    goto :goto_12
.end method

.method public e()V
    .registers 1

    .prologue
    .line 1226
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bo;->g()V

    .line 1227
    return-void
.end method

.method public f()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1246
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bo;->e:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_1e

    .line 1247
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bo;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;

    .line 1248
    if-eqz v0, :cond_1c

    .line 1249
    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->c(Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;)Lcom/google/android/maps/driveabout/vector/bm;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bo;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bo;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bo;->e:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/vector/bm;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 1251
    :cond_1c
    iput-object v4, p0, Lcom/google/android/maps/driveabout/vector/bo;->e:Ljavax/microedition/khronos/egl/EGLContext;

    .line 1253
    :cond_1e
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bo;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v0, :cond_2b

    .line 1254
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bo;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bo;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 1255
    iput-object v4, p0, Lcom/google/android/maps/driveabout/vector/bo;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 1257
    :cond_2b
    return-void
.end method
