.class public Lcom/google/android/youtube/coreicecream/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/google/android/youtube/core/player/ak;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lcom/google/android/youtube/core/player/al;

.field private c:Lcom/google/android/youtube/coreicecream/e;

.field private d:Landroid/view/ViewGroup;

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, "context cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/coreicecream/d;->a:Landroid/content/Context;

    .line 37
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/coreicecream/d;)I
    .registers 2
    .parameter

    .prologue
    .line 24
    iget v0, p0, Lcom/google/android/youtube/coreicecream/d;->e:I

    return v0
.end method

.method static synthetic b(Lcom/google/android/youtube/coreicecream/d;)I
    .registers 2
    .parameter

    .prologue
    .line 24
    iget v0, p0, Lcom/google/android/youtube/coreicecream/d;->f:I

    return v0
.end method

.method static synthetic c(Lcom/google/android/youtube/coreicecream/d;)Lcom/google/android/youtube/coreicecream/e;
    .registers 2
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/d;->c:Lcom/google/android/youtube/coreicecream/e;

    return-object v0
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/d;->d:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public final a(II)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 66
    iput p1, p0, Lcom/google/android/youtube/coreicecream/d;->e:I

    .line 67
    iput p2, p0, Lcom/google/android/youtube/coreicecream/d;->f:I

    .line 68
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/d;->c:Lcom/google/android/youtube/coreicecream/e;

    invoke-virtual {v0}, Lcom/google/android/youtube/coreicecream/e;->requestLayout()V

    .line 69
    return-void
.end method

.method public final a(Landroid/media/MediaPlayer;)V
    .registers 4
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/d;->c:Lcom/google/android/youtube/coreicecream/e;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/d;->c:Lcom/google/android/youtube/coreicecream/e;

    invoke-virtual {v0}, Lcom/google/android/youtube/coreicecream/e;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-nez v0, :cond_14

    .line 73
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MediaPlayer should only be attached after SurfaceTexture is available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_14
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/google/android/youtube/coreicecream/d;->c:Lcom/google/android/youtube/coreicecream/e;

    invoke-virtual {v1}, Lcom/google/android/youtube/coreicecream/e;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 77
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/player/al;)V
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v3, -0x2

    const/4 v2, 0x0

    .line 40
    const-string v0, "listener cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/player/al;

    iput-object v0, p0, Lcom/google/android/youtube/coreicecream/d;->b:Lcom/google/android/youtube/core/player/al;

    .line 41
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/d;->c:Lcom/google/android/youtube/coreicecream/e;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/d;->c:Lcom/google/android/youtube/coreicecream/e;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/coreicecream/e;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/d;->b:Lcom/google/android/youtube/core/player/al;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/al;->c()V

    iput-object v1, p0, Lcom/google/android/youtube/coreicecream/d;->c:Lcom/google/android/youtube/coreicecream/e;

    .line 42
    :cond_1d
    new-instance v0, Lcom/google/android/youtube/coreicecream/e;

    iget-object v1, p0, Lcom/google/android/youtube/coreicecream/d;->a:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/google/android/youtube/coreicecream/e;-><init>(Lcom/google/android/youtube/coreicecream/d;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/youtube/coreicecream/d;->c:Lcom/google/android/youtube/coreicecream/e;

    .line 43
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/d;->c:Lcom/google/android/youtube/coreicecream/e;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/coreicecream/e;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 44
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/d;->c:Lcom/google/android/youtube/coreicecream/e;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/coreicecream/e;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/d;->c:Lcom/google/android/youtube/coreicecream/e;

    invoke-virtual {v0, v2}, Lcom/google/android/youtube/coreicecream/e;->setPivotX(F)V

    .line 47
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/d;->c:Lcom/google/android/youtube/coreicecream/e;

    invoke-virtual {v0, v2}, Lcom/google/android/youtube/coreicecream/e;->setPivotY(F)V

    .line 49
    new-instance v0, Lcom/google/android/youtube/coreicecream/f;

    iget-object v1, p0, Lcom/google/android/youtube/coreicecream/d;->a:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/google/android/youtube/coreicecream/f;-><init>(Lcom/google/android/youtube/coreicecream/d;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/youtube/coreicecream/d;->d:Landroid/view/ViewGroup;

    .line 50
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/d;->d:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/youtube/coreicecream/d;->c:Lcom/google/android/youtube/coreicecream/e;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 51
    return-void
.end method

.method public final b()V
    .registers 1

    .prologue
    .line 81
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/d;->b:Lcom/google/android/youtube/core/player/al;

    if-eqz v0, :cond_9

    .line 97
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/d;->b:Lcom/google/android/youtube/core/player/al;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/al;->a()V

    .line 99
    :cond_9
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .registers 3
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/d;->b:Lcom/google/android/youtube/core/player/al;

    if-eqz v0, :cond_9

    .line 103
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/d;->b:Lcom/google/android/youtube/core/player/al;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/al;->c()V

    .line 105
    :cond_9
    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/d;->b:Lcom/google/android/youtube/core/player/al;

    if-eqz v0, :cond_9

    .line 85
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/d;->b:Lcom/google/android/youtube/core/player/al;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/al;->b()V

    .line 87
    :cond_9
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .registers 3
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/d;->b:Lcom/google/android/youtube/core/player/al;

    if-eqz v0, :cond_9

    .line 91
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/d;->b:Lcom/google/android/youtube/core/player/al;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/al;->b()V

    .line 93
    :cond_9
    return-void
.end method
