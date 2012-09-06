.class public Lcom/google/android/apps/plus/hangout/VideoView;
.super Landroid/opengl/GLSurfaceView;
.source "VideoView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/hangout/VideoView$1;,
        Lcom/google/android/apps/plus/hangout/VideoView$Renderer;
    }
.end annotation


# instance fields
.field private final gcommNativeWrapper:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

.field private volatile reinitializeRenderer:Z

.field private volatile requestID:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/hangout/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    iput v2, p0, Lcom/google/android/apps/plus/hangout/VideoView;->requestID:I

    .line 29
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/VideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/VideoView;->gcommNativeWrapper:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    .line 30
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/hangout/VideoView;->setEGLContextClientVersion(I)V

    .line 31
    new-instance v0, Lcom/google/android/apps/plus/hangout/VideoView$Renderer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/plus/hangout/VideoView$Renderer;-><init>(Lcom/google/android/apps/plus/hangout/VideoView;Lcom/google/android/apps/plus/hangout/VideoView$1;)V

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/hangout/VideoView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 32
    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/hangout/VideoView;->setRenderMode(I)V

    .line 35
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/VideoView;->onPause()V

    .line 36
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/hangout/VideoView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/google/android/apps/plus/hangout/VideoView;->reinitializeRenderer:Z

    return v0
.end method

.method static synthetic access$102(Lcom/google/android/apps/plus/hangout/VideoView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/google/android/apps/plus/hangout/VideoView;->reinitializeRenderer:Z

    return p1
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/hangout/VideoView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 18
    iget v0, p0, Lcom/google/android/apps/plus/hangout/VideoView;->requestID:I

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/plus/hangout/VideoView;)Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/VideoView;->gcommNativeWrapper:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    return-object v0
.end method


# virtual methods
.method public setRequestID(I)V
    .registers 3
    .parameter "requestID"

    .prologue
    .line 39
    iget v0, p0, Lcom/google/android/apps/plus/hangout/VideoView;->requestID:I

    if-eq p1, v0, :cond_9

    .line 40
    iput p1, p0, Lcom/google/android/apps/plus/hangout/VideoView;->requestID:I

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/hangout/VideoView;->reinitializeRenderer:Z

    .line 43
    :cond_9
    return-void
.end method
