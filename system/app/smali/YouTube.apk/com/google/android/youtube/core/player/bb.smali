.class final Lcom/google/android/youtube/core/player/bb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/player/ba;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/player/ba;)V
    .registers 2
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/google/android/youtube/core/player/bb;->a:Lcom/google/android/youtube/core/player/ba;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 93
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_8

    .line 101
    :cond_7
    :goto_7
    return v0

    .line 96
    :cond_8
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/google/android/youtube/core/player/bb;->a:Lcom/google/android/youtube/core/player/ba;

    invoke-static {v1}, Lcom/google/android/youtube/core/player/ba;->a(Lcom/google/android/youtube/core/player/ba;)Lcom/google/android/youtube/core/player/bc;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 97
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bb;->a:Lcom/google/android/youtube/core/player/ba;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/ba;->b(Lcom/google/android/youtube/core/player/ba;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 98
    iget-object v1, p0, Lcom/google/android/youtube/core/player/bb;->a:Lcom/google/android/youtube/core/player/ba;

    invoke-static {v1}, Lcom/google/android/youtube/core/player/ba;->a(Lcom/google/android/youtube/core/player/ba;)Lcom/google/android/youtube/core/player/bc;

    move-result-object v1

    float-to-int v0, v0

    invoke-interface {v1, v0}, Lcom/google/android/youtube/core/player/bc;->a(I)V

    .line 99
    const/4 v0, 0x1

    goto :goto_7
.end method
