.class public Lcom/google/android/opengl/glview/GLViewRenderer;
.super Ljava/lang/Object;
.source "GLViewRenderer.java"

# interfaces
.implements Lcom/google/android/opengl/glview/GLSurfaceView$Renderer;
.implements Lcom/google/android/opengl/glview/Listener;


# static fields
.field private static FPS_FRAMES:I

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mCamera:Lcom/google/android/opengl/glview/GLCamera;

.field private mCanvas:Lcom/google/android/opengl/glview/GLCanvas;

.field private mContext:Landroid/content/Context;

.field private mFrameCount:I

.field private mFrameInterval:F

.field private mFrameTime:J

.field private mGLSurfaceView:Lcom/google/android/opengl/glview/GLSurfaceView;

.field private mHaveSystemFocus:Z

.field private mRequestLayout:Z

.field private mRoot:Lcom/google/android/opengl/glview/TopLevelView;

.field private mSurfacePrefersClearAtStartOfFrame:Z

.field private mTimeStart:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const-string v0, "GLViewRenderer"

    sput-object v0, Lcom/google/android/opengl/glview/GLViewRenderer;->TAG:Ljava/lang/String;

    .line 35
    const/16 v0, 0x32

    sput v0, Lcom/google/android/opengl/glview/GLViewRenderer;->FPS_FRAMES:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/opengl/glview/GLSurfaceView;)V
    .registers 5
    .parameter "context"
    .parameter "glSurfaceView"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mFrameCount:I

    .line 37
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mTimeStart:J

    .line 54
    iput-object p1, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mContext:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mGLSurfaceView:Lcom/google/android/opengl/glview/GLSurfaceView;

    .line 56
    new-instance v0, Lcom/google/android/opengl/glview/GLCanvas;

    invoke-direct {v0, p1}, Lcom/google/android/opengl/glview/GLCanvas;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mCanvas:Lcom/google/android/opengl/glview/GLCanvas;

    .line 57
    new-instance v0, Lcom/google/android/opengl/glview/GLCamera;

    iget-object v1, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mCanvas:Lcom/google/android/opengl/glview/GLCanvas;

    invoke-direct {v0, v1}, Lcom/google/android/opengl/glview/GLCamera;-><init>(Lcom/google/android/opengl/glview/GLCanvas;)V

    iput-object v0, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mCamera:Lcom/google/android/opengl/glview/GLCamera;

    .line 58
    return-void
.end method

.method private checkEGLSurface()V
    .registers 14

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 170
    const/16 v2, 0x3093

    .line 171
    .local v2, EGL_SWAP_BEHAVIOR:I
    const/16 v1, 0x3094

    .line 172
    .local v1, EGL_BUFFER_PRESERVED:I
    const/16 v0, 0x3095

    .line 173
    .local v0, EGL_BUFFER_DESTROYED:I
    new-array v8, v9, [I

    .line 174
    .local v8, value:[I
    const/4 v7, 0x0

    .line 175
    .local v7, preserved:Z
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v4

    check-cast v4, Ljavax/microedition/khronos/egl/EGL10;

    .line 176
    .local v4, egl:Ljavax/microedition/khronos/egl/EGL10;
    invoke-interface {v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentDisplay()Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v5

    .line 178
    .local v5, eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    const/16 v11, 0x3059

    :try_start_17
    invoke-interface {v4, v11}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentSurface(I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v6

    .line 179
    .local v6, eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;
    const/16 v11, 0x3093

    invoke-interface {v4, v5, v6, v11, v8}, Ljavax/microedition/khronos/egl/EGL10;->eglQuerySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;I[I)Z

    move-result v11

    if-eqz v11, :cond_2b

    .line 180
    const/4 v11, 0x0

    aget v11, v8, v11
    :try_end_26
    .catch Ljava/lang/IllegalArgumentException; {:try_start_17 .. :try_end_26} :catch_30

    const/16 v12, 0x3094

    if-ne v11, v12, :cond_2e

    move v7, v9

    .line 193
    .end local v6           #eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;
    :cond_2b
    :goto_2b
    iput-boolean v7, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mSurfacePrefersClearAtStartOfFrame:Z

    .line 194
    return-void

    .restart local v6       #eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;
    :cond_2e
    move v7, v10

    .line 180
    goto :goto_2b

    .line 182
    .end local v6           #eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;
    :catch_30
    move-exception v3

    .line 186
    .local v3, e:Ljava/lang/IllegalArgumentException;
    const/4 v7, 0x0

    goto :goto_2b
.end method

.method private updateFPS()V
    .registers 8

    .prologue
    .line 98
    iget v3, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mFrameCount:I

    sget v4, Lcom/google/android/opengl/glview/GLViewRenderer;->FPS_FRAMES:I

    if-ge v3, v4, :cond_d

    .line 99
    iget v3, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mFrameCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mFrameCount:I

    .line 115
    :goto_c
    return-void

    .line 101
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/GLViewRenderer;->getFrameTime()J

    move-result-wide v1

    .line 103
    .local v1, time:J
    iget v3, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mFrameCount:I

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    iget-wide v5, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mTimeStart:J

    sub-long v5, v1, v5

    div-long/2addr v3, v5

    long-to-float v0, v3

    .line 104
    .local v0, fps:F
    const/4 v3, 0x0

    iput v3, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mFrameCount:I

    .line 105
    iput-wide v1, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mTimeStart:J

    .line 107
    const/high16 v3, 0x447a

    div-float/2addr v3, v0

    float-to-double v3, v3

    goto :goto_c
.end method

.method private updateFocus(ILandroid/graphics/RectF;)V
    .registers 6
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 270
    iget-object v1, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mRoot:Lcom/google/android/opengl/glview/TopLevelView;

    if-eqz v1, :cond_17

    .line 271
    iget-boolean v1, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mHaveSystemFocus:Z

    if-eqz v1, :cond_18

    .line 272
    invoke-static {}, Lcom/google/android/opengl/glview/GLFocusFinder;->getInstance()Lcom/google/android/opengl/glview/GLFocusFinder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mRoot:Lcom/google/android/opengl/glview/TopLevelView;

    invoke-virtual {v1, v2, p2, p1}, Lcom/google/android/opengl/glview/GLFocusFinder;->findNextFocusFromRect(Lcom/google/android/opengl/glview/GLView;Landroid/graphics/RectF;I)Lcom/google/android/opengl/glview/GLView;

    move-result-object v0

    .line 274
    .local v0, view:Lcom/google/android/opengl/glview/GLView;
    if-eqz v0, :cond_17

    .line 275
    invoke-virtual {v0}, Lcom/google/android/opengl/glview/GLView;->requestFocus()Z

    .line 281
    .end local v0           #view:Lcom/google/android/opengl/glview/GLView;
    :cond_17
    :goto_17
    return-void

    .line 278
    :cond_18
    iget-object v1, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mRoot:Lcom/google/android/opengl/glview/TopLevelView;

    invoke-virtual {v1}, Lcom/google/android/opengl/glview/TopLevelView;->clearFocus()V

    goto :goto_17
.end method


# virtual methods
.method protected final canvasHeight()F
    .registers 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mCanvas:Lcom/google/android/opengl/glview/GLCanvas;

    invoke-virtual {v0}, Lcom/google/android/opengl/glview/GLCanvas;->height()F

    move-result v0

    return v0
.end method

.method protected final canvasWidth()F
    .registers 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mCanvas:Lcom/google/android/opengl/glview/GLCanvas;

    invoke-virtual {v0}, Lcom/google/android/opengl/glview/GLCanvas;->width()F

    move-result v0

    return v0
.end method

.method protected drawFrame()V
    .registers 4

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mRoot:Lcom/google/android/opengl/glview/TopLevelView;

    if-eqz v0, :cond_2d

    .line 82
    iget-boolean v0, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mRequestLayout:Z

    if-eqz v0, :cond_b

    .line 83
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/GLViewRenderer;->onLayout()V

    .line 85
    :cond_b
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mCanvas:Lcom/google/android/opengl/glview/GLCanvas;

    iget-wide v1, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mFrameTime:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/opengl/glview/GLCanvas;->setFrameTime(J)V

    .line 86
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mCanvas:Lcom/google/android/opengl/glview/GLCanvas;

    invoke-virtual {v0}, Lcom/google/android/opengl/glview/GLCanvas;->startDrawing()V

    .line 87
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mRoot:Lcom/google/android/opengl/glview/TopLevelView;

    iget-object v1, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mCanvas:Lcom/google/android/opengl/glview/GLCanvas;

    iget v2, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mFrameInterval:F

    invoke-virtual {v0, v1, v2}, Lcom/google/android/opengl/glview/TopLevelView;->onDrawFrame(Lcom/google/android/opengl/glview/GLCanvas;F)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 88
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mGLSurfaceView:Lcom/google/android/opengl/glview/GLSurfaceView;

    invoke-virtual {v0}, Lcom/google/android/opengl/glview/GLSurfaceView;->requestRender()V

    .line 92
    :cond_28
    const-string v0, "onDrawFrame"

    invoke-static {v0}, Lcom/google/android/opengl/glview/GLCanvas;->logGlError(Ljava/lang/String;)Z

    .line 95
    :cond_2d
    return-void
.end method

.method protected getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected getFrameTime()J
    .registers 3

    .prologue
    .line 118
    iget-wide v0, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mFrameTime:J

    return-wide v0
.end method

.method public getGLSurfaceView()Lcom/google/android/opengl/glview/GLSurfaceView;
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mGLSurfaceView:Lcom/google/android/opengl/glview/GLSurfaceView;

    return-object v0
.end method

.method protected final getRoot()Lcom/google/android/opengl/glview/TopLevelView;
    .registers 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mRoot:Lcom/google/android/opengl/glview/TopLevelView;

    return-object v0
.end method

.method public listen(IILjava/lang/Object;Ljava/lang/Object;)Z
    .registers 6
    .parameter "msg"
    .parameter "senderId"
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v0, 0x1

    .line 198
    packed-switch p1, :pswitch_data_e

    .line 206
    const/4 v0, 0x0

    :goto_5
    return v0

    .line 200
    :pswitch_6
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/GLViewRenderer;->requestRender()V

    goto :goto_5

    .line 203
    :pswitch_a
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/GLViewRenderer;->requestLayout()V

    goto :goto_5

    .line 198
    :pswitch_data_e
    .packed-switch 0x64
        :pswitch_a
        :pswitch_6
    .end packed-switch
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 3
    .parameter "glUnused"

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/GLViewRenderer;->preDrawFrame()V

    .line 66
    iget-boolean v0, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mSurfacePrefersClearAtStartOfFrame:Z

    if-eqz v0, :cond_c

    .line 67
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 69
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/GLViewRenderer;->drawFrame()V

    .line 70
    return-void
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 6
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 258
    iget-boolean v1, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mHaveSystemFocus:Z

    if-eq v1, p1, :cond_16

    .line 259
    iput-boolean p1, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mHaveSystemFocus:Z

    .line 260
    const/4 v0, 0x0

    .line 261
    .local v0, previouslyFocusedRectF:Landroid/graphics/RectF;
    if-eqz p3, :cond_e

    .line 262
    new-instance v0, Landroid/graphics/RectF;

    .end local v0           #previouslyFocusedRectF:Landroid/graphics/RectF;
    invoke-direct {v0, p3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 264
    .restart local v0       #previouslyFocusedRectF:Landroid/graphics/RectF;
    :cond_e
    invoke-direct {p0, p2, v0}, Lcom/google/android/opengl/glview/GLViewRenderer;->updateFocus(ILandroid/graphics/RectF;)V

    .line 265
    iget-object v1, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mGLSurfaceView:Lcom/google/android/opengl/glview/GLSurfaceView;

    invoke-virtual {v1}, Lcom/google/android/opengl/glview/GLSurfaceView;->requestRender()V

    .line 267
    .end local v0           #previouslyFocusedRectF:Landroid/graphics/RectF;
    :cond_16
    return-void
.end method

.method protected onLayout()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 305
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mRoot:Lcom/google/android/opengl/glview/TopLevelView;

    iget-object v1, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mCanvas:Lcom/google/android/opengl/glview/GLCanvas;

    invoke-virtual {v1}, Lcom/google/android/opengl/glview/GLCanvas;->width()F

    move-result v1

    iget-object v2, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mCanvas:Lcom/google/android/opengl/glview/GLCanvas;

    invoke-virtual {v2}, Lcom/google/android/opengl/glview/GLCanvas;->height()F

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/google/android/opengl/glview/TopLevelView;->setContentRect(FFFF)V

    .line 306
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mRequestLayout:Z

    .line 307
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .registers 9
    .parameter "glUnused"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v4, 0x0

    .line 129
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mCanvas:Lcom/google/android/opengl/glview/GLCanvas;

    int-to-float v1, p2

    int-to-float v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/opengl/glview/GLCanvas;->setExtent(FF)V

    .line 132
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mRoot:Lcom/google/android/opengl/glview/TopLevelView;

    if-nez v0, :cond_16

    .line 133
    new-instance v0, Lcom/google/android/opengl/glview/TopLevelView;

    const/4 v1, 0x0

    int-to-float v2, p2

    int-to-float v3, p3

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/google/android/opengl/glview/TopLevelView;-><init>(IFFLcom/google/android/opengl/glview/Listener;)V

    iput-object v0, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mRoot:Lcom/google/android/opengl/glview/TopLevelView;

    .line 135
    :cond_16
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mRoot:Lcom/google/android/opengl/glview/TopLevelView;

    int-to-float v1, p2

    int-to-float v2, p3

    invoke-virtual {v0, v4, v4, v1, v2}, Lcom/google/android/opengl/glview/TopLevelView;->setContentRect(FFFF)V

    .line 136
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mCamera:Lcom/google/android/opengl/glview/GLCamera;

    invoke-virtual {v0, p2, p3}, Lcom/google/android/opengl/glview/GLCamera;->setCamera(II)V

    .line 137
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .registers 6
    .parameter "glUnused"
    .parameter "config"

    .prologue
    const/4 v2, 0x0

    .line 145
    const/16 v0, 0xcf5

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    .line 147
    invoke-direct {p0}, Lcom/google/android/opengl/glview/GLViewRenderer;->checkEGLSurface()V

    .line 155
    invoke-static {v2, v2, v2, v2}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 159
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mCanvas:Lcom/google/android/opengl/glview/GLCanvas;

    invoke-virtual {v0, p2}, Lcom/google/android/opengl/glview/GLCanvas;->onSurfaceCreated(Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 160
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mRoot:Lcom/google/android/opengl/glview/TopLevelView;

    if-eqz v0, :cond_1d

    .line 161
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mRoot:Lcom/google/android/opengl/glview/TopLevelView;

    iget-object v1, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mCanvas:Lcom/google/android/opengl/glview/GLCanvas;

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/TopLevelView;->onSurfaceCreated(Lcom/google/android/opengl/glview/GLCanvas;)V

    .line 163
    :cond_1d
    return-void
.end method

.method protected preDrawFrame()V
    .registers 9

    .prologue
    .line 73
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 74
    .local v1, now:J
    const v3, 0x3a83126f

    const-wide/16 v4, 0x32

    iget-wide v6, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mFrameTime:J

    sub-long v6, v1, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-float v4, v4

    mul-float v0, v3, v4

    .line 75
    .local v0, dt:F
    iput v0, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mFrameInterval:F

    .line 76
    iput-wide v1, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mFrameTime:J

    .line 77
    invoke-direct {p0}, Lcom/google/android/opengl/glview/GLViewRenderer;->updateFPS()V

    .line 78
    return-void
.end method

.method protected final requestLayout()V
    .registers 2

    .prologue
    .line 300
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mRequestLayout:Z

    .line 301
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mGLSurfaceView:Lcom/google/android/opengl/glview/GLSurfaceView;

    invoke-virtual {v0}, Lcom/google/android/opengl/glview/GLSurfaceView;->requestRender()V

    .line 302
    return-void
.end method

.method protected final requestRender()V
    .registers 2

    .prologue
    .line 296
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mGLSurfaceView:Lcom/google/android/opengl/glview/GLSurfaceView;

    invoke-virtual {v0}, Lcom/google/android/opengl/glview/GLSurfaceView;->requestRender()V

    .line 297
    return-void
.end method

.method public route(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 14
    .parameter "tag"
    .parameter "e0"
    .parameter "e1"
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 215
    const/4 v7, 0x0

    .line 216
    .local v7, result:Z
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mRoot:Lcom/google/android/opengl/glview/TopLevelView;

    if-eqz v0, :cond_18

    .line 217
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mRoot:Lcom/google/android/opengl/glview/TopLevelView;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/opengl/glview/TopLevelView;->route(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Lcom/google/android/opengl/glview/GLView$EventTracker;

    move-result-object v6

    .line 229
    .local v6, et:Lcom/google/android/opengl/glview/GLView$EventTracker;
    if-eqz v6, :cond_19

    const/4 v7, 0x1

    .line 230
    :goto_13
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mGLSurfaceView:Lcom/google/android/opengl/glview/GLSurfaceView;

    invoke-virtual {v0}, Lcom/google/android/opengl/glview/GLSurfaceView;->requestRender()V

    .line 232
    .end local v6           #et:Lcom/google/android/opengl/glview/GLView$EventTracker;
    :cond_18
    return v7

    .line 229
    .restart local v6       #et:Lcom/google/android/opengl/glview/GLView$EventTracker;
    :cond_19
    const/4 v7, 0x0

    goto :goto_13
.end method

.method public routeKey(III)Z
    .registers 13
    .parameter "tag"
    .parameter "keyCode"
    .parameter "flags"

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 236
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mRoot:Lcom/google/android/opengl/glview/TopLevelView;

    if-eqz v0, :cond_2f

    .line 240
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mRoot:Lcom/google/android/opengl/glview/TopLevelView;

    int-to-float v4, p2

    int-to-float v5, p3

    move v1, p1

    move-object v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/opengl/glview/TopLevelView;->route(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Lcom/google/android/opengl/glview/GLView$EventTracker;

    move-result-object v0

    if-eqz v0, :cond_2b

    move v6, v7

    .line 241
    .local v6, handled:Z
    :goto_14
    if-nez v6, :cond_23

    const/16 v0, 0xb

    if-ne p1, v0, :cond_23

    .line 243
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mRoot:Lcom/google/android/opengl/glview/TopLevelView;

    invoke-virtual {v0, p2, p3}, Lcom/google/android/opengl/glview/TopLevelView;->routeFocusEvent(II)Lcom/google/android/opengl/glview/GLView$EventTracker;

    move-result-object v0

    if-eqz v0, :cond_2d

    move v6, v7

    .line 245
    :cond_23
    :goto_23
    if-eqz v6, :cond_2a

    .line 249
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mGLSurfaceView:Lcom/google/android/opengl/glview/GLSurfaceView;

    invoke-virtual {v0}, Lcom/google/android/opengl/glview/GLSurfaceView;->requestRender()V

    .line 253
    .end local v6           #handled:Z
    :cond_2a
    :goto_2a
    return v6

    :cond_2b
    move v6, v8

    .line 240
    goto :goto_14

    .restart local v6       #handled:Z
    :cond_2d
    move v6, v8

    .line 243
    goto :goto_23

    .end local v6           #handled:Z
    :cond_2f
    move v6, v8

    .line 253
    goto :goto_2a
.end method

.method protected setCanvasConfiguration(Ljava/lang/Object;)V
    .registers 3
    .parameter "configuration"

    .prologue
    .line 310
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mCanvas:Lcom/google/android/opengl/glview/GLCanvas;

    invoke-virtual {v0, p1}, Lcom/google/android/opengl/glview/GLCanvas;->setConfiguration(Ljava/lang/Object;)V

    .line 311
    return-void
.end method
