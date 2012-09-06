.class public Lcom/dropbox/android/activity/VideoPlayerActivity;
.super Lcom/dropbox/android/activity/base/BaseActivity;
.source "panda.py"

# interfaces
.implements Lcom/dropbox/android/widget/p;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/net/Uri;

.field private c:Lcom/dropbox/android/widget/DbxVideoView;

.field private d:Lcom/dropbox/android/widget/DbxMediaController;

.field private e:Landroid/widget/ProgressBar;

.field private g:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    const-class v0, Lcom/dropbox/android/activity/VideoPlayerActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/android/activity/VideoPlayerActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Lcom/dropbox/android/activity/base/BaseActivity;-><init>()V

    .line 36
    iput-object v0, p0, Lcom/dropbox/android/activity/VideoPlayerActivity;->b:Landroid/net/Uri;

    .line 38
    iput-object v0, p0, Lcom/dropbox/android/activity/VideoPlayerActivity;->c:Lcom/dropbox/android/widget/DbxVideoView;

    .line 39
    iput-object v0, p0, Lcom/dropbox/android/activity/VideoPlayerActivity;->d:Lcom/dropbox/android/widget/DbxMediaController;

    .line 40
    iput-object v0, p0, Lcom/dropbox/android/activity/VideoPlayerActivity;->e:Landroid/widget/ProgressBar;

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/dropbox/android/activity/VideoPlayerActivity;->g:Landroid/os/Handler;

    .line 184
    return-void
.end method

.method static synthetic a(Lcom/dropbox/android/activity/VideoPlayerActivity;)Lcom/dropbox/android/widget/DbxVideoView;
    .registers 2
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dropbox/android/activity/VideoPlayerActivity;->c:Lcom/dropbox/android/widget/DbxVideoView;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    .prologue
    .line 28
    sget-object v0, Lcom/dropbox/android/activity/VideoPlayerActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method private a(I)V
    .registers 5
    .parameter

    .prologue
    .line 49
    sget-object v0, Lcom/dropbox/android/activity/VideoPlayerActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting duration to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldbxyzptlk/h/f;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object v0, p0, Lcom/dropbox/android/activity/VideoPlayerActivity;->c:Lcom/dropbox/android/widget/DbxVideoView;

    if-eqz v0, :cond_21

    .line 51
    iget-object v0, p0, Lcom/dropbox/android/activity/VideoPlayerActivity;->c:Lcom/dropbox/android/widget/DbxVideoView;

    invoke-virtual {v0, p1}, Lcom/dropbox/android/widget/DbxVideoView;->setDuration(I)V

    .line 53
    :cond_21
    return-void
.end method

.method static synthetic a(Lcom/dropbox/android/activity/VideoPlayerActivity;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/dropbox/android/activity/VideoPlayerActivity;->a(I)V

    return-void
.end method

.method static synthetic b(Lcom/dropbox/android/activity/VideoPlayerActivity;)Landroid/widget/ProgressBar;
    .registers 2
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dropbox/android/activity/VideoPlayerActivity;->e:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private c()V
    .registers 3

    .prologue
    .line 213
    const/16 v0, 0xe

    invoke-static {v0}, Lcom/dropbox/android/util/bb;->a(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 214
    iget-object v0, p0, Lcom/dropbox/android/activity/VideoPlayerActivity;->c:Lcom/dropbox/android/widget/DbxVideoView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/dropbox/android/widget/DbxVideoView;->setSystemUiVisibility(I)V

    .line 216
    :cond_e
    return-void
.end method

.method static synthetic c(Lcom/dropbox/android/activity/VideoPlayerActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/dropbox/android/activity/VideoPlayerActivity;->c()V

    return-void
.end method

.method static synthetic d(Lcom/dropbox/android/activity/VideoPlayerActivity;)Landroid/os/Handler;
    .registers 2
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dropbox/android/activity/VideoPlayerActivity;->g:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Lcom/dropbox/android/activity/VideoPlayerActivity;)Lcom/dropbox/android/widget/DbxMediaController;
    .registers 2
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dropbox/android/activity/VideoPlayerActivity;->d:Lcom/dropbox/android/widget/DbxMediaController;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 57
    invoke-super {p0, p1}, Lcom/dropbox/android/activity/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Lcom/dropbox/android/activity/VideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 60
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/activity/VideoPlayerActivity;->b:Landroid/net/Uri;

    .line 62
    const v0, 0x7f030038

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/VideoPlayerActivity;->setContentView(I)V

    .line 64
    const v0, 0x7f0d00c7

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/dropbox/android/activity/VideoPlayerActivity;->e:Landroid/widget/ProgressBar;

    .line 65
    const v0, 0x7f0d00c6

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/widget/DbxVideoView;

    iput-object v0, p0, Lcom/dropbox/android/activity/VideoPlayerActivity;->c:Lcom/dropbox/android/widget/DbxVideoView;

    .line 66
    iget-object v0, p0, Lcom/dropbox/android/activity/VideoPlayerActivity;->c:Lcom/dropbox/android/widget/DbxVideoView;

    const v2, 0x106000c

    invoke-virtual {v0, v2}, Lcom/dropbox/android/widget/DbxVideoView;->setBackgroundColor(I)V

    .line 68
    const-string v0, "EXTRA_CONTAINER"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    const-string v1, "hls_layer"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_49

    const-string v1, "hls"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 72
    :cond_49
    iget-object v1, p0, Lcom/dropbox/android/activity/VideoPlayerActivity;->c:Lcom/dropbox/android/widget/DbxVideoView;

    invoke-virtual {v1, v4}, Lcom/dropbox/android/widget/DbxVideoView;->setAllowSeek(Z)V

    .line 74
    :cond_4e
    iget-object v1, p0, Lcom/dropbox/android/activity/VideoPlayerActivity;->c:Lcom/dropbox/android/widget/DbxVideoView;

    new-instance v2, Lcom/dropbox/android/activity/ca;

    invoke-direct {v2, p0, v0}, Lcom/dropbox/android/activity/ca;-><init>(Lcom/dropbox/android/activity/VideoPlayerActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/dropbox/android/widget/DbxVideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 83
    iget-object v1, p0, Lcom/dropbox/android/activity/VideoPlayerActivity;->c:Lcom/dropbox/android/widget/DbxVideoView;

    new-instance v2, Lcom/dropbox/android/activity/cb;

    invoke-direct {v2, p0, v0}, Lcom/dropbox/android/activity/cb;-><init>(Lcom/dropbox/android/activity/VideoPlayerActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/dropbox/android/widget/DbxVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 98
    iget-object v0, p0, Lcom/dropbox/android/activity/VideoPlayerActivity;->c:Lcom/dropbox/android/widget/DbxVideoView;

    new-instance v1, Lcom/dropbox/android/activity/cc;

    invoke-direct {v1, p0}, Lcom/dropbox/android/activity/cc;-><init>(Lcom/dropbox/android/activity/VideoPlayerActivity;)V

    invoke-virtual {v0, v1}, Lcom/dropbox/android/widget/DbxVideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 107
    new-instance v0, Lcom/dropbox/android/widget/DbxMediaController;

    invoke-direct {v0, p0, v3, p0}, Lcom/dropbox/android/widget/DbxMediaController;-><init>(Landroid/content/Context;ZLcom/dropbox/android/widget/p;)V

    iput-object v0, p0, Lcom/dropbox/android/activity/VideoPlayerActivity;->d:Lcom/dropbox/android/widget/DbxMediaController;

    .line 108
    iget-object v0, p0, Lcom/dropbox/android/activity/VideoPlayerActivity;->d:Lcom/dropbox/android/widget/DbxMediaController;

    iget-object v1, p0, Lcom/dropbox/android/activity/VideoPlayerActivity;->c:Lcom/dropbox/android/widget/DbxVideoView;

    invoke-virtual {v0, v1}, Lcom/dropbox/android/widget/DbxMediaController;->setMediaPlayer(Lcom/dropbox/android/widget/q;)V

    .line 110
    iget-object v0, p0, Lcom/dropbox/android/activity/VideoPlayerActivity;->d:Lcom/dropbox/android/widget/DbxMediaController;

    new-instance v1, Lcom/dropbox/android/activity/cd;

    invoke-direct {v1, p0}, Lcom/dropbox/android/activity/cd;-><init>(Lcom/dropbox/android/activity/VideoPlayerActivity;)V

    invoke-virtual {v0, v1}, Lcom/dropbox/android/widget/DbxMediaController;->setOnHideListener(Lcom/dropbox/android/widget/r;)V

    .line 117
    new-instance v0, Lcom/dropbox/android/activity/ce;

    invoke-direct {v0, p0}, Lcom/dropbox/android/activity/ce;-><init>(Lcom/dropbox/android/activity/VideoPlayerActivity;)V

    .line 124
    const/16 v1, 0xe

    invoke-static {v1}, Lcom/dropbox/android/util/bb;->a(I)Z

    move-result v1

    if-eqz v1, :cond_9b

    .line 125
    iget-object v1, p0, Lcom/dropbox/android/activity/VideoPlayerActivity;->c:Lcom/dropbox/android/widget/DbxVideoView;

    new-instance v2, Lcom/dropbox/android/activity/cf;

    invoke-direct {v2, p0, v0}, Lcom/dropbox/android/activity/cf;-><init>(Lcom/dropbox/android/activity/VideoPlayerActivity;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Lcom/dropbox/android/widget/DbxVideoView;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 143
    :cond_9b
    invoke-virtual {p0}, Lcom/dropbox/android/activity/VideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXTRA_METADATA_URL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 144
    if-eqz v0, :cond_b1

    .line 145
    new-instance v1, Lcom/dropbox/android/activity/cg;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/android/activity/cg;-><init>(Lcom/dropbox/android/activity/VideoPlayerActivity;Ljava/lang/String;)V

    new-array v0, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/dropbox/android/activity/cg;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 148
    :cond_b1
    iget-object v0, p0, Lcom/dropbox/android/activity/VideoPlayerActivity;->c:Lcom/dropbox/android/widget/DbxVideoView;

    iget-object v1, p0, Lcom/dropbox/android/activity/VideoPlayerActivity;->d:Lcom/dropbox/android/widget/DbxMediaController;

    invoke-virtual {v0, v1}, Lcom/dropbox/android/widget/DbxVideoView;->setMediaController(Lcom/dropbox/android/widget/DbxMediaController;)V

    .line 149
    iget-object v0, p0, Lcom/dropbox/android/activity/VideoPlayerActivity;->e:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 150
    sget-object v0, Lcom/dropbox/android/activity/VideoPlayerActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/android/activity/VideoPlayerActivity;->b:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldbxyzptlk/h/f;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v0, p0, Lcom/dropbox/android/activity/VideoPlayerActivity;->c:Lcom/dropbox/android/widget/DbxVideoView;

    iget-object v1, p0, Lcom/dropbox/android/activity/VideoPlayerActivity;->b:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/dropbox/android/widget/DbxVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 152
    iget-object v0, p0, Lcom/dropbox/android/activity/VideoPlayerActivity;->c:Lcom/dropbox/android/widget/DbxVideoView;

    invoke-virtual {v0}, Lcom/dropbox/android/widget/DbxVideoView;->a()V

    .line 153
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 168
    invoke-super {p0}, Lcom/dropbox/android/activity/base/BaseActivity;->onPause()V

    .line 169
    iget-object v0, p0, Lcom/dropbox/android/activity/VideoPlayerActivity;->c:Lcom/dropbox/android/widget/DbxVideoView;

    invoke-virtual {v0}, Lcom/dropbox/android/widget/DbxVideoView;->e()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 170
    iget-object v0, p0, Lcom/dropbox/android/activity/VideoPlayerActivity;->c:Lcom/dropbox/android/widget/DbxVideoView;

    invoke-virtual {v0}, Lcom/dropbox/android/widget/DbxVideoView;->b()V

    .line 172
    :cond_10
    return-void
.end method

.method public onResume()V
    .registers 5

    .prologue
    .line 157
    invoke-super {p0}, Lcom/dropbox/android/activity/base/BaseActivity;->onResume()V

    .line 158
    invoke-static {}, Lcom/dropbox/android/util/h;->x()Lcom/dropbox/android/util/r;

    move-result-object v0

    const-string v1, "host"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/dropbox/android/activity/VideoPlayerActivity;->b:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/dropbox/android/activity/VideoPlayerActivity;->b:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/android/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->c()V

    .line 159
    iget-object v0, p0, Lcom/dropbox/android/activity/VideoPlayerActivity;->c:Lcom/dropbox/android/widget/DbxVideoView;

    invoke-virtual {v0}, Lcom/dropbox/android/widget/DbxVideoView;->j()Z

    move-result v0

    if-nez v0, :cond_46

    .line 160
    iget-object v0, p0, Lcom/dropbox/android/activity/VideoPlayerActivity;->e:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 161
    iget-object v0, p0, Lcom/dropbox/android/activity/VideoPlayerActivity;->c:Lcom/dropbox/android/widget/DbxVideoView;

    invoke-virtual {v0}, Lcom/dropbox/android/widget/DbxVideoView;->a()V

    .line 163
    :cond_46
    invoke-direct {p0}, Lcom/dropbox/android/activity/VideoPlayerActivity;->c()V

    .line 164
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2
    .parameter

    .prologue
    .line 176
    invoke-super {p0, p1}, Lcom/dropbox/android/activity/base/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 177
    return-void
.end method
