.class public Lcom/estrongs/android/pop/app/StreamingMediaPlayer;
.super Lcom/estrongs/android/pop/esclasses/ESActivity;


# instance fields
.field private a:Landroid/widget/VideoView;

.field private b:I

.field private c:Landroid/widget/MediaController;

.field private d:Z

.field private e:J

.field private f:J

.field private g:J

.field private final h:Landroid/os/Handler;

.field private i:Ljava/io/File;

.field private final j:Ljava/lang/String;

.field private k:Z

.field private l:Ljava/lang/String;

.field private m:Landroid/media/MediaPlayer;

.field private n:Ljava/lang/Thread;

.field private final o:I

.field private final p:I

.field private final q:I

.field private final r:I

.field private final s:I

.field private final t:I

.field private u:Landroid/app/ProgressDialog;

.field private v:Landroid/app/ProgressDialog;

.field private w:Z

.field private x:Z


# direct methods
.method public constructor <init>()V
    .registers 6

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;-><init>()V

    iput v1, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->b:I

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->d:Z

    iput-wide v3, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->f:J

    iput-wide v3, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->g:J

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->h:Landroid/os/Handler;

    const-string v0, "/sdcard/downloadingMedia.dat"

    iput-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->j:Ljava/lang/String;

    iput-object v2, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->m:Landroid/media/MediaPlayer;

    const/4 v0, 0x1

    iput v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->o:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->p:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->q:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->r:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->s:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->t:I

    iput-object v2, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->u:Landroid/app/ProgressDialog;

    iput-object v2, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->v:Landroid/app/ProgressDialog;

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->w:Z

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->x:Z

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)J
    .registers 3

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->g:J

    return-wide v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;J)V
    .registers 3

    iput-wide p1, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->g:J

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;Landroid/media/MediaPlayer;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->m:Landroid/media/MediaPlayer;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->a(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;J)V
    .registers 6

    iput-wide p2, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->e:J

    new-instance v0, Lcom/estrongs/android/pop/app/eb;

    invoke-direct {v0, p0, p1}, Lcom/estrongs/android/pop/app/eb;-><init>(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->n:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->n:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private a(Z)V
    .registers 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->h:Landroid/os/Handler;

    new-instance v1, Lcom/estrongs/android/pop/app/dw;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/pop/app/dw;-><init>(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private b()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->k:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->n:Ljava/lang/Thread;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->n:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->n:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_14
    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->w:Z

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)Z
    .registers 2

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->f()Z

    move-result v0

    return v0
.end method

.method private c()Z
    .registers 2

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->k:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method static synthetic c(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->w:Z

    return v0
.end method

.method private d()V
    .registers 5

    :try_start_0
    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->d:Z

    if-nez v0, :cond_11

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->f:J

    const-wide/32 v2, 0x100000

    cmp-long v0, v0, v2

    if-lez v0, :cond_11

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->e()V

    :cond_10
    :goto_10
    return-void

    :cond_11
    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->d:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->a:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->a:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getDuration()I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->a:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v1

    sub-int/2addr v0, v1

    const/16 v1, 0x3e8

    if-gt v0, v1, :cond_10

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->a(Z)V
    :try_end_32
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_32} :catch_33
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_32} :catch_35

    goto :goto_10

    :catch_33
    move-exception v0

    goto :goto_10

    :catch_35
    move-exception v0

    goto :goto_10
.end method

.method static synthetic d(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)Z
    .registers 2

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->c()Z

    move-result v0

    return v0
.end method

.method static synthetic e(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->h:Landroid/os/Handler;

    return-object v0
.end method

.method private e()V
    .registers 3

    new-instance v0, Lcom/estrongs/android/pop/app/dv;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/dv;-><init>(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->h:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private f()Z
    .registers 5

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->f:J

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->e:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method static synthetic f(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->x:Z

    return v0
.end method

.method static synthetic g(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)Landroid/app/ProgressDialog;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->u:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private g()V
    .registers 5

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->f:J

    long-to-float v0, v0

    iget-wide v1, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->e:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    const-string v1, "fireDataLoadUpdate"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "loadProgress: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x42c8

    mul-float/2addr v0, v3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->u:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->u:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->u:Landroid/app/ProgressDialog;

    iget-wide v1, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->f:J

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    :cond_32
    return-void
.end method

.method static synthetic h(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)J
    .registers 3

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->e:J

    return-wide v0
.end method

.method private h()V
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->a:Landroid/widget/VideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->a:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->g:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->d:Z

    return-void
.end method

.method static synthetic i(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)J
    .registers 3

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->f:J

    return-wide v0
.end method

.method private i()V
    .registers 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->x:Z

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->w:Z

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->a(Z)V

    const-string v0, "StreamingMediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Audio full loaded: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->f:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes read"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic j(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->k:Z

    return v0
.end method

.method static synthetic k(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)V
    .registers 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->b()V

    return-void
.end method

.method static synthetic l(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)Landroid/widget/VideoView;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->a:Landroid/widget/VideoView;

    return-object v0
.end method

.method static synthetic m(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->i:Ljava/io/File;

    return-object v0
.end method

.method static synthetic n(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)V
    .registers 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->h()V

    return-void
.end method

.method static synthetic o(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)Landroid/app/ProgressDialog;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->v:Landroid/app/ProgressDialog;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->k:Z

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->c()Z

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 14

    const/4 v11, 0x0

    const/4 v1, 0x0

    const/high16 v10, 0x4

    invoke-static {p0}, Lcom/estrongs/android/pop/d/n;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/d/n;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/d/n;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    if-nez v3, :cond_19

    iget-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->h:Landroid/os/Handler;

    new-instance v1, Lcom/estrongs/android/pop/app/ee;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/ee;-><init>(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_18
    :goto_18
    return-void

    :cond_19
    new-instance v0, Ljava/io/File;

    const-string v2, "/sdcard/downloadingMedia.dat"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->i:Ljava/io/File;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->i:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->i:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_2f
    :try_start_2f
    iget-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->i:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_34} :catch_60

    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->i:Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    new-array v5, v10, [B

    move v0, v1

    :cond_3e
    invoke-virtual {v3, v5, v1, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-gez v2, :cond_97

    :cond_44
    :goto_44
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->v(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_53

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->u(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9a

    :cond_53
    invoke-static {v11, p1}, Lcom/estrongs/android/pop/fs/FtpFileSystem;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_56
    :goto_56
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->c()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->i()V

    goto :goto_18

    :catch_60
    move-exception v0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->h:Landroid/os/Handler;

    new-instance v1, Lcom/estrongs/android/pop/app/ef;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/ef;-><init>(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_18

    :cond_6c
    sub-int v6, v10, v2

    invoke-virtual {v3, v5, v2, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    if-gez v6, :cond_96

    :goto_74
    invoke-virtual {v4, v5, v1, v2}, Ljava/io/FileOutputStream;->write([BII)V

    add-int/2addr v0, v2

    int-to-long v6, v0

    iput-wide v6, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->f:J

    iget-wide v6, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->g:J

    int-to-long v8, v2

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->g:J

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->d()V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->g()V

    iget-wide v6, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->f:J

    iget-wide v8, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->e:J

    cmp-long v2, v6, v8

    if-gez v2, :cond_44

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->c()Z

    move-result v2

    if-nez v2, :cond_3e

    goto :goto_44

    :cond_96
    add-int/2addr v2, v6

    :cond_97
    if-lt v2, v10, :cond_6c

    goto :goto_74

    :cond_9a
    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->D(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-static {v11, p1}, Lcom/estrongs/android/pop/fs/a;->b(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_56
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8

    const/4 v5, 0x1

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->setDefaultKeyMode(I)V

    invoke-virtual {p0, v5}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d0

    const/16 v2, 0x400

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    const v0, 0x7f03003d

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->setContentView(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->l:Ljava/lang/String;

    new-instance v0, Landroid/widget/MediaController;

    invoke-direct {v0, p0}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->c:Landroid/widget/MediaController;

    const v0, 0x7f0701be

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->a:Landroid/widget/VideoView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->a:Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->c:Landroid/widget/MediaController;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->c:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->requestFocus()Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->a:Landroid/widget/VideoView;

    new-instance v1, Lcom/estrongs/android/pop/app/ds;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/ds;-><init>(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->a:Landroid/widget/VideoView;

    new-instance v1, Lcom/estrongs/android/pop/app/dx;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/dx;-><init>(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->a:Landroid/widget/VideoView;

    new-instance v1, Lcom/estrongs/android/pop/app/dz;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/dz;-><init>(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/a/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/a/f;->H(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_77

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->showDialog(I)V

    :goto_76
    return-void

    :cond_77
    invoke-static {p0}, Lcom/estrongs/android/pop/d/n;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/d/n;

    move-result-object v0

    const-wide/16 v1, 0x0

    iget-object v3, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->l:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/estrongs/android/pop/d/n;->c(JLjava/lang/String;Z)Lcom/estrongs/android/pop/d/e;

    move-result-object v0

    if-nez v0, :cond_8a

    invoke-virtual {p0, v5}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->showDialog(I)V

    goto :goto_76

    :cond_8a
    iget-object v1, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->l:Ljava/lang/String;

    iget-wide v2, v0, Lcom/estrongs/android/pop/d/e;->e:J

    invoke-direct {p0, v1, v2, v3}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->a(Ljava/lang/String;J)V

    goto :goto_76
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 8

    const/4 v5, 0x1

    const v4, 0x7f0900a5

    const v3, 0x7f09005e

    const v1, 0x1080027

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_10a

    const/4 v0, 0x0

    :goto_f
    return-object v0

    :pswitch_10
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0900a6

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/eg;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/eg;-><init>(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_f

    :pswitch_36
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0900a7

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/eh;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/eh;-><init>(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_f

    :pswitch_5c
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0900a8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/ei;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/ei;-><init>(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_f

    :pswitch_82
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0900a9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/dt;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/dt;-><init>(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_f

    :pswitch_a9
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->u:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->u:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIcon(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->u:Landroid/app/ProgressDialog;

    const v1, 0x7f0900af

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->u:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v5}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->u:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->u:Landroid/app/ProgressDialog;

    const v1, 0x7f0900b0

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->u:Landroid/app/ProgressDialog;

    const v1, 0x7f090060

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/pop/app/du;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/du;-><init>(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ProgressDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->u:Landroid/app/ProgressDialog;

    goto/16 :goto_f

    :pswitch_e8
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->v:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->v:Landroid/app/ProgressDialog;

    const v1, 0x7f0900b1

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->v:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v5}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->v:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->v:Landroid/app/ProgressDialog;

    goto/16 :goto_f

    nop

    :pswitch_data_10a
    .packed-switch 0x1
        :pswitch_10
        :pswitch_36
        :pswitch_5c
        :pswitch_82
        :pswitch_a9
        :pswitch_e8
    .end packed-switch
.end method

.method public onDestroy()V
    .registers 2

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->b()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->i:Ljava/io/File;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->i:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->i:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_14
    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 v0, 0x4

    if-ne p1, v0, :cond_c

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->a()V

    :cond_c
    invoke-super {p0, p1, p2}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .registers 2

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onPause()V

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->d:Z

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->a:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->a:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    :cond_14
    iget-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->a:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->b:I

    :cond_1c
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "playback_position"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->b:I

    return-void
.end method

.method public onResume()V
    .registers 3

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onResume()V

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->d:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->a:Landroid/widget/VideoView;

    iget v1, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->a:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    :cond_13
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "playback_position"

    iget v1, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->b:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onStop()V
    .registers 1

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onStop()V

    return-void
.end method
