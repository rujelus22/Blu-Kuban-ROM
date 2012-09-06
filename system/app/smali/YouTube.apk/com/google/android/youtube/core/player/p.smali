.class public final Lcom/google/android/youtube/core/player/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/google/android/youtube/core/player/ak;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/widget/FrameLayout;

.field private final c:Landroid/view/View;

.field private d:Lcom/google/android/youtube/core/player/al;

.field private e:Lcom/google/android/youtube/core/player/q;

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, "context cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/player/p;->a:Landroid/content/Context;

    .line 36
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/p;->c:Landroid/view/View;

    .line 37
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->c:Landroid/view/View;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 38
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/p;->b:Landroid/widget/FrameLayout;

    .line 39
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->b:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/p;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 40
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/core/player/p;)I
    .registers 2
    .parameter

    .prologue
    .line 19
    iget v0, p0, Lcom/google/android/youtube/core/player/p;->f:I

    return v0
.end method

.method static synthetic b(Lcom/google/android/youtube/core/player/p;)I
    .registers 2
    .parameter

    .prologue
    .line 19
    iget v0, p0, Lcom/google/android/youtube/core/player/p;->g:I

    return v0
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->b:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public final a(II)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 76
    iput p1, p0, Lcom/google/android/youtube/core/player/p;->f:I

    .line 77
    iput p2, p0, Lcom/google/android/youtube/core/player/p;->g:I

    .line 78
    return-void
.end method

.method public final a(Landroid/media/MediaPlayer;)V
    .registers 3
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->e:Lcom/google/android/youtube/core/player/q;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/q;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 69
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/player/al;)V
    .registers 5
    .parameter

    .prologue
    .line 43
    const-string v0, "listener cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/player/al;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/p;->d:Lcom/google/android/youtube/core/player/al;

    .line 44
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->e:Lcom/google/android/youtube/core/player/q;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->e:Lcom/google/android/youtube/core/player/q;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/q;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->d:Lcom/google/android/youtube/core/player/al;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/al;->c()V

    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->b:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/p;->e:Lcom/google/android/youtube/core/player/q;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/core/player/p;->e:Lcom/google/android/youtube/core/player/q;

    .line 45
    :cond_26
    new-instance v0, Lcom/google/android/youtube/core/player/q;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/p;->a:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/google/android/youtube/core/player/q;-><init>(Lcom/google/android/youtube/core/player/p;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/p;->e:Lcom/google/android/youtube/core/player/q;

    .line 46
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->e:Lcom/google/android/youtube/core/player/q;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/q;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 47
    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 48
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 51
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->b:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/p;->e:Lcom/google/android/youtube/core/player/q;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 52
    return-void
.end method

.method public final b()V
    .registers 3

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->c:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 73
    return-void
.end method

.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->d:Lcom/google/android/youtube/core/player/al;

    if-eqz v0, :cond_9

    .line 82
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->d:Lcom/google/android/youtube/core/player/al;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/al;->b()V

    .line 84
    :cond_9
    return-void
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 3
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->d:Lcom/google/android/youtube/core/player/al;

    if-eqz v0, :cond_9

    .line 88
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->d:Lcom/google/android/youtube/core/player/al;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/al;->a()V

    .line 90
    :cond_9
    return-void
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 4
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->d:Lcom/google/android/youtube/core/player/al;

    if-eqz v0, :cond_9

    .line 94
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->d:Lcom/google/android/youtube/core/player/al;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/al;->c()V

    .line 96
    :cond_9
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 97
    return-void
.end method
