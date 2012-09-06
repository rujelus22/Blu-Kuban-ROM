.class final Lcom/dropbox/android/activity/cc;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field final synthetic a:Lcom/dropbox/android/activity/VideoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/dropbox/android/activity/VideoPlayerActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/dropbox/android/activity/cc;->a:Lcom/dropbox/android/activity/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .registers 3
    .parameter

    .prologue
    .line 102
    invoke-static {}, Lcom/dropbox/android/util/h;->z()Lcom/dropbox/android/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->c()V

    .line 103
    iget-object v0, p0, Lcom/dropbox/android/activity/cc;->a:Lcom/dropbox/android/activity/VideoPlayerActivity;

    invoke-virtual {v0}, Lcom/dropbox/android/activity/VideoPlayerActivity;->finish()V

    .line 104
    return-void
.end method
