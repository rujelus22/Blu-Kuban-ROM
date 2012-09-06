.class public Lcom/dropbox/android/widget/DbxVideoView;
.super Landroid/view/SurfaceView;
.source "panda.py"

# interfaces
.implements Lcom/dropbox/android/widget/q;


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field private A:Landroid/media/MediaPlayer$OnCompletionListener;

.field private B:Landroid/media/MediaPlayer$OnErrorListener;

.field private C:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field a:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field b:Landroid/media/MediaPlayer$OnPreparedListener;

.field c:Landroid/view/SurfaceHolder$Callback;

.field private e:Landroid/net/Uri;

.field private f:Ljava/util/Map;

.field private g:I

.field private h:I

.field private i:I

.field private j:Landroid/view/SurfaceHolder;

.field private k:Landroid/media/MediaPlayer;

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:Lcom/dropbox/android/widget/DbxMediaController;

.field private q:Landroid/media/MediaPlayer$OnCompletionListener;

.field private r:Landroid/media/MediaPlayer$OnPreparedListener;

.field private s:I

.field private t:Landroid/media/MediaPlayer$OnErrorListener;

.field private u:I

.field private v:Z

.field private w:Z

.field private x:Z

.field private volatile y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 49
    const-class v0, Lcom/dropbox/android/widget/DbxVideoView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/android/widget/DbxVideoView;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 90
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/dropbox/android/widget/DbxVideoView;->g:I

    .line 69
    iput v1, p0, Lcom/dropbox/android/widget/DbxVideoView;->h:I

    .line 70
    iput v1, p0, Lcom/dropbox/android/widget/DbxVideoView;->i:I

    .line 73
    iput-object v2, p0, Lcom/dropbox/android/widget/DbxVideoView;->j:Landroid/view/SurfaceHolder;

    .line 74
    iput-object v2, p0, Lcom/dropbox/android/widget/DbxVideoView;->k:Landroid/media/MediaPlayer;

    .line 175
    iput-boolean v1, p0, Lcom/dropbox/android/widget/DbxVideoView;->y:Z

    .line 176
    iput-boolean v1, p0, Lcom/dropbox/android/widget/DbxVideoView;->z:Z

    .line 278
    new-instance v0, Lcom/dropbox/android/widget/s;

    invoke-direct {v0, p0}, Lcom/dropbox/android/widget/s;-><init>(Lcom/dropbox/android/widget/DbxVideoView;)V

    iput-object v0, p0, Lcom/dropbox/android/widget/DbxVideoView;->a:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 290
    new-instance v0, Lcom/dropbox/android/widget/t;

    invoke-direct {v0, p0}, Lcom/dropbox/android/widget/t;-><init>(Lcom/dropbox/android/widget/DbxVideoView;)V

    iput-object v0, p0, Lcom/dropbox/android/widget/DbxVideoView;->b:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 342
    new-instance v0, Lcom/dropbox/android/widget/u;

    invoke-direct {v0, p0}, Lcom/dropbox/android/widget/u;-><init>(Lcom/dropbox/android/widget/DbxVideoView;)V

    iput-object v0, p0, Lcom/dropbox/android/widget/DbxVideoView;->A:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 357
    new-instance v0, Lcom/dropbox/android/widget/v;

    invoke-direct {v0, p0}, Lcom/dropbox/android/widget/v;-><init>(Lcom/dropbox/android/widget/DbxVideoView;)V

    iput-object v0, p0, Lcom/dropbox/android/widget/DbxVideoView;->B:Landroid/media/MediaPlayer$OnErrorListener;

    .line 411
    new-instance v0, Lcom/dropbox/android/widget/x;

    invoke-direct {v0, p0}, Lcom/dropbox/android/widget/x;-><init>(Lcom/dropbox/android/widget/DbxVideoView;)V

    iput-object v0, p0, Lcom/dropbox/android/widget/DbxVideoView;->C:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 454
    new-instance v0, Lcom/dropbox/android/widget/y;

    invoke-direct {v0, p0}, Lcom/dropbox/android/widget/y;-><init>(Lcom/dropbox/android/widget/DbxVideoView;)V

    iput-object v0, p0, Lcom/dropbox/android/widget/DbxVideoView;->c:Landroid/view/SurfaceHolder$Callback;

    .line 91
    invoke-direct {p0}, Lcom/dropbox/android/widget/DbxVideoView;->l()V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/dropbox/android/widget/DbxVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 96
    invoke-direct {p0}, Lcom/dropbox/android/widget/DbxVideoView;->l()V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 100
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/dropbox/android/widget/DbxVideoView;->g:I

    .line 69
    iput v1, p0, Lcom/dropbox/android/widget/DbxVideoView;->h:I

    .line 70
    iput v1, p0, Lcom/dropbox/android/widget/DbxVideoView;->i:I

    .line 73
    iput-object v2, p0, Lcom/dropbox/android/widget/DbxVideoView;->j:Landroid/view/SurfaceHolder;

    .line 74
    iput-object v2, p0, Lcom/dropbox/android/widget/DbxVideoView;->k:Landroid/media/MediaPlayer;

    .line 175
    iput-boolean v1, p0, Lcom/dropbox/android/widget/DbxVideoView;->y:Z

    .line 176
    iput-boolean v1, p0, Lcom/dropbox/android/widget/DbxVideoView;->z:Z

    .line 278
    new-instance v0, Lcom/dropbox/android/widget/s;

    invoke-direct {v0, p0}, Lcom/dropbox/android/widget/s;-><init>(Lcom/dropbox/android/widget/DbxVideoView;)V

    iput-object v0, p0, Lcom/dropbox/android/widget/DbxVideoView;->a:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 290
    new-instance v0, Lcom/dropbox/android/widget/t;

    invoke-direct {v0, p0}, Lcom/dropbox/android/widget/t;-><init>(Lcom/dropbox/android/widget/DbxVideoView;)V

    iput-object v0, p0, Lcom/dropbox/android/widget/DbxVideoView;->b:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 342
    new-instance v0, Lcom/dropbox/android/widget/u;

    invoke-direct {v0, p0}, Lcom/dropbox/android/widget/u;-><init>(Lcom/dropbox/android/widget/DbxVideoView;)V

    iput-object v0, p0, Lcom/dropbox/android/widget/DbxVideoView;->A:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 357
    new-instance v0, Lcom/dropbox/android/widget/v;

    invoke-direct {v0, p0}, Lcom/dropbox/android/widget/v;-><init>(Lcom/dropbox/android/widget/DbxVideoView;)V

    iput-object v0, p0, Lcom/dropbox/android/widget/DbxVideoView;->B:Landroid/media/MediaPlayer$OnErrorListener;

    .line 411
    new-instance v0, Lcom/dropbox/android/widget/x;

    invoke-direct {v0, p0}, Lcom/dropbox/android/widget/x;-><init>(Lcom/dropbox/android/widget/DbxVideoView;)V

    iput-object v0, p0, Lcom/dropbox/android/widget/DbxVideoView;->C:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 454
    new-instance v0, Lcom/dropbox/android/widget/y;

    invoke-direct {v0, p0}, Lcom/dropbox/android/widget/y;-><init>(Lcom/dropbox/android/widget/DbxVideoView;)V

    iput-object v0, p0, Lcom/dropbox/android/widget/DbxVideoView;->c:Landroid/view/SurfaceHolder$Callback;

    .line 101
    invoke-direct {p0}, Lcom/dropbox/android/widget/DbxVideoView;->l()V

    .line 102
    return-void
.end method

.method static synthetic a(Lcom/dropbox/android/widget/DbxVideoView;)I
    .registers 2
    .parameter

    .prologue
    .line 48
    iget v0, p0, Lcom/dropbox/android/widget/DbxVideoView;->l:I

    return v0
.end method

.method static synthetic a(Lcom/dropbox/android/widget/DbxVideoView;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 48
    iput p1, p0, Lcom/dropbox/android/widget/DbxVideoView;->l:I

    return p1
.end method

.method static synthetic a(Lcom/dropbox/android/widget/DbxVideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/dropbox/android/widget/DbxVideoView;->j:Landroid/view/SurfaceHolder;

    return-object p1
.end method

.method private a(Z)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 493
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxVideoView;->k:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_18

    .line 494
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxVideoView;->k:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 495
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxVideoView;->k:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 496
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/android/widget/DbxVideoView;->k:Landroid/media/MediaPlayer;

    .line 497
    iput v1, p0, Lcom/dropbox/android/widget/DbxVideoView;->h:I

    .line 498
    if-eqz p1, :cond_18

    .line 499
    iput v1, p0, Lcom/dropbox/android/widget/DbxVideoView;->i:I

    .line 502
    :cond_18
    return-void
.end method

.method static synthetic a(Lcom/dropbox/android/widget/DbxVideoView;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/dropbox/android/widget/DbxVideoView;->v:Z

    return p1
.end method

.method static synthetic b(Lcom/dropbox/android/widget/DbxVideoView;)I
    .registers 2
    .parameter

    .prologue
    .line 48
    iget v0, p0, Lcom/dropbox/android/widget/DbxVideoView;->m:I

    return v0
.end method

.method static synthetic b(Lcom/dropbox/android/widget/DbxVideoView;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 48
    iput p1, p0, Lcom/dropbox/android/widget/DbxVideoView;->m:I

    return p1
.end method

.method static synthetic b(Lcom/dropbox/android/widget/DbxVideoView;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/dropbox/android/widget/DbxVideoView;->w:Z

    return p1
.end method

.method static synthetic c(Lcom/dropbox/android/widget/DbxVideoView;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 48
    iput p1, p0, Lcom/dropbox/android/widget/DbxVideoView;->h:I

    return p1
.end method

.method static synthetic c(Lcom/dropbox/android/widget/DbxVideoView;)Z
    .registers 2
    .parameter

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/dropbox/android/widget/DbxVideoView;->z:Z

    return v0
.end method

.method static synthetic c(Lcom/dropbox/android/widget/DbxVideoView;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/dropbox/android/widget/DbxVideoView;->x:Z

    return p1
.end method

.method static synthetic d(Lcom/dropbox/android/widget/DbxVideoView;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 48
    iput p1, p0, Lcom/dropbox/android/widget/DbxVideoView;->i:I

    return p1
.end method

.method static synthetic d(Lcom/dropbox/android/widget/DbxVideoView;)Landroid/media/MediaPlayer$OnPreparedListener;
    .registers 2
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxVideoView;->r:Landroid/media/MediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method static synthetic d(Lcom/dropbox/android/widget/DbxVideoView;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/dropbox/android/widget/DbxVideoView;->y:Z

    return p1
.end method

.method static synthetic e(Lcom/dropbox/android/widget/DbxVideoView;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 48
    iput p1, p0, Lcom/dropbox/android/widget/DbxVideoView;->s:I

    return p1
.end method

.method static synthetic e(Lcom/dropbox/android/widget/DbxVideoView;)Landroid/media/MediaPlayer;
    .registers 2
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxVideoView;->k:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic e(Lcom/dropbox/android/widget/DbxVideoView;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/dropbox/android/widget/DbxVideoView;->a(Z)V

    return-void
.end method

.method static synthetic f(Lcom/dropbox/android/widget/DbxVideoView;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 48
    iput p1, p0, Lcom/dropbox/android/widget/DbxVideoView;->n:I

    return p1
.end method

.method static synthetic f(Lcom/dropbox/android/widget/DbxVideoView;)Lcom/dropbox/android/widget/DbxMediaController;
    .registers 2
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxVideoView;->p:Lcom/dropbox/android/widget/DbxMediaController;

    return-object v0
.end method

.method static synthetic g(Lcom/dropbox/android/widget/DbxVideoView;)I
    .registers 2
    .parameter

    .prologue
    .line 48
    iget v0, p0, Lcom/dropbox/android/widget/DbxVideoView;->u:I

    return v0
.end method

.method static synthetic g(Lcom/dropbox/android/widget/DbxVideoView;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 48
    iput p1, p0, Lcom/dropbox/android/widget/DbxVideoView;->o:I

    return p1
.end method

.method static synthetic h(Lcom/dropbox/android/widget/DbxVideoView;)I
    .registers 2
    .parameter

    .prologue
    .line 48
    iget v0, p0, Lcom/dropbox/android/widget/DbxVideoView;->n:I

    return v0
.end method

.method static synthetic i(Lcom/dropbox/android/widget/DbxVideoView;)I
    .registers 2
    .parameter

    .prologue
    .line 48
    iget v0, p0, Lcom/dropbox/android/widget/DbxVideoView;->o:I

    return v0
.end method

.method static synthetic j(Lcom/dropbox/android/widget/DbxVideoView;)I
    .registers 2
    .parameter

    .prologue
    .line 48
    iget v0, p0, Lcom/dropbox/android/widget/DbxVideoView;->i:I

    return v0
.end method

.method static synthetic k(Lcom/dropbox/android/widget/DbxVideoView;)Landroid/media/MediaPlayer$OnCompletionListener;
    .registers 2
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxVideoView;->q:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic k()Ljava/lang/String;
    .registers 1

    .prologue
    .line 48
    sget-object v0, Lcom/dropbox/android/widget/DbxVideoView;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l(Lcom/dropbox/android/widget/DbxVideoView;)Landroid/media/MediaPlayer$OnErrorListener;
    .registers 2
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxVideoView;->t:Landroid/media/MediaPlayer$OnErrorListener;

    return-object v0
.end method

.method private l()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 156
    iput v2, p0, Lcom/dropbox/android/widget/DbxVideoView;->l:I

    .line 157
    iput v2, p0, Lcom/dropbox/android/widget/DbxVideoView;->m:I

    .line 158
    invoke-virtual {p0}, Lcom/dropbox/android/widget/DbxVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/android/widget/DbxVideoView;->c:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 159
    invoke-virtual {p0}, Lcom/dropbox/android/widget/DbxVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 160
    invoke-virtual {p0, v3}, Lcom/dropbox/android/widget/DbxVideoView;->setFocusable(Z)V

    .line 161
    invoke-virtual {p0, v3}, Lcom/dropbox/android/widget/DbxVideoView;->setFocusableInTouchMode(Z)V

    .line 162
    invoke-virtual {p0}, Lcom/dropbox/android/widget/DbxVideoView;->requestFocus()Z

    .line 163
    iput v2, p0, Lcom/dropbox/android/widget/DbxVideoView;->h:I

    .line 164
    iput v2, p0, Lcom/dropbox/android/widget/DbxVideoView;->i:I

    .line 165
    return-void
.end method

.method private m()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 213
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxVideoView;->e:Landroid/net/Uri;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/dropbox/android/widget/DbxVideoView;->j:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_c

    .line 258
    :cond_b
    :goto_b
    return-void

    .line 219
    :cond_c
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 220
    const-string v1, "command"

    const-string v2, "pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    invoke-virtual {p0}, Lcom/dropbox/android/widget/DbxVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 225
    invoke-direct {p0, v5}, Lcom/dropbox/android/widget/DbxVideoView;->a(Z)V

    .line 227
    :try_start_24
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/dropbox/android/widget/DbxVideoView;->k:Landroid/media/MediaPlayer;

    .line 228
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxVideoView;->k:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/dropbox/android/widget/DbxVideoView;->b:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 229
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxVideoView;->k:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/dropbox/android/widget/DbxVideoView;->a:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 232
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxVideoView;->k:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/dropbox/android/widget/DbxVideoView;->A:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 233
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxVideoView;->k:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/dropbox/android/widget/DbxVideoView;->B:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 234
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxVideoView;->k:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/dropbox/android/widget/DbxVideoView;->C:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 235
    const/4 v0, 0x0

    iput v0, p0, Lcom/dropbox/android/widget/DbxVideoView;->s:I

    .line 236
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxVideoView;->k:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lcom/dropbox/android/widget/DbxVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/android/widget/DbxVideoView;->e:Landroid/net/Uri;

    iget-object v3, p0, Lcom/dropbox/android/widget/DbxVideoView;->f:Ljava/util/Map;

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 237
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxVideoView;->k:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/dropbox/android/widget/DbxVideoView;->j:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 238
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxVideoView;->k:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 239
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxVideoView;->k:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 240
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxVideoView;->k:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 243
    const/4 v0, 0x1

    iput v0, p0, Lcom/dropbox/android/widget/DbxVideoView;->h:I

    .line 244
    invoke-direct {p0}, Lcom/dropbox/android/widget/DbxVideoView;->n()V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_7c} :catch_7d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_24 .. :try_end_7c} :catch_a5

    goto :goto_b

    .line 245
    :catch_7d
    move-exception v0

    .line 246
    sget-object v1, Lcom/dropbox/android/widget/DbxVideoView;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to open content: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/dropbox/android/widget/DbxVideoView;->e:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 247
    iput v4, p0, Lcom/dropbox/android/widget/DbxVideoView;->h:I

    .line 248
    iput v4, p0, Lcom/dropbox/android/widget/DbxVideoView;->i:I

    .line 249
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxVideoView;->B:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v1, p0, Lcom/dropbox/android/widget/DbxVideoView;->k:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1, v6, v5}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_b

    .line 251
    :catch_a5
    move-exception v0

    .line 252
    sget-object v1, Lcom/dropbox/android/widget/DbxVideoView;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to open content: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/dropbox/android/widget/DbxVideoView;->e:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 253
    iput v4, p0, Lcom/dropbox/android/widget/DbxVideoView;->h:I

    .line 254
    iput v4, p0, Lcom/dropbox/android/widget/DbxVideoView;->i:I

    .line 255
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxVideoView;->B:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v1, p0, Lcom/dropbox/android/widget/DbxVideoView;->k:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1, v6, v5}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_b
.end method

.method static synthetic m(Lcom/dropbox/android/widget/DbxVideoView;)V
    .registers 1
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/dropbox/android/widget/DbxVideoView;->m()V

    return-void
.end method

.method private n()V
    .registers 3

    .prologue
    .line 269
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxVideoView;->k:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/dropbox/android/widget/DbxVideoView;->p:Lcom/dropbox/android/widget/DbxMediaController;

    if-eqz v0, :cond_29

    .line 270
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxVideoView;->p:Lcom/dropbox/android/widget/DbxMediaController;

    invoke-virtual {v0, p0}, Lcom/dropbox/android/widget/DbxMediaController;->setMediaPlayer(Lcom/dropbox/android/widget/q;)V

    .line 271
    invoke-virtual {p0}, Lcom/dropbox/android/widget/DbxVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_2a

    invoke-virtual {p0}, Lcom/dropbox/android/widget/DbxVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 273
    :goto_1b
    iget-object v1, p0, Lcom/dropbox/android/widget/DbxVideoView;->p:Lcom/dropbox/android/widget/DbxMediaController;

    invoke-virtual {v1, v0}, Lcom/dropbox/android/widget/DbxMediaController;->setAnchorView(Landroid/view/View;)V

    .line 274
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxVideoView;->p:Lcom/dropbox/android/widget/DbxMediaController;

    invoke-virtual {p0}, Lcom/dropbox/android/widget/DbxVideoView;->j()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dropbox/android/widget/DbxMediaController;->setEnabled(Z)V

    .line 276
    :cond_29
    return-void

    :cond_2a
    move-object v0, p0

    .line 271
    goto :goto_1b
.end method

.method private o()V
    .registers 2

    .prologue
    .line 563
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxVideoView;->p:Lcom/dropbox/android/widget/DbxMediaController;

    invoke-virtual {v0}, Lcom/dropbox/android/widget/DbxMediaController;->c()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 564
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxVideoView;->p:Lcom/dropbox/android/widget/DbxMediaController;

    invoke-virtual {v0}, Lcom/dropbox/android/widget/DbxMediaController;->d()V

    .line 568
    :goto_d
    return-void

    .line 566
    :cond_e
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxVideoView;->p:Lcom/dropbox/android/widget/DbxMediaController;

    invoke-virtual {v0}, Lcom/dropbox/android/widget/DbxMediaController;->b()V

    goto :goto_d
.end method


# virtual methods
.method public final a()V
    .registers 3

    .prologue
    const/4 v1, 0x3

    .line 572
    invoke-virtual {p0}, Lcom/dropbox/android/widget/DbxVideoView;->j()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 573
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxVideoView;->k:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 574
    iput v1, p0, Lcom/dropbox/android/widget/DbxVideoView;->h:I

    .line 576
    :cond_e
    iput v1, p0, Lcom/dropbox/android/widget/DbxVideoView;->i:I

    .line 577
    return-void
.end method

.method public final a(I)V
    .registers 3
    .parameter

    .prologue
    .line 632
    invoke-virtual {p0}, Lcom/dropbox/android/widget/DbxVideoView;->j()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 633
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxVideoView;->k:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 634
    const/4 v0, 0x0

    iput v0, p0, Lcom/dropbox/android/widget/DbxVideoView;->u:I

    .line 638
    :goto_e
    return-void

    .line 636
    :cond_f
    iput p1, p0, Lcom/dropbox/android/widget/DbxVideoView;->u:I

    goto :goto_e
.end method

.method public final b()V
    .registers 3

    .prologue
    const/4 v1, 0x4

    .line 581
    invoke-virtual {p0}, Lcom/dropbox/android/widget/DbxVideoView;->j()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 582
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxVideoView;->k:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 583
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxVideoView;->k:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 584
    iput v1, p0, Lcom/dropbox/android/widget/DbxVideoView;->h:I

    .line 587
    :cond_16
    iput v1, p0, Lcom/dropbox/android/widget/DbxVideoView;->i:I

    .line 588
    return-void
.end method

.method public final c()I
    .registers 4

    .prologue
    .line 608
    iget v0, p0, Lcom/dropbox/android/widget/DbxVideoView;->g:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_37

    .line 609
    invoke-virtual {p0}, Lcom/dropbox/android/widget/DbxVideoView;->j()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 610
    iget v0, p0, Lcom/dropbox/android/widget/DbxVideoView;->g:I

    if-lez v0, :cond_12

    .line 611
    iget v0, p0, Lcom/dropbox/android/widget/DbxVideoView;->g:I

    .line 619
    :goto_11
    return v0

    .line 613
    :cond_12
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxVideoView;->k:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    iput v0, p0, Lcom/dropbox/android/widget/DbxVideoView;->g:I

    .line 614
    sget-object v0, Lcom/dropbox/android/widget/DbxVideoView;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "got duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/dropbox/android/widget/DbxVideoView;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    iget v0, p0, Lcom/dropbox/android/widget/DbxVideoView;->g:I

    goto :goto_11

    .line 619
    :cond_37
    iget v0, p0, Lcom/dropbox/android/widget/DbxVideoView;->g:I

    goto :goto_11
.end method

.method public final d()I
    .registers 2

    .prologue
    .line 624
    invoke-virtual {p0}, Lcom/dropbox/android/widget/DbxVideoView;->j()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 625
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxVideoView;->k:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 627
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public final e()Z
    .registers 2

    .prologue
    .line 642
    invoke-virtual {p0}, Lcom/dropbox/android/widget/DbxVideoView;->j()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/dropbox/android/widget/DbxVideoView;->k:Landroid/media/MediaPlayer;

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

.method public final f()I
    .registers 2

    .prologue
    .line 647
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxVideoView;->k:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_7

    .line 648
    iget v0, p0, Lcom/dropbox/android/widget/DbxVideoView;->s:I

    .line 650
    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public final g()Z
    .registers 2

    .prologue
    .line 663
    iget-boolean v0, p0, Lcom/dropbox/android/widget/DbxVideoView;->v:Z

    return v0
.end method

.method public final h()Z
    .registers 2

    .prologue
    .line 668
    iget-boolean v0, p0, Lcom/dropbox/android/widget/DbxVideoView;->w:Z

    return v0
.end method

.method public final i()Z
    .registers 2

    .prologue
    .line 673
    iget-boolean v0, p0, Lcom/dropbox/android/widget/DbxVideoView;->x:Z

    return v0
.end method

.method public final j()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 655
    iget-object v1, p0, Lcom/dropbox/android/widget/DbxVideoView;->k:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_13

    iget v1, p0, Lcom/dropbox/android/widget/DbxVideoView;->h:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_13

    iget v1, p0, Lcom/dropbox/android/widget/DbxVideoView;->h:I

    if-eqz v1, :cond_13

    iget v1, p0, Lcom/dropbox/android/widget/DbxVideoView;->h:I

    if-eq v1, v0, :cond_13

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 523
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

    .line 530
    :goto_1b
    invoke-virtual {p0}, Lcom/dropbox/android/widget/DbxVideoView;->j()Z

    move-result v2

    if-eqz v2, :cond_7c

    if-eqz v0, :cond_7c

    iget-object v0, p0, Lcom/dropbox/android/widget/DbxVideoView;->p:Lcom/dropbox/android/widget/DbxMediaController;

    if-eqz v0, :cond_7c

    .line 531
    const/16 v0, 0x4f

    if-eq p1, v0, :cond_2f

    const/16 v0, 0x55

    if-ne p1, v0, :cond_4b

    .line 533
    :cond_2f
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxVideoView;->k:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 534
    invoke-virtual {p0}, Lcom/dropbox/android/widget/DbxVideoView;->b()V

    .line 535
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxVideoView;->p:Lcom/dropbox/android/widget/DbxMediaController;

    invoke-virtual {v0}, Lcom/dropbox/android/widget/DbxMediaController;->b()V

    .line 559
    :cond_3f
    :goto_3f
    return v1

    .line 523
    :cond_40
    const/4 v0, 0x0

    goto :goto_1b

    .line 537
    :cond_42
    invoke-virtual {p0}, Lcom/dropbox/android/widget/DbxVideoView;->a()V

    .line 538
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxVideoView;->p:Lcom/dropbox/android/widget/DbxMediaController;

    invoke-virtual {v0}, Lcom/dropbox/android/widget/DbxMediaController;->d()V

    goto :goto_3f

    .line 541
    :cond_4b
    const/16 v0, 0x7e

    if-ne p1, v0, :cond_60

    .line 542
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxVideoView;->k:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 543
    invoke-virtual {p0}, Lcom/dropbox/android/widget/DbxVideoView;->a()V

    .line 544
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxVideoView;->p:Lcom/dropbox/android/widget/DbxMediaController;

    invoke-virtual {v0}, Lcom/dropbox/android/widget/DbxMediaController;->d()V

    goto :goto_3f

    .line 547
    :cond_60
    const/16 v0, 0x56

    if-eq p1, v0, :cond_68

    const/16 v0, 0x7f

    if-ne p1, v0, :cond_79

    .line 549
    :cond_68
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxVideoView;->k:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 550
    invoke-virtual {p0}, Lcom/dropbox/android/widget/DbxVideoView;->b()V

    .line 551
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxVideoView;->p:Lcom/dropbox/android/widget/DbxMediaController;

    invoke-virtual {v0}, Lcom/dropbox/android/widget/DbxMediaController;->b()V

    goto :goto_3f

    .line 555
    :cond_79
    invoke-direct {p0}, Lcom/dropbox/android/widget/DbxVideoView;->o()V

    .line 559
    :cond_7c
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_3f
.end method

.method protected onMeasure(II)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 107
    iget v0, p0, Lcom/dropbox/android/widget/DbxVideoView;->l:I

    invoke-static {v0, p1}, Lcom/dropbox/android/widget/DbxVideoView;->getDefaultSize(II)I

    move-result v1

    .line 108
    iget v0, p0, Lcom/dropbox/android/widget/DbxVideoView;->m:I

    invoke-static {v0, p2}, Lcom/dropbox/android/widget/DbxVideoView;->getDefaultSize(II)I

    move-result v0

    .line 109
    iget v2, p0, Lcom/dropbox/android/widget/DbxVideoView;->l:I

    if-lez v2, :cond_22

    iget v2, p0, Lcom/dropbox/android/widget/DbxVideoView;->m:I

    if-lez v2, :cond_22

    .line 110
    iget v2, p0, Lcom/dropbox/android/widget/DbxVideoView;->l:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/dropbox/android/widget/DbxVideoView;->m:I

    mul-int/2addr v3, v1

    if-le v2, v3, :cond_26

    .line 112
    iget v0, p0, Lcom/dropbox/android/widget/DbxVideoView;->m:I

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/dropbox/android/widget/DbxVideoView;->l:I

    div-int/2addr v0, v2

    .line 123
    :cond_22
    :goto_22
    invoke-virtual {p0, v1, v0}, Lcom/dropbox/android/widget/DbxVideoView;->setMeasuredDimension(II)V

    .line 124
    return-void

    .line 113
    :cond_26
    iget v2, p0, Lcom/dropbox/android/widget/DbxVideoView;->l:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/dropbox/android/widget/DbxVideoView;->m:I

    mul-int/2addr v3, v1

    if-ge v2, v3, :cond_22

    .line 115
    iget v1, p0, Lcom/dropbox/android/widget/DbxVideoView;->l:I

    mul-int/2addr v1, v0

    iget v2, p0, Lcom/dropbox/android/widget/DbxVideoView;->m:I

    div-int/2addr v1, v2

    goto :goto_22
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter

    .prologue
    .line 506
    invoke-virtual {p0}, Lcom/dropbox/android/widget/DbxVideoView;->j()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/dropbox/android/widget/DbxVideoView;->p:Lcom/dropbox/android/widget/DbxMediaController;

    if-eqz v0, :cond_d

    .line 507
    invoke-direct {p0}, Lcom/dropbox/android/widget/DbxVideoView;->o()V

    .line 509
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter

    .prologue
    .line 514
    invoke-virtual {p0}, Lcom/dropbox/android/widget/DbxVideoView;->j()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/dropbox/android/widget/DbxVideoView;->p:Lcom/dropbox/android/widget/DbxMediaController;

    if-eqz v0, :cond_d

    .line 515
    invoke-direct {p0}, Lcom/dropbox/android/widget/DbxVideoView;->o()V

    .line 517
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public setAllowSeek(Z)V
    .registers 4
    .parameter

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/dropbox/android/widget/DbxVideoView;->y:Z

    if-eqz v0, :cond_c

    .line 185
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setAllowSeek() called too late; video already prepared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_c
    iput-boolean p1, p0, Lcom/dropbox/android/widget/DbxVideoView;->z:Z

    .line 188
    return-void
.end method

.method public setDuration(I)V
    .registers 2
    .parameter

    .prologue
    .line 602
    iput p1, p0, Lcom/dropbox/android/widget/DbxVideoView;->g:I

    .line 603
    return-void
.end method

.method public setMediaController(Lcom/dropbox/android/widget/DbxMediaController;)V
    .registers 3
    .parameter

    .prologue
    .line 261
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxVideoView;->p:Lcom/dropbox/android/widget/DbxMediaController;

    if-eqz v0, :cond_9

    .line 262
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxVideoView;->p:Lcom/dropbox/android/widget/DbxMediaController;

    invoke-virtual {v0}, Lcom/dropbox/android/widget/DbxMediaController;->d()V

    .line 264
    :cond_9
    iput-object p1, p0, Lcom/dropbox/android/widget/DbxVideoView;->p:Lcom/dropbox/android/widget/DbxMediaController;

    .line 265
    invoke-direct {p0}, Lcom/dropbox/android/widget/DbxVideoView;->n()V

    .line 266
    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .registers 2
    .parameter

    .prologue
    .line 438
    iput-object p1, p0, Lcom/dropbox/android/widget/DbxVideoView;->q:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 439
    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .registers 2
    .parameter

    .prologue
    .line 451
    iput-object p1, p0, Lcom/dropbox/android/widget/DbxVideoView;->t:Landroid/media/MediaPlayer$OnErrorListener;

    .line 452
    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .registers 2
    .parameter

    .prologue
    .line 427
    iput-object p1, p0, Lcom/dropbox/android/widget/DbxVideoView;->r:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 428
    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 168
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dropbox/android/widget/DbxVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 169
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .registers 3
    .parameter

    .prologue
    .line 172
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/dropbox/android/widget/DbxVideoView;->setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V

    .line 173
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, Lcom/dropbox/android/widget/DbxVideoView;->e:Landroid/net/Uri;

    .line 195
    iput-object p2, p0, Lcom/dropbox/android/widget/DbxVideoView;->f:Ljava/util/Map;

    .line 196
    const/4 v0, 0x0

    iput v0, p0, Lcom/dropbox/android/widget/DbxVideoView;->u:I

    .line 197
    invoke-direct {p0}, Lcom/dropbox/android/widget/DbxVideoView;->m()V

    .line 198
    invoke-virtual {p0}, Lcom/dropbox/android/widget/DbxVideoView;->requestLayout()V

    .line 199
    invoke-virtual {p0}, Lcom/dropbox/android/widget/DbxVideoView;->invalidate()V

    .line 200
    return-void
.end method
