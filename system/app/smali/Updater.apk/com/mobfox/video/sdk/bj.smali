.class public final Lcom/mobfox/video/sdk/bj;
.super Landroid/view/SurfaceView;

# interfaces
.implements Lcom/mobfox/video/sdk/af;


# instance fields
.field private A:Ljava/lang/Thread;

.field private B:Ljava/lang/Runnable;

.field private C:Landroid/os/ConditionVariable;

.field private D:Ljava/util/HashMap;

.field private E:Landroid/media/MediaPlayer$OnCompletionListener;

.field private F:Landroid/media/MediaPlayer$OnErrorListener;

.field private G:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field public a:Landroid/os/Handler;

.field b:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field c:Landroid/media/MediaPlayer$OnPreparedListener;

.field d:Landroid/view/SurfaceHolder$Callback;

.field private e:Landroid/net/Uri;

.field private f:I

.field private g:I

.field private h:I

.field private i:Landroid/media/MediaPlayer;

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:Lcom/mobfox/video/sdk/z;

.field private r:Landroid/media/MediaPlayer$OnCompletionListener;

.field private s:Lcom/mobfox/video/sdk/bs;

.field private t:Landroid/media/MediaPlayer$OnPreparedListener;

.field private u:I

.field private v:Landroid/media/MediaPlayer$OnErrorListener;

.field private w:I

.field private x:Z

.field private y:Z

.field private z:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;III)V
    .registers 9

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput v2, p0, Lcom/mobfox/video/sdk/bj;->g:I

    iput v2, p0, Lcom/mobfox/video/sdk/bj;->h:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobfox/video/sdk/bj;->i:Landroid/media/MediaPlayer;

    iput-boolean v2, p0, Lcom/mobfox/video/sdk/bj;->y:Z

    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0, v2}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v0, p0, Lcom/mobfox/video/sdk/bj;->C:Landroid/os/ConditionVariable;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mobfox/video/sdk/bj;->D:Ljava/util/HashMap;

    new-instance v0, Lcom/mobfox/video/sdk/bk;

    invoke-direct {v0, p0}, Lcom/mobfox/video/sdk/bk;-><init>(Lcom/mobfox/video/sdk/bj;)V

    iput-object v0, p0, Lcom/mobfox/video/sdk/bj;->b:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    new-instance v0, Lcom/mobfox/video/sdk/bl;

    invoke-direct {v0, p0}, Lcom/mobfox/video/sdk/bl;-><init>(Lcom/mobfox/video/sdk/bj;)V

    iput-object v0, p0, Lcom/mobfox/video/sdk/bj;->c:Landroid/media/MediaPlayer$OnPreparedListener;

    new-instance v0, Lcom/mobfox/video/sdk/bm;

    invoke-direct {v0, p0}, Lcom/mobfox/video/sdk/bm;-><init>(Lcom/mobfox/video/sdk/bj;)V

    iput-object v0, p0, Lcom/mobfox/video/sdk/bj;->E:Landroid/media/MediaPlayer$OnCompletionListener;

    new-instance v0, Lcom/mobfox/video/sdk/bn;

    invoke-direct {v0, p0}, Lcom/mobfox/video/sdk/bn;-><init>(Lcom/mobfox/video/sdk/bj;)V

    iput-object v0, p0, Lcom/mobfox/video/sdk/bj;->F:Landroid/media/MediaPlayer$OnErrorListener;

    new-instance v0, Lcom/mobfox/video/sdk/bo;

    invoke-direct {v0, p0}, Lcom/mobfox/video/sdk/bo;-><init>(Lcom/mobfox/video/sdk/bj;)V

    iput-object v0, p0, Lcom/mobfox/video/sdk/bj;->G:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    new-instance v0, Lcom/mobfox/video/sdk/bp;

    invoke-direct {v0, p0}, Lcom/mobfox/video/sdk/bp;-><init>(Lcom/mobfox/video/sdk/bj;)V

    iput-object v0, p0, Lcom/mobfox/video/sdk/bj;->d:Landroid/view/SurfaceHolder$Callback;

    iput-object p1, p0, Lcom/mobfox/video/sdk/bj;->z:Landroid/content/Context;

    iput p2, p0, Lcom/mobfox/video/sdk/bj;->j:I

    iput p3, p0, Lcom/mobfox/video/sdk/bj;->k:I

    iput p4, p0, Lcom/mobfox/video/sdk/bj;->p:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mobfox/video/sdk/bj;->a:Landroid/os/Handler;

    iput v2, p0, Lcom/mobfox/video/sdk/bj;->l:I

    iput v2, p0, Lcom/mobfox/video/sdk/bj;->m:I

    iput v2, p0, Lcom/mobfox/video/sdk/bj;->n:I

    iput v2, p0, Lcom/mobfox/video/sdk/bj;->o:I

    iput-boolean v2, p0, Lcom/mobfox/video/sdk/bj;->y:Z

    invoke-virtual {p0, v2}, Lcom/mobfox/video/sdk/bj;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/mobfox/video/sdk/bj;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/mobfox/video/sdk/bj;->d:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    invoke-virtual {p0}, Lcom/mobfox/video/sdk/bj;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    invoke-virtual {p0, v3}, Lcom/mobfox/video/sdk/bj;->setFocusable(Z)V

    invoke-virtual {p0, v3}, Lcom/mobfox/video/sdk/bj;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0}, Lcom/mobfox/video/sdk/bj;->requestFocus()Z

    iput v2, p0, Lcom/mobfox/video/sdk/bj;->g:I

    iput v2, p0, Lcom/mobfox/video/sdk/bj;->h:I

    return-void
.end method

.method static synthetic a(Lcom/mobfox/video/sdk/bj;)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/mobfox/video/sdk/bj;->l:I

    iput v0, p0, Lcom/mobfox/video/sdk/bj;->m:I

    iget-object v0, p0, Lcom/mobfox/video/sdk/bj;->i:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/mobfox/video/sdk/bj;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    iput v0, p0, Lcom/mobfox/video/sdk/bj;->l:I

    iget-object v0, p0, Lcom/mobfox/video/sdk/bj;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    iput v0, p0, Lcom/mobfox/video/sdk/bj;->m:I

    :cond_19
    const-string v0, "MOBFOX"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_7a

    const-string v0, "MOBFOX"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MobFoxVideoView setVideoDisplaySize View Size ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/mobfox/video/sdk/bj;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mobfox/video/sdk/bj;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") Video size ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mobfox/video/sdk/bj;->l:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mobfox/video/sdk/bj;->m:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") surface:("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mobfox/video/sdk/bj;->n:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mobfox/video/sdk/bj;->o:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7a
    iget-boolean v0, p0, Lcom/mobfox/video/sdk/bj;->y:Z

    if-eqz v0, :cond_ac

    iget v0, p0, Lcom/mobfox/video/sdk/bj;->l:I

    if-lez v0, :cond_ac

    iget v0, p0, Lcom/mobfox/video/sdk/bj;->m:I

    if-lez v0, :cond_ac

    iget v0, p0, Lcom/mobfox/video/sdk/bj;->p:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a1

    iget v0, p0, Lcom/mobfox/video/sdk/bj;->l:I

    iget v1, p0, Lcom/mobfox/video/sdk/bj;->k:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/mobfox/video/sdk/bj;->j:I

    iget v2, p0, Lcom/mobfox/video/sdk/bj;->m:I

    mul-int/2addr v1, v2

    if-le v0, v1, :cond_ad

    iget v0, p0, Lcom/mobfox/video/sdk/bj;->j:I

    iget v1, p0, Lcom/mobfox/video/sdk/bj;->m:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/mobfox/video/sdk/bj;->l:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/mobfox/video/sdk/bj;->k:I

    :cond_a1
    :goto_a1
    invoke-virtual {p0}, Lcom/mobfox/video/sdk/bj;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget v1, p0, Lcom/mobfox/video/sdk/bj;->j:I

    iget v2, p0, Lcom/mobfox/video/sdk/bj;->k:I

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    :cond_ac
    return-void

    :cond_ad
    iget v0, p0, Lcom/mobfox/video/sdk/bj;->l:I

    iget v1, p0, Lcom/mobfox/video/sdk/bj;->k:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/mobfox/video/sdk/bj;->j:I

    iget v2, p0, Lcom/mobfox/video/sdk/bj;->m:I

    mul-int/2addr v1, v2

    if-ge v0, v1, :cond_a1

    iget v0, p0, Lcom/mobfox/video/sdk/bj;->k:I

    iget v1, p0, Lcom/mobfox/video/sdk/bj;->l:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/mobfox/video/sdk/bj;->m:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/mobfox/video/sdk/bj;->j:I

    goto :goto_a1
.end method

.method static synthetic a(Lcom/mobfox/video/sdk/bj;I)V
    .registers 2

    iput p1, p0, Lcom/mobfox/video/sdk/bj;->g:I

    return-void
.end method

.method static synthetic a(Lcom/mobfox/video/sdk/bj;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/mobfox/video/sdk/bj;->y:Z

    return-void
.end method

.method private a(Z)V
    .registers 5

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/mobfox/video/sdk/bj;->i:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_23

    iput v1, p0, Lcom/mobfox/video/sdk/bj;->g:I

    iget-object v0, p0, Lcom/mobfox/video/sdk/bj;->A:Ljava/lang/Thread;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/mobfox/video/sdk/bj;->C:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    iput-object v2, p0, Lcom/mobfox/video/sdk/bj;->A:Ljava/lang/Thread;

    :cond_13
    iget-object v0, p0, Lcom/mobfox/video/sdk/bj;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    iget-object v0, p0, Lcom/mobfox/video/sdk/bj;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iput-object v2, p0, Lcom/mobfox/video/sdk/bj;->i:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_23

    iput v1, p0, Lcom/mobfox/video/sdk/bj;->h:I

    :cond_23
    return-void
.end method

.method static synthetic b(Lcom/mobfox/video/sdk/bj;)Landroid/media/MediaPlayer$OnPreparedListener;
    .registers 2

    iget-object v0, p0, Lcom/mobfox/video/sdk/bj;->t:Landroid/media/MediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method static synthetic b(Lcom/mobfox/video/sdk/bj;I)V
    .registers 2

    iput p1, p0, Lcom/mobfox/video/sdk/bj;->h:I

    return-void
.end method

.method static synthetic c(Lcom/mobfox/video/sdk/bj;)Landroid/media/MediaPlayer;
    .registers 2

    iget-object v0, p0, Lcom/mobfox/video/sdk/bj;->i:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic c(Lcom/mobfox/video/sdk/bj;I)V
    .registers 2

    iput p1, p0, Lcom/mobfox/video/sdk/bj;->u:I

    return-void
.end method

.method static synthetic d(Lcom/mobfox/video/sdk/bj;)Lcom/mobfox/video/sdk/z;
    .registers 2

    iget-object v0, p0, Lcom/mobfox/video/sdk/bj;->q:Lcom/mobfox/video/sdk/z;

    return-object v0
.end method

.method static synthetic d(Lcom/mobfox/video/sdk/bj;I)V
    .registers 2

    iput p1, p0, Lcom/mobfox/video/sdk/bj;->n:I

    return-void
.end method

.method static synthetic e(Lcom/mobfox/video/sdk/bj;)I
    .registers 2

    iget v0, p0, Lcom/mobfox/video/sdk/bj;->w:I

    return v0
.end method

.method static synthetic e(Lcom/mobfox/video/sdk/bj;I)V
    .registers 2

    iput p1, p0, Lcom/mobfox/video/sdk/bj;->o:I

    return-void
.end method

.method static synthetic f(Lcom/mobfox/video/sdk/bj;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/mobfox/video/sdk/bj;->y:Z

    return v0
.end method

.method static synthetic g(Lcom/mobfox/video/sdk/bj;)I
    .registers 2

    iget v0, p0, Lcom/mobfox/video/sdk/bj;->h:I

    return v0
.end method

.method private g()V
    .registers 8

    const/4 v1, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    iget-object v0, p0, Lcom/mobfox/video/sdk/bj;->e:Landroid/net/Uri;

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iput-boolean v5, p0, Lcom/mobfox/video/sdk/bj;->x:Z

    iget-boolean v0, p0, Lcom/mobfox/video/sdk/bj;->y:Z

    if-nez v0, :cond_21

    iput-boolean v6, p0, Lcom/mobfox/video/sdk/bj;->x:Z

    const-string v0, "MOBFOX"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "MOBFOX"

    const-string v1, "Open Video not starting until surface created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_21
    invoke-direct {p0, v5}, Lcom/mobfox/video/sdk/bj;->a(Z)V

    :try_start_24
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/mobfox/video/sdk/bj;->i:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/mobfox/video/sdk/bj;->i:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lcom/mobfox/video/sdk/bj;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/bj;->i:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/mobfox/video/sdk/bj;->c:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/bj;->i:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/mobfox/video/sdk/bj;->b:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/mobfox/video/sdk/bj;->f:I

    iget-object v0, p0, Lcom/mobfox/video/sdk/bj;->i:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/mobfox/video/sdk/bj;->E:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/bj;->i:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/mobfox/video/sdk/bj;->F:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/bj;->i:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/mobfox/video/sdk/bj;->G:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/mobfox/video/sdk/bj;->u:I

    iget-object v0, p0, Lcom/mobfox/video/sdk/bj;->i:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/mobfox/video/sdk/bj;->z:Landroid/content/Context;

    iget-object v2, p0, Lcom/mobfox/video/sdk/bj;->e:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/bj;->i:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/bj;->i:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/bj;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    new-instance v0, Lcom/mobfox/video/sdk/bq;

    invoke-direct {v0, p0}, Lcom/mobfox/video/sdk/bq;-><init>(Lcom/mobfox/video/sdk/bj;)V

    iput-object v0, p0, Lcom/mobfox/video/sdk/bj;->B:Ljava/lang/Runnable;

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/mobfox/video/sdk/bj;->B:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/mobfox/video/sdk/bj;->A:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/mobfox/video/sdk/bj;->A:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/mobfox/video/sdk/bj;->g:I

    invoke-direct {p0}, Lcom/mobfox/video/sdk/bj;->h()V
    :try_end_92
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_92} :catch_94
    .catch Ljava/lang/IllegalArgumentException; {:try_start_24 .. :try_end_92} :catch_b8

    goto/16 :goto_8

    :catch_94
    move-exception v0

    const-string v1, "MOBFOX"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to open content: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/mobfox/video/sdk/bj;->e:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput v4, p0, Lcom/mobfox/video/sdk/bj;->g:I

    iput v4, p0, Lcom/mobfox/video/sdk/bj;->h:I

    iget-object v0, p0, Lcom/mobfox/video/sdk/bj;->F:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v1, p0, Lcom/mobfox/video/sdk/bj;->i:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1, v6, v5}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_8

    :catch_b8
    move-exception v0

    const-string v1, "MOBFOX"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to open content: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/mobfox/video/sdk/bj;->e:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput v4, p0, Lcom/mobfox/video/sdk/bj;->g:I

    iput v4, p0, Lcom/mobfox/video/sdk/bj;->h:I

    iget-object v0, p0, Lcom/mobfox/video/sdk/bj;->F:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v1, p0, Lcom/mobfox/video/sdk/bj;->i:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1, v6, v5}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_8
.end method

.method static synthetic h(Lcom/mobfox/video/sdk/bj;)Landroid/media/MediaPlayer$OnCompletionListener;
    .registers 2

    iget-object v0, p0, Lcom/mobfox/video/sdk/bj;->r:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method private h()V
    .registers 3

    iget-object v0, p0, Lcom/mobfox/video/sdk/bj;->i:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/mobfox/video/sdk/bj;->q:Lcom/mobfox/video/sdk/z;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/mobfox/video/sdk/bj;->q:Lcom/mobfox/video/sdk/z;

    invoke-virtual {v0, p0}, Lcom/mobfox/video/sdk/z;->a(Lcom/mobfox/video/sdk/af;)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/bj;->q:Lcom/mobfox/video/sdk/z;

    invoke-direct {p0}, Lcom/mobfox/video/sdk/bj;->j()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mobfox/video/sdk/z;->setEnabled(Z)V

    :cond_16
    return-void
.end method

.method static synthetic i(Lcom/mobfox/video/sdk/bj;)Landroid/media/MediaPlayer$OnErrorListener;
    .registers 2

    iget-object v0, p0, Lcom/mobfox/video/sdk/bj;->v:Landroid/media/MediaPlayer$OnErrorListener;

    return-object v0
.end method

.method private i()V
    .registers 2

    iget-object v0, p0, Lcom/mobfox/video/sdk/bj;->q:Lcom/mobfox/video/sdk/z;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/mobfox/video/sdk/bj;->q:Lcom/mobfox/video/sdk/z;

    invoke-virtual {v0}, Lcom/mobfox/video/sdk/z;->d()V

    :cond_9
    return-void
.end method

.method private j()Z
    .registers 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/mobfox/video/sdk/bj;->i:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_13

    iget v1, p0, Lcom/mobfox/video/sdk/bj;->g:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_13

    iget v1, p0, Lcom/mobfox/video/sdk/bj;->g:I

    if-eqz v1, :cond_13

    iget v1, p0, Lcom/mobfox/video/sdk/bj;->g:I

    if-eq v1, v0, :cond_13

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method static synthetic j(Lcom/mobfox/video/sdk/bj;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/mobfox/video/sdk/bj;->x:Z

    return v0
.end method

.method static synthetic k(Lcom/mobfox/video/sdk/bj;)V
    .registers 1

    invoke-direct {p0}, Lcom/mobfox/video/sdk/bj;->g()V

    return-void
.end method

.method static synthetic l(Lcom/mobfox/video/sdk/bj;)V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mobfox/video/sdk/bj;->a(Z)V

    return-void
.end method

.method static synthetic m(Lcom/mobfox/video/sdk/bj;)I
    .registers 2

    iget v0, p0, Lcom/mobfox/video/sdk/bj;->g:I

    return v0
.end method

.method static synthetic n(Lcom/mobfox/video/sdk/bj;)Ljava/util/HashMap;
    .registers 2

    iget-object v0, p0, Lcom/mobfox/video/sdk/bj;->D:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic o(Lcom/mobfox/video/sdk/bj;)Landroid/os/ConditionVariable;
    .registers 2

    iget-object v0, p0, Lcom/mobfox/video/sdk/bj;->C:Landroid/os/ConditionVariable;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .registers 5

    const/4 v3, 0x3

    iput v3, p0, Lcom/mobfox/video/sdk/bj;->h:I

    invoke-direct {p0}, Lcom/mobfox/video/sdk/bj;->j()Z

    move-result v0

    if-eqz v0, :cond_3b

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "command"

    const-string v2, "pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/mobfox/video/sdk/bj;->z:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/bj;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    iget-object v0, p0, Lcom/mobfox/video/sdk/bj;->q:Lcom/mobfox/video/sdk/z;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/mobfox/video/sdk/bj;->q:Lcom/mobfox/video/sdk/z;

    invoke-virtual {v0}, Lcom/mobfox/video/sdk/z;->e()V

    :cond_2a
    iget v0, p0, Lcom/mobfox/video/sdk/bj;->g:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_38

    iget-object v0, p0, Lcom/mobfox/video/sdk/bj;->s:Lcom/mobfox/video/sdk/bs;

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/mobfox/video/sdk/bj;->s:Lcom/mobfox/video/sdk/bs;

    invoke-interface {v0}, Lcom/mobfox/video/sdk/bs;->a()V

    :cond_38
    iput v3, p0, Lcom/mobfox/video/sdk/bj;->g:I

    :cond_3a
    :goto_3a
    return-void

    :cond_3b
    iget-object v0, p0, Lcom/mobfox/video/sdk/bj;->i:Landroid/media/MediaPlayer;

    if-nez v0, :cond_3a

    invoke-direct {p0}, Lcom/mobfox/video/sdk/bj;->g()V

    goto :goto_3a
.end method

.method public final a(I)V
    .registers 3

    invoke-direct {p0}, Lcom/mobfox/video/sdk/bj;->j()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/mobfox/video/sdk/bj;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/mobfox/video/sdk/bj;->w:I

    :goto_e
    return-void

    :cond_f
    iput p1, p0, Lcom/mobfox/video/sdk/bj;->w:I

    goto :goto_e
.end method

.method public final a(ILcom/mobfox/video/sdk/bt;)V
    .registers 6

    iget-object v0, p0, Lcom/mobfox/video/sdk/bj;->D:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    if-nez v0, :cond_1c

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iget-object v1, p0, Lcom/mobfox/video/sdk/bj;->D:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c
    invoke-virtual {v0, p2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .registers 2

    iput-object p1, p0, Lcom/mobfox/video/sdk/bj;->r:Landroid/media/MediaPlayer$OnCompletionListener;

    return-void
.end method

.method public final a(Landroid/media/MediaPlayer$OnErrorListener;)V
    .registers 2

    iput-object p1, p0, Lcom/mobfox/video/sdk/bj;->v:Landroid/media/MediaPlayer$OnErrorListener;

    return-void
.end method

.method public final a(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .registers 2

    iput-object p1, p0, Lcom/mobfox/video/sdk/bj;->t:Landroid/media/MediaPlayer$OnPreparedListener;

    return-void
.end method

.method public final a(Lcom/mobfox/video/sdk/bs;)V
    .registers 2

    iput-object p1, p0, Lcom/mobfox/video/sdk/bj;->s:Lcom/mobfox/video/sdk/bs;

    return-void
.end method

.method public final a(Lcom/mobfox/video/sdk/z;)V
    .registers 3

    iget-object v0, p0, Lcom/mobfox/video/sdk/bj;->q:Lcom/mobfox/video/sdk/z;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/mobfox/video/sdk/bj;->q:Lcom/mobfox/video/sdk/z;

    invoke-virtual {v0}, Lcom/mobfox/video/sdk/z;->b()V

    :cond_9
    iput-object p1, p0, Lcom/mobfox/video/sdk/bj;->q:Lcom/mobfox/video/sdk/z;

    invoke-direct {p0}, Lcom/mobfox/video/sdk/bj;->h()V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/mobfox/video/sdk/bj;->e:Landroid/net/Uri;

    const/4 v0, 0x0

    iput v0, p0, Lcom/mobfox/video/sdk/bj;->w:I

    invoke-direct {p0}, Lcom/mobfox/video/sdk/bj;->g()V

    return-void
.end method

.method public final b()V
    .registers 3

    const/4 v1, 0x4

    invoke-direct {p0}, Lcom/mobfox/video/sdk/bj;->j()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/mobfox/video/sdk/bj;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/mobfox/video/sdk/bj;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    iput v1, p0, Lcom/mobfox/video/sdk/bj;->g:I

    iget-object v0, p0, Lcom/mobfox/video/sdk/bj;->q:Lcom/mobfox/video/sdk/z;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/mobfox/video/sdk/bj;->q:Lcom/mobfox/video/sdk/z;

    invoke-virtual {v0}, Lcom/mobfox/video/sdk/z;->f()V

    :cond_1f
    iput v1, p0, Lcom/mobfox/video/sdk/bj;->h:I

    return-void
.end method

.method public final c()I
    .registers 2

    invoke-direct {p0}, Lcom/mobfox/video/sdk/bj;->j()Z

    move-result v0

    if-eqz v0, :cond_18

    iget v0, p0, Lcom/mobfox/video/sdk/bj;->f:I

    if-lez v0, :cond_d

    iget v0, p0, Lcom/mobfox/video/sdk/bj;->f:I

    :goto_c
    return v0

    :cond_d
    iget-object v0, p0, Lcom/mobfox/video/sdk/bj;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    iput v0, p0, Lcom/mobfox/video/sdk/bj;->f:I

    iget v0, p0, Lcom/mobfox/video/sdk/bj;->f:I

    goto :goto_c

    :cond_18
    const/4 v0, -0x1

    iput v0, p0, Lcom/mobfox/video/sdk/bj;->f:I

    iget v0, p0, Lcom/mobfox/video/sdk/bj;->f:I

    goto :goto_c
.end method

.method public final d()I
    .registers 2

    invoke-direct {p0}, Lcom/mobfox/video/sdk/bj;->j()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/mobfox/video/sdk/bj;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public final e()Z
    .registers 2

    invoke-direct {p0}, Lcom/mobfox/video/sdk/bj;->j()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/mobfox/video/sdk/bj;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public final f()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/mobfox/video/sdk/bj;->i:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/mobfox/video/sdk/bj;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/mobfox/video/sdk/bj;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    :cond_12
    iget-object v0, p0, Lcom/mobfox/video/sdk/bj;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobfox/video/sdk/bj;->i:Landroid/media/MediaPlayer;

    iput v1, p0, Lcom/mobfox/video/sdk/bj;->g:I

    iput v1, p0, Lcom/mobfox/video/sdk/bj;->h:I

    :cond_1e
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6

    const/4 v1, 0x1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_37

    const/16 v0, 0x18

    if-eq p1, v0, :cond_37

    const/16 v0, 0x19

    if-eq p1, v0, :cond_37

    const/16 v0, 0x52

    if-eq p1, v0, :cond_37

    const/4 v0, 0x5

    if-eq p1, v0, :cond_37

    const/4 v0, 0x6

    if-eq p1, v0, :cond_37

    move v0, v1

    :goto_17
    invoke-direct {p0}, Lcom/mobfox/video/sdk/bj;->j()Z

    move-result v2

    if-eqz v2, :cond_4c

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/mobfox/video/sdk/bj;->q:Lcom/mobfox/video/sdk/z;

    if-eqz v0, :cond_4c

    const/16 v0, 0x4f

    if-eq p1, v0, :cond_2b

    const/16 v0, 0x55

    if-ne p1, v0, :cond_3d

    :cond_2b
    iget-object v0, p0, Lcom/mobfox/video/sdk/bj;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-virtual {p0}, Lcom/mobfox/video/sdk/bj;->b()V

    :goto_36
    return v1

    :cond_37
    const/4 v0, 0x0

    goto :goto_17

    :cond_39
    invoke-virtual {p0}, Lcom/mobfox/video/sdk/bj;->a()V

    goto :goto_36

    :cond_3d
    const/16 v0, 0x56

    if-ne p1, v0, :cond_51

    iget-object v0, p0, Lcom/mobfox/video/sdk/bj;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-virtual {p0}, Lcom/mobfox/video/sdk/bj;->b()V

    :cond_4c
    :goto_4c
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_36

    :cond_51
    invoke-direct {p0}, Lcom/mobfox/video/sdk/bj;->i()V

    goto :goto_4c
.end method

.method protected final onMeasure(II)V
    .registers 8

    iget v1, p0, Lcom/mobfox/video/sdk/bj;->j:I

    iget v0, p0, Lcom/mobfox/video/sdk/bj;->k:I

    iget v2, p0, Lcom/mobfox/video/sdk/bj;->l:I

    if-lez v2, :cond_1f

    iget v2, p0, Lcom/mobfox/video/sdk/bj;->m:I

    if-lez v2, :cond_1f

    iget v2, p0, Lcom/mobfox/video/sdk/bj;->p:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1f

    iget v2, p0, Lcom/mobfox/video/sdk/bj;->l:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/mobfox/video/sdk/bj;->m:I

    mul-int/2addr v3, v1

    if-le v2, v3, :cond_80

    iget v0, p0, Lcom/mobfox/video/sdk/bj;->m:I

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/mobfox/video/sdk/bj;->l:I

    div-int/2addr v0, v2

    :cond_1f
    :goto_1f
    invoke-virtual {p0, v1, v0}, Lcom/mobfox/video/sdk/bj;->setMeasuredDimension(II)V

    const-string v2, "MOBFOX"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_7f

    const-string v2, "MOBFOX"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "MobFoxVideoView onMeasure video size ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/mobfox/video/sdk/bj;->l:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mobfox/video/sdk/bj;->m:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") surface:("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mobfox/video/sdk/bj;->n:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mobfox/video/sdk/bj;->o:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") Setting size:("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7f
    return-void

    :cond_80
    iget v2, p0, Lcom/mobfox/video/sdk/bj;->l:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/mobfox/video/sdk/bj;->m:I

    mul-int/2addr v3, v1

    if-ge v2, v3, :cond_1f

    iget v1, p0, Lcom/mobfox/video/sdk/bj;->l:I

    mul-int/2addr v1, v0

    iget v2, p0, Lcom/mobfox/video/sdk/bj;->m:I

    div-int/2addr v1, v2

    goto :goto_1f
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-direct {p0}, Lcom/mobfox/video/sdk/bj;->j()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/mobfox/video/sdk/bj;->q:Lcom/mobfox/video/sdk/z;

    if-eqz v0, :cond_13

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_13

    invoke-direct {p0}, Lcom/mobfox/video/sdk/bj;->i()V

    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method public final onTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-direct {p0}, Lcom/mobfox/video/sdk/bj;->j()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/mobfox/video/sdk/bj;->q:Lcom/mobfox/video/sdk/z;

    if-eqz v0, :cond_d

    invoke-direct {p0}, Lcom/mobfox/video/sdk/bj;->i()V

    :cond_d
    const/4 v0, 0x0

    return v0
.end method
