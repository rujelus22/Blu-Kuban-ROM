.class public Lcom/google/android/music/lockscreen/WaveView;
.super Landroid/opengl/GLSurfaceView;
.source "WaveView.java"


# instance fields
.field private mRenderer:Lcom/google/android/music/lockscreen/WaveRenderer;

.field private mScene:Lcom/google/android/music/lockscreen/WaveScene;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/music/lockscreen/WaveView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/music/lockscreen/WaveView;->setEGLContextClientVersion(I)V

    .line 31
    new-instance v0, Lcom/google/android/music/lockscreen/WaveRenderer;

    invoke-direct {v0, p1, p0}, Lcom/google/android/music/lockscreen/WaveRenderer;-><init>(Landroid/content/Context;Lcom/google/android/music/lockscreen/WaveView;)V

    iput-object v0, p0, Lcom/google/android/music/lockscreen/WaveView;->mRenderer:Lcom/google/android/music/lockscreen/WaveRenderer;

    .line 32
    iget-object v0, p0, Lcom/google/android/music/lockscreen/WaveView;->mRenderer:Lcom/google/android/music/lockscreen/WaveRenderer;

    iget-object v0, v0, Lcom/google/android/music/lockscreen/WaveRenderer;->mScene:Lcom/google/android/music/lockscreen/WaveScene;

    iput-object v0, p0, Lcom/google/android/music/lockscreen/WaveView;->mScene:Lcom/google/android/music/lockscreen/WaveScene;

    .line 33
    iget-object v0, p0, Lcom/google/android/music/lockscreen/WaveView;->mRenderer:Lcom/google/android/music/lockscreen/WaveRenderer;

    invoke-virtual {p0, v0}, Lcom/google/android/music/lockscreen/WaveView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 34
    return-void
.end method


# virtual methods
.method public getWaveScene()Lcom/google/android/music/lockscreen/WaveScene;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/music/lockscreen/WaveView;->mScene:Lcom/google/android/music/lockscreen/WaveScene;

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "event"

    .prologue
    .line 41
    iget-object v1, p0, Lcom/google/android/music/lockscreen/WaveView;->mScene:Lcom/google/android/music/lockscreen/WaveScene;

    invoke-virtual {v1, p1}, Lcom/google/android/music/lockscreen/WaveScene;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 42
    .local v0, handled:Z
    invoke-virtual {p0}, Lcom/google/android/music/lockscreen/WaveView;->requestRender()V

    .line 43
    if-eqz v0, :cond_d

    const/4 v1, 0x1

    :goto_c
    return v1

    :cond_d
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_c
.end method
