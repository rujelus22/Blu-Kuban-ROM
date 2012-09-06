.class public final Lcom/google/android/youtube/app/b/a/i;
.super Landroid/media/MediaPlayer;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/youtube/app/b/a/e;

.field private final b:Lcom/google/android/youtube/app/b/a/j;

.field private c:Landroid/media/MediaPlayer$OnErrorListener;

.field private d:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private e:Z


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/b/a/e;)V
    .registers 5
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/media/MediaPlayer;-><init>()V

    .line 50
    const-string v0, "mediaServer cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/b/a/e;

    iput-object v0, p0, Lcom/google/android/youtube/app/b/a/i;->a:Lcom/google/android/youtube/app/b/a/e;

    .line 51
    new-instance v0, Lcom/google/android/youtube/app/b/a/j;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/youtube/app/b/a/j;-><init>(Lcom/google/android/youtube/app/b/a/i;Landroid/os/Looper;B)V

    iput-object v0, p0, Lcom/google/android/youtube/app/b/a/i;->b:Lcom/google/android/youtube/app/b/a/j;

    .line 52
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/b/a/i;)Landroid/media/MediaPlayer$OnErrorListener;
    .registers 2
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/youtube/app/b/a/i;->c:Landroid/media/MediaPlayer$OnErrorListener;

    return-object v0
.end method

.method private a()V
    .registers 5

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/youtube/app/b/a/i;->d:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lcom/google/android/youtube/app/b/a/i;->e:Z

    if-eqz v0, :cond_15

    .line 88
    iget-object v0, p0, Lcom/google/android/youtube/app/b/a/i;->b:Lcom/google/android/youtube/app/b/a/j;

    const/4 v1, 0x2

    const/16 v2, 0x64

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/youtube/app/b/a/j;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 90
    :cond_15
    return-void
.end method

.method static synthetic b(Lcom/google/android/youtube/app/b/a/i;)Landroid/media/MediaPlayer$OnBufferingUpdateListener;
    .registers 2
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/youtube/app/b/a/i;->d:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    return-object v0
.end method


# virtual methods
.method public final setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 57
    iget-object v0, p0, Lcom/google/android/youtube/app/b/a/i;->a:Lcom/google/android/youtube/app/b/a/e;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/b/a/e;->a()Z

    move-result v0

    if-nez v0, :cond_16

    .line 58
    iget-object v0, p0, Lcom/google/android/youtube/app/b/a/i;->b:Lcom/google/android/youtube/app/b/a/j;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/b/a/j;->sendEmptyMessage(I)Z

    .line 59
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MediaServer is not started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_16
    iget-object v0, p0, Lcom/google/android/youtube/app/b/a/i;->a:Lcom/google/android/youtube/app/b/a/e;

    invoke-virtual {v0, p2}, Lcom/google/android/youtube/app/b/a/e;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    invoke-super {p0, p1, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 62
    iput-boolean v1, p0, Lcom/google/android/youtube/app/b/a/i;->e:Z

    .line 63
    invoke-direct {p0}, Lcom/google/android/youtube/app/b/a/i;->a()V

    .line 64
    return-void
.end method

.method public final setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V
    .registers 2
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/google/android/youtube/app/b/a/i;->d:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 83
    invoke-direct {p0}, Lcom/google/android/youtube/app/b/a/i;->a()V

    .line 84
    return-void
.end method

.method public final setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .registers 2
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/google/android/youtube/app/b/a/i;->c:Landroid/media/MediaPlayer$OnErrorListener;

    .line 72
    invoke-super {p0, p1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 73
    return-void
.end method
