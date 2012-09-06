.class public Lcom/twitter/android/widget/MediaPlayerView;
.super Landroid/view/SurfaceView;

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/widget/MediaController$MediaPlayerControl;


# instance fields
.field private a:Landroid/media/MediaPlayer;

.field private b:Landroid/widget/MediaController;

.field private c:Landroid/view/SurfaceHolder;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Landroid/net/Uri;

.field private j:Lcom/twitter/android/widget/m;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/twitter/android/widget/MediaPlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/android/widget/MediaPlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    const/4 v2, 0x1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Lcom/twitter/android/widget/MediaPlayerView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    iput-object v0, p0, Lcom/twitter/android/widget/MediaPlayerView;->c:Landroid/view/SurfaceHolder;

    invoke-virtual {p0, v2}, Lcom/twitter/android/widget/MediaPlayerView;->setFocusable(Z)V

    invoke-virtual {p0, v2}, Lcom/twitter/android/widget/MediaPlayerView;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0}, Lcom/twitter/android/widget/MediaPlayerView;->requestFocus()Z

    return-void
.end method

.method static synthetic a(Lcom/twitter/android/widget/MediaPlayerView;)Lcom/twitter/android/widget/m;
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/widget/MediaPlayerView;->j:Lcom/twitter/android/widget/m;

    return-object v0
.end method

.method private b()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/twitter/android/widget/MediaPlayerView;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/twitter/android/widget/MediaPlayerView;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/widget/MediaPlayerView;->a:Landroid/media/MediaPlayer;

    :cond_d
    iput v1, p0, Lcom/twitter/android/widget/MediaPlayerView;->g:I

    iput v1, p0, Lcom/twitter/android/widget/MediaPlayerView;->d:I

    iput v1, p0, Lcom/twitter/android/widget/MediaPlayerView;->e:I

    return-void
.end method

.method private b(I)Z
    .registers 3

    iget v0, p0, Lcom/twitter/android/widget/MediaPlayerView;->g:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private c()V
    .registers 3

    iget-object v0, p0, Lcom/twitter/android/widget/MediaPlayerView;->b:Landroid/widget/MediaController;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/twitter/android/widget/MediaPlayerView;->b:Landroid/widget/MediaController;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->show(I)V

    :cond_b
    return-void
.end method

.method private c(I)V
    .registers 3

    iget v0, p0, Lcom/twitter/android/widget/MediaPlayerView;->g:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/twitter/android/widget/MediaPlayerView;->g:I

    return-void
.end method

.method private d()V
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/widget/MediaPlayerView;->b:Landroid/widget/MediaController;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/twitter/android/widget/MediaPlayerView;->b:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    :cond_9
    return-void
.end method

.method private e()V
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/widget/MediaPlayerView;->b:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lcom/twitter/android/widget/MediaPlayerView;->d()V

    :goto_b
    return-void

    :cond_c
    invoke-direct {p0}, Lcom/twitter/android/widget/MediaPlayerView;->c()V

    goto :goto_b
.end method


# virtual methods
.method public final a()V
    .registers 1

    invoke-direct {p0}, Lcom/twitter/android/widget/MediaPlayerView;->b()V

    return-void
.end method

.method public final a(I)V
    .registers 2

    iput p1, p0, Lcom/twitter/android/widget/MediaPlayerView;->h:I

    return-void
.end method

.method public final a(Landroid/net/Uri;)V
    .registers 2

    iput-object p1, p0, Lcom/twitter/android/widget/MediaPlayerView;->i:Landroid/net/Uri;

    return-void
.end method

.method public final a(Lcom/twitter/android/widget/m;)V
    .registers 2

    iput-object p1, p0, Lcom/twitter/android/widget/MediaPlayerView;->j:Lcom/twitter/android/widget/m;

    return-void
.end method

.method public canPause()Z
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/widget/MediaPlayerView;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public canSeekBackward()Z
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/widget/MediaPlayerView;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_d

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/twitter/android/widget/MediaPlayerView;->b(I)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public canSeekForward()Z
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/widget/MediaPlayerView;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_d

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/twitter/android/widget/MediaPlayerView;->b(I)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public getBufferPercentage()I
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/widget/MediaPlayerView;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/twitter/android/widget/MediaPlayerView;->f:I

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getCurrentPosition()I
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/widget/MediaPlayerView;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/twitter/android/widget/MediaPlayerView;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getDuration()I
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/widget/MediaPlayerView;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/twitter/android/widget/MediaPlayerView;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isPlaying()Z
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/widget/MediaPlayerView;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/twitter/android/widget/MediaPlayerView;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .registers 3

    iput p2, p0, Lcom/twitter/android/widget/MediaPlayerView;->f:I

    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 2

    invoke-direct {p0}, Lcom/twitter/android/widget/MediaPlayerView;->d()V

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 5

    invoke-direct {p0}, Lcom/twitter/android/widget/MediaPlayerView;->b()V

    const/4 v0, 0x1

    return v0
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .registers 5

    const/16 v0, 0x321

    if-ne p2, v0, :cond_a

    iget v0, p0, Lcom/twitter/android/widget/MediaPlayerView;->g:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/twitter/android/widget/MediaPlayerView;->g:I

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6

    const/4 v1, 0x1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_40

    const/16 v0, 0x18

    if-eq p1, v0, :cond_40

    const/16 v0, 0x19

    if-eq p1, v0, :cond_40

    const/16 v0, 0xa4

    if-eq p1, v0, :cond_40

    const/16 v0, 0x52

    if-eq p1, v0, :cond_40

    const/4 v0, 0x5

    if-eq p1, v0, :cond_40

    const/4 v0, 0x6

    if-eq p1, v0, :cond_40

    move v0, v1

    :goto_1b
    const/16 v2, 0x8

    invoke-direct {p0, v2}, Lcom/twitter/android/widget/MediaPlayerView;->b(I)Z

    move-result v2

    if-eqz v2, :cond_76

    if-eqz v0, :cond_76

    iget-object v0, p0, Lcom/twitter/android/widget/MediaPlayerView;->b:Landroid/widget/MediaController;

    if-eqz v0, :cond_76

    const/16 v0, 0x4f

    if-eq p1, v0, :cond_31

    const/16 v0, 0x55

    if-ne p1, v0, :cond_49

    :cond_31
    iget-object v0, p0, Lcom/twitter/android/widget/MediaPlayerView;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-virtual {p0}, Lcom/twitter/android/widget/MediaPlayerView;->pause()V

    invoke-direct {p0}, Lcom/twitter/android/widget/MediaPlayerView;->c()V

    :cond_3f
    :goto_3f
    return v1

    :cond_40
    const/4 v0, 0x0

    goto :goto_1b

    :cond_42
    invoke-virtual {p0}, Lcom/twitter/android/widget/MediaPlayerView;->start()V

    invoke-direct {p0}, Lcom/twitter/android/widget/MediaPlayerView;->d()V

    goto :goto_3f

    :cond_49
    const/16 v0, 0x7e

    if-ne p1, v0, :cond_5c

    iget-object v0, p0, Lcom/twitter/android/widget/MediaPlayerView;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_3f

    invoke-virtual {p0}, Lcom/twitter/android/widget/MediaPlayerView;->start()V

    invoke-direct {p0}, Lcom/twitter/android/widget/MediaPlayerView;->d()V

    goto :goto_3f

    :cond_5c
    const/16 v0, 0x56

    if-eq p1, v0, :cond_64

    const/16 v0, 0x7f

    if-ne p1, v0, :cond_73

    :cond_64
    iget-object v0, p0, Lcom/twitter/android/widget/MediaPlayerView;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-virtual {p0}, Lcom/twitter/android/widget/MediaPlayerView;->pause()V

    invoke-direct {p0}, Lcom/twitter/android/widget/MediaPlayerView;->c()V

    goto :goto_3f

    :cond_73
    invoke-direct {p0}, Lcom/twitter/android/widget/MediaPlayerView;->e()V

    :cond_76
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_3f
.end method

.method protected onMeasure(II)V
    .registers 9

    iget v2, p0, Lcom/twitter/android/widget/MediaPlayerView;->d:I

    iget v3, p0, Lcom/twitter/android/widget/MediaPlayerView;->e:I

    invoke-static {v2, p1}, Lcom/twitter/android/widget/MediaPlayerView;->getDefaultSize(II)I

    move-result v1

    invoke-static {v3, p2}, Lcom/twitter/android/widget/MediaPlayerView;->getDefaultSize(II)I

    move-result v0

    if-lez v2, :cond_19

    if-lez v3, :cond_19

    mul-int v4, v2, v0

    mul-int v5, v3, v1

    if-le v4, v5, :cond_1d

    mul-int v0, v1, v3

    div-int/2addr v0, v2

    :cond_19
    :goto_19
    invoke-virtual {p0, v1, v0}, Lcom/twitter/android/widget/MediaPlayerView;->setMeasuredDimension(II)V

    return-void

    :cond_1d
    if-ge v4, v5, :cond_19

    div-int v1, v4, v3

    goto :goto_19
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 3

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/twitter/android/widget/MediaPlayerView;->c(I)V

    invoke-virtual {p0}, Lcom/twitter/android/widget/MediaPlayerView;->start()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/twitter/android/widget/MediaPlayerView;->b(I)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/twitter/android/widget/MediaPlayerView;->b:Landroid/widget/MediaController;

    if-eqz v0, :cond_f

    invoke-direct {p0}, Lcom/twitter/android/widget/MediaPlayerView;->e()V

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/twitter/android/widget/MediaPlayerView;->b(I)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/twitter/android/widget/MediaPlayerView;->b:Landroid/widget/MediaController;

    if-eqz v0, :cond_f

    invoke-direct {p0}, Lcom/twitter/android/widget/MediaPlayerView;->e()V

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .registers 5

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/twitter/android/widget/MediaPlayerView;->c(I)V

    if-lez p2, :cond_c

    if-lez p3, :cond_c

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    :cond_c
    iput p2, p0, Lcom/twitter/android/widget/MediaPlayerView;->d:I

    iput p3, p0, Lcom/twitter/android/widget/MediaPlayerView;->e:I

    invoke-virtual {p0}, Lcom/twitter/android/widget/MediaPlayerView;->start()V

    return-void
.end method

.method public pause()V
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/widget/MediaPlayerView;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/twitter/android/widget/MediaPlayerView;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    :cond_9
    return-void
.end method

.method public seekTo(I)V
    .registers 3

    iget-object v0, p0, Lcom/twitter/android/widget/MediaPlayerView;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/twitter/android/widget/MediaPlayerView;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    :cond_9
    return-void
.end method

.method public start()V
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/twitter/android/widget/MediaPlayerView;->b(I)Z

    move-result v0

    if-eqz v0, :cond_37

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/twitter/android/widget/MediaPlayerView;->b(I)Z

    move-result v0

    if-eqz v0, :cond_37

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/twitter/android/widget/MediaPlayerView;->c(I)V

    iget-object v0, p0, Lcom/twitter/android/widget/MediaPlayerView;->j:Lcom/twitter/android/widget/m;

    invoke-interface {v0}, Lcom/twitter/android/widget/m;->b()V

    iget-object v0, p0, Lcom/twitter/android/widget/MediaPlayerView;->c:Landroid/view/SurfaceHolder;

    iget v1, p0, Lcom/twitter/android/widget/MediaPlayerView;->d:I

    iget v2, p0, Lcom/twitter/android/widget/MediaPlayerView;->e:I

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    iget v0, p0, Lcom/twitter/android/widget/MediaPlayerView;->h:I

    if-lez v0, :cond_2f

    iget-object v0, p0, Lcom/twitter/android/widget/MediaPlayerView;->a:Landroid/media/MediaPlayer;

    iget v1, p0, Lcom/twitter/android/widget/MediaPlayerView;->h:I

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/twitter/android/widget/MediaPlayerView;->h:I

    :cond_2f
    iget-object v0, p0, Lcom/twitter/android/widget/MediaPlayerView;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    invoke-direct {p0}, Lcom/twitter/android/widget/MediaPlayerView;->c()V

    :cond_37
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 5

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 5

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/twitter/android/widget/MediaPlayerView;->b(I)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/twitter/android/widget/MediaPlayerView;->i:Landroid/net/Uri;

    if-nez v0, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/widget/MediaPlayerView;->a:Landroid/media/MediaPlayer;

    :try_start_14
    invoke-virtual {p0}, Lcom/twitter/android/widget/MediaPlayerView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/widget/MediaPlayerView;->i:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    iget-object v1, p0, Lcom/twitter/android/widget/MediaPlayerView;->c:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    new-instance v1, Lcom/twitter/android/widget/l;

    invoke-virtual {p0}, Lcom/twitter/android/widget/MediaPlayerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/twitter/android/widget/l;-><init>(Lcom/twitter/android/widget/MediaPlayerView;Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/twitter/android/widget/MediaPlayerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_5c

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    :goto_51
    invoke-virtual {v1, p0}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    iput-object v1, p0, Lcom/twitter/android/widget/MediaPlayerView;->b:Landroid/widget/MediaController;
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_56} :catch_57

    goto :goto_c

    :catch_57
    move-exception v0

    invoke-direct {p0}, Lcom/twitter/android/widget/MediaPlayerView;->b()V

    goto :goto_c

    :cond_5c
    :try_start_5c
    invoke-virtual {v1, p0}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_57

    goto :goto_51
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 2

    invoke-direct {p0}, Lcom/twitter/android/widget/MediaPlayerView;->b()V

    return-void
.end method
