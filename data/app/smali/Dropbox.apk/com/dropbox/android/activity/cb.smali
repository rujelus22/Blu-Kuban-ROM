.class final Lcom/dropbox/android/activity/cb;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/dropbox/android/activity/VideoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/dropbox/android/activity/VideoPlayerActivity;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/dropbox/android/activity/cb;->b:Lcom/dropbox/android/activity/VideoPlayerActivity;

    iput-object p2, p0, Lcom/dropbox/android/activity/cb;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .registers 6
    .parameter

    .prologue
    .line 93
    invoke-static {}, Lcom/dropbox/android/util/h;->y()Lcom/dropbox/android/util/r;

    move-result-object v0

    const-string v1, "buffer"

    iget-object v2, p0, Lcom/dropbox/android/activity/cb;->b:Lcom/dropbox/android/activity/VideoPlayerActivity;

    invoke-static {v2}, Lcom/dropbox/android/activity/VideoPlayerActivity;->a(Lcom/dropbox/android/activity/VideoPlayerActivity;)Lcom/dropbox/android/widget/DbxVideoView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dropbox/android/widget/DbxVideoView;->f()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;J)Lcom/dropbox/android/util/r;

    move-result-object v0

    const-string v1, "container"

    iget-object v2, p0, Lcom/dropbox/android/activity/cb;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/android/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->c()V

    .line 94
    iget-object v0, p0, Lcom/dropbox/android/activity/cb;->b:Lcom/dropbox/android/activity/VideoPlayerActivity;

    invoke-static {v0}, Lcom/dropbox/android/activity/VideoPlayerActivity;->b(Lcom/dropbox/android/activity/VideoPlayerActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 95
    return-void
.end method
