.class final Lcom/dropbox/android/activity/cf;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/dropbox/android/activity/VideoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/dropbox/android/activity/VideoPlayerActivity;Ljava/lang/Runnable;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/dropbox/android/activity/cf;->b:Lcom/dropbox/android/activity/VideoPlayerActivity;

    iput-object p2, p0, Lcom/dropbox/android/activity/cf;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSystemUiVisibilityChange(I)V
    .registers 6
    .parameter

    .prologue
    .line 128
    if-eqz p1, :cond_6

    and-int/lit8 v0, p1, 0x2

    if-lez v0, :cond_11

    .line 129
    :cond_6
    iget-object v0, p0, Lcom/dropbox/android/activity/cf;->b:Lcom/dropbox/android/activity/VideoPlayerActivity;

    invoke-static {v0}, Lcom/dropbox/android/activity/VideoPlayerActivity;->d(Lcom/dropbox/android/activity/VideoPlayerActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/android/activity/cf;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 131
    :cond_11
    if-nez p1, :cond_28

    .line 133
    iget-object v0, p0, Lcom/dropbox/android/activity/cf;->b:Lcom/dropbox/android/activity/VideoPlayerActivity;

    invoke-static {v0}, Lcom/dropbox/android/activity/VideoPlayerActivity;->a(Lcom/dropbox/android/activity/VideoPlayerActivity;)Lcom/dropbox/android/widget/DbxVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/widget/DbxVideoView;->j()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 134
    iget-object v0, p0, Lcom/dropbox/android/activity/cf;->b:Lcom/dropbox/android/activity/VideoPlayerActivity;

    invoke-static {v0}, Lcom/dropbox/android/activity/VideoPlayerActivity;->e(Lcom/dropbox/android/activity/VideoPlayerActivity;)Lcom/dropbox/android/widget/DbxMediaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/widget/DbxMediaController;->b()V

    .line 139
    :cond_28
    :goto_28
    return-void

    .line 136
    :cond_29
    iget-object v0, p0, Lcom/dropbox/android/activity/cf;->b:Lcom/dropbox/android/activity/VideoPlayerActivity;

    invoke-static {v0}, Lcom/dropbox/android/activity/VideoPlayerActivity;->d(Lcom/dropbox/android/activity/VideoPlayerActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/android/activity/cf;->a:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_28
.end method
