.class Lcom/estrongs/android/pop/app/aj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)V
    .registers 3

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/aj;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/estrongs/android/pop/app/aj;->b:I

    iput v0, p0, Lcom/estrongs/android/pop/app/aj;->c:I

    iput v0, p0, Lcom/estrongs/android/pop/app/aj;->d:I

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8

    const/4 v4, 0x3

    const/4 v3, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_26

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/pop/app/aj;->d:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/estrongs/android/pop/app/aj;->b:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/estrongs/android/pop/app/aj;->c:I

    invoke-virtual {p1, p2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/aj;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->o(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Lcom/estrongs/android/pop/view/RealViewSwitcher;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/estrongs/android/pop/view/RealViewSwitcher;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :goto_25
    return v3

    :cond_26
    const/4 v1, 0x2

    if-ne v0, v1, :cond_84

    iget v0, p0, Lcom/estrongs/android/pop/app/aj;->d:I

    if-nez v0, :cond_84

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/estrongs/android/pop/app/aj;->b:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/estrongs/android/pop/app/aj;->c:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/aj;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->o(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Lcom/estrongs/android/pop/view/RealViewSwitcher;

    move-result-object v2

    iget v2, v2, Lcom/estrongs/android/pop/view/RealViewSwitcher;->a:I

    if-gt v0, v2, :cond_5d

    iget-object v2, p0, Lcom/estrongs/android/pop/app/aj;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->o(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Lcom/estrongs/android/pop/view/RealViewSwitcher;

    move-result-object v2

    iget v2, v2, Lcom/estrongs/android/pop/view/RealViewSwitcher;->a:I

    if-gt v1, v2, :cond_5d

    invoke-virtual {p1, p2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_25

    :cond_5d
    if-lt v0, v1, :cond_71

    iput v3, p0, Lcom/estrongs/android/pop/app/aj;->d:I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/aj;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->o(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Lcom/estrongs/android/pop/view/RealViewSwitcher;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/estrongs/android/pop/view/RealViewSwitcher;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_25

    :cond_71
    const/4 v0, -0x1

    iput v0, p0, Lcom/estrongs/android/pop/app/aj;->d:I

    invoke-virtual {p1, p2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->setAction(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/aj;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->o(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Lcom/estrongs/android/pop/view/RealViewSwitcher;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/estrongs/android/pop/view/RealViewSwitcher;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_25

    :cond_84
    iget v0, p0, Lcom/estrongs/android/pop/app/aj;->d:I

    if-ne v0, v3, :cond_92

    iget-object v0, p0, Lcom/estrongs/android/pop/app/aj;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->o(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Lcom/estrongs/android/pop/view/RealViewSwitcher;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/estrongs/android/pop/view/RealViewSwitcher;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_25

    :cond_92
    invoke-virtual {p1, p2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_25
.end method
