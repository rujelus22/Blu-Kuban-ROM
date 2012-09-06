.class public Lcom/google/android/apps/plus/hangout/VideoTextureView;
.super Lcom/google/android/apps/plus/views/GLTextureView;
.source "VideoTextureView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/hangout/VideoTextureView$1;,
        Lcom/google/android/apps/plus/hangout/VideoTextureView$Renderer;
    }
.end annotation


# instance fields
.field private final mGcommNativeWrapper:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

.field private volatile mIsDecoding:Z

.field private final mRenderer:Lcom/google/android/apps/plus/hangout/VideoTextureView$Renderer;

.field private volatile mRequestID:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/hangout/VideoTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/views/GLTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    iput v2, p0, Lcom/google/android/apps/plus/hangout/VideoTextureView;->mRequestID:I

    .line 32
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/VideoTextureView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/VideoTextureView;->mGcommNativeWrapper:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    .line 34
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/hangout/VideoTextureView;->setEGLContextClientVersion(I)V

    .line 35
    new-instance v0, Lcom/google/android/apps/plus/hangout/VideoTextureView$Renderer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/plus/hangout/VideoTextureView$Renderer;-><init>(Lcom/google/android/apps/plus/hangout/VideoTextureView;Lcom/google/android/apps/plus/hangout/VideoTextureView$1;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/VideoTextureView;->mRenderer:Lcom/google/android/apps/plus/hangout/VideoTextureView$Renderer;

    .line 36
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/VideoTextureView;->mRenderer:Lcom/google/android/apps/plus/hangout/VideoTextureView$Renderer;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/hangout/VideoTextureView;->setRenderer(Lcom/google/android/apps/plus/views/GLTextureView$Renderer;)V

    .line 37
    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/hangout/VideoTextureView;->setRenderMode(I)V

    .line 41
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/VideoTextureView;->onPause()V

    .line 42
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/hangout/VideoTextureView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Lcom/google/android/apps/plus/hangout/VideoTextureView;->mRequestID:I

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/hangout/VideoTextureView;)Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/VideoTextureView;->mGcommNativeWrapper:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/android/apps/plus/hangout/VideoTextureView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/google/android/apps/plus/hangout/VideoTextureView;->mIsDecoding:Z

    return p1
.end method


# virtual methods
.method public isDecoding()Z
    .registers 2

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/google/android/apps/plus/hangout/VideoTextureView;->mIsDecoding:Z

    return v0
.end method

.method public final setRequestID(I)V
    .registers 3
    .parameter "id"

    .prologue
    .line 49
    iget v0, p0, Lcom/google/android/apps/plus/hangout/VideoTextureView;->mRequestID:I

    if-eq v0, p1, :cond_b

    .line 50
    iput p1, p0, Lcom/google/android/apps/plus/hangout/VideoTextureView;->mRequestID:I

    .line 51
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/VideoTextureView;->mRenderer:Lcom/google/android/apps/plus/hangout/VideoTextureView$Renderer;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/VideoTextureView$Renderer;->reinitialize()V

    .line 53
    :cond_b
    return-void
.end method
