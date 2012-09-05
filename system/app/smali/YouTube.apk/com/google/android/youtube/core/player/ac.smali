.class final Lcom/google/android/youtube/core/player/ac;
.super Landroid/view/SurfaceView;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/player/PlayerView;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/player/PlayerView;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/google/android/youtube/core/player/ac;->a:Lcom/google/android/youtube/core/player/PlayerView;

    .line 86
    invoke-direct {p0, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 87
    return-void
.end method


# virtual methods
.method protected final onMeasure(II)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/youtube/core/player/ac;->a:Lcom/google/android/youtube/core/player/PlayerView;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/PlayerView;->a(Lcom/google/android/youtube/core/player/PlayerView;)I

    move-result v0

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/player/ac;->getDefaultSize(II)I

    move-result v1

    .line 92
    iget-object v0, p0, Lcom/google/android/youtube/core/player/ac;->a:Lcom/google/android/youtube/core/player/PlayerView;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/PlayerView;->b(Lcom/google/android/youtube/core/player/PlayerView;)I

    move-result v0

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/player/ac;->getDefaultSize(II)I

    move-result v0

    .line 93
    iget-object v2, p0, Lcom/google/android/youtube/core/player/ac;->a:Lcom/google/android/youtube/core/player/PlayerView;

    invoke-static {v2}, Lcom/google/android/youtube/core/player/PlayerView;->a(Lcom/google/android/youtube/core/player/PlayerView;)I

    move-result v2

    if-lez v2, :cond_4d

    iget-object v2, p0, Lcom/google/android/youtube/core/player/ac;->a:Lcom/google/android/youtube/core/player/PlayerView;

    invoke-static {v2}, Lcom/google/android/youtube/core/player/PlayerView;->b(Lcom/google/android/youtube/core/player/PlayerView;)I

    move-result v2

    if-lez v2, :cond_4d

    .line 94
    iget-object v2, p0, Lcom/google/android/youtube/core/player/ac;->a:Lcom/google/android/youtube/core/player/PlayerView;

    invoke-static {v2}, Lcom/google/android/youtube/core/player/PlayerView;->a(Lcom/google/android/youtube/core/player/PlayerView;)I

    move-result v2

    mul-int/2addr v2, v0

    int-to-float v2, v2

    iget-object v3, p0, Lcom/google/android/youtube/core/player/ac;->a:Lcom/google/android/youtube/core/player/PlayerView;

    invoke-static {v3}, Lcom/google/android/youtube/core/player/PlayerView;->b(Lcom/google/android/youtube/core/player/PlayerView;)I

    move-result v3

    mul-int/2addr v3, v1

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x3f80

    sub-float/2addr v2, v3

    .line 95
    const v3, 0x3c23d70a

    cmpl-float v3, v2, v3

    if-lez v3, :cond_51

    .line 96
    iget-object v0, p0, Lcom/google/android/youtube/core/player/ac;->a:Lcom/google/android/youtube/core/player/PlayerView;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/PlayerView;->b(Lcom/google/android/youtube/core/player/PlayerView;)I

    move-result v0

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/android/youtube/core/player/ac;->a:Lcom/google/android/youtube/core/player/PlayerView;

    invoke-static {v2}, Lcom/google/android/youtube/core/player/PlayerView;->a(Lcom/google/android/youtube/core/player/PlayerView;)I

    move-result v2

    div-int/2addr v0, v2

    .line 101
    :cond_4d
    :goto_4d
    invoke-virtual {p0, v1, v0}, Lcom/google/android/youtube/core/player/ac;->setMeasuredDimension(II)V

    .line 102
    return-void

    .line 97
    :cond_51
    const v3, -0x43dc28f6

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4d

    .line 98
    iget-object v1, p0, Lcom/google/android/youtube/core/player/ac;->a:Lcom/google/android/youtube/core/player/PlayerView;

    invoke-static {v1}, Lcom/google/android/youtube/core/player/PlayerView;->a(Lcom/google/android/youtube/core/player/PlayerView;)I

    move-result v1

    mul-int/2addr v1, v0

    iget-object v2, p0, Lcom/google/android/youtube/core/player/ac;->a:Lcom/google/android/youtube/core/player/PlayerView;

    invoke-static {v2}, Lcom/google/android/youtube/core/player/PlayerView;->b(Lcom/google/android/youtube/core/player/PlayerView;)I

    move-result v2

    div-int/2addr v1, v2

    goto :goto_4d
.end method
