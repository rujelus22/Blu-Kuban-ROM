.class public Lcom/google/ads/internal/a;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# static fields
.field private static final b:Lcom/google/ads/internal/g;


# instance fields
.field public a:Landroid/widget/MediaController;

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/google/ads/internal/e;

.field private e:J

.field private f:Landroid/widget/VideoView;

.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/google/ads/internal/g;->a:Lcom/google/ads/util/j;

    invoke-interface {v0}, Lcom/google/ads/util/j;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/internal/g;

    sput-object v0, Lcom/google/ads/internal/a;->b:Lcom/google/ads/internal/g;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/google/ads/internal/e;)V
    .registers 7

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/internal/a;->c:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/google/ads/internal/a;->d:Lcom/google/ads/internal/e;

    new-instance v0, Landroid/widget/VideoView;

    invoke-direct {v0, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/ads/internal/a;->f:Landroid/widget/VideoView;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v1, p0, Lcom/google/ads/internal/a;->f:Landroid/widget/VideoView;

    invoke-virtual {p0, v1, v0}, Lcom/google/ads/internal/a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v3, p0, Lcom/google/ads/internal/a;->a:Landroid/widget/MediaController;

    iput-object v3, p0, Lcom/google/ads/internal/a;->g:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/ads/internal/a;->e:J

    invoke-virtual {p0}, Lcom/google/ads/internal/a;->a()V

    iget-object v0, p0, Lcom/google/ads/internal/a;->f:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/google/ads/internal/a;->f:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/google/ads/internal/a;->f:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 2

    new-instance v0, Lcom/google/ads/internal/d;

    invoke-direct {v0, p0}, Lcom/google/ads/internal/d;-><init>(Lcom/google/ads/internal/a;)V

    invoke-virtual {v0}, Lcom/google/ads/internal/d;->a()V

    return-void
.end method

.method public a(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/ads/internal/a;->f:Landroid/widget/VideoView;

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->seekTo(I)V

    return-void
.end method

.method public a(Landroid/view/MotionEvent;)V
    .registers 3

    iget-object v0, p0, Lcom/google/ads/internal/a;->f:Landroid/widget/VideoView;

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/google/ads/internal/a;->g:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .registers 4

    iget-object v0, p0, Lcom/google/ads/internal/a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_10

    const-string v0, "adActivity was null while trying to enable controls on a video."

    invoke-static {v0}, Lcom/google/ads/util/b;->e(Ljava/lang/String;)V

    :goto_f
    return-void

    :cond_10
    if-eqz p1, :cond_25

    iget-object v1, p0, Lcom/google/ads/internal/a;->a:Landroid/widget/MediaController;

    if-nez v1, :cond_1d

    new-instance v1, Landroid/widget/MediaController;

    invoke-direct {v1, v0}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/ads/internal/a;->a:Landroid/widget/MediaController;

    :cond_1d
    iget-object v0, p0, Lcom/google/ads/internal/a;->f:Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/google/ads/internal/a;->a:Landroid/widget/MediaController;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    goto :goto_f

    :cond_25
    iget-object v0, p0, Lcom/google/ads/internal/a;->a:Landroid/widget/MediaController;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/google/ads/internal/a;->a:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    :cond_2e
    iget-object v0, p0, Lcom/google/ads/internal/a;->f:Landroid/widget/VideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    goto :goto_f
.end method

.method public b()V
    .registers 5

    iget-object v0, p0, Lcom/google/ads/internal/a;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/google/ads/internal/a;->f:Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/google/ads/internal/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    :goto_f
    return-void

    :cond_10
    sget-object v0, Lcom/google/ads/internal/a;->b:Lcom/google/ads/internal/g;

    iget-object v1, p0, Lcom/google/ads/internal/a;->d:Lcom/google/ads/internal/e;

    const-string v2, "onVideoEvent"

    const-string v3, "{\'event\': \'error\', \'what\': \'no_src\'}"

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/ads/internal/g;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f
.end method

.method public c()V
    .registers 2

    iget-object v0, p0, Lcom/google/ads/internal/a;->f:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    return-void
.end method

.method public d()V
    .registers 2

    iget-object v0, p0, Lcom/google/ads/internal/a;->f:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    return-void
.end method

.method public e()V
    .registers 2

    iget-object v0, p0, Lcom/google/ads/internal/a;->f:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    return-void
.end method

.method f()V
    .registers 9

    iget-object v0, p0, Lcom/google/ads/internal/a;->f:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/google/ads/internal/a;->e:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_35

    long-to-float v2, v0

    const/high16 v3, 0x447a

    div-float/2addr v2, v3

    sget-object v3, Lcom/google/ads/internal/a;->b:Lcom/google/ads/internal/g;

    iget-object v4, p0, Lcom/google/ads/internal/a;->d:Lcom/google/ads/internal/e;

    const-string v5, "onVideoEvent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "{\'event\': \'timeupdate\', \'time\': "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "}"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v5, v2}, Lcom/google/ads/internal/g;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    iput-wide v0, p0, Lcom/google/ads/internal/a;->e:J

    :cond_35
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 6

    sget-object v0, Lcom/google/ads/internal/a;->b:Lcom/google/ads/internal/g;

    iget-object v1, p0, Lcom/google/ads/internal/a;->d:Lcom/google/ads/internal/e;

    const-string v2, "onVideoEvent"

    const-string v3, "{\'event\': \'ended\'}"

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/ads/internal/g;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Video threw error! <what:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", extra:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->e(Ljava/lang/String;)V

    sget-object v0, Lcom/google/ads/internal/a;->b:Lcom/google/ads/internal/g;

    iget-object v1, p0, Lcom/google/ads/internal/a;->d:Lcom/google/ads/internal/e;

    const-string v2, "onVideoEvent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "{\'event\': \'error\', \'what\': \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\', \'extra\': \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/ads/internal/g;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 8

    iget-object v0, p0, Lcom/google/ads/internal/a;->f:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getDuration()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x447a

    div-float/2addr v0, v1

    sget-object v1, Lcom/google/ads/internal/a;->b:Lcom/google/ads/internal/g;

    iget-object v2, p0, Lcom/google/ads/internal/a;->d:Lcom/google/ads/internal/e;

    const-string v3, "onVideoEvent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "{\'event\': \'canplaythrough\', \'duration\': \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\'}"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/ads/internal/g;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
