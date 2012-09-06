.class final Lcom/dropbox/android/activity/ca;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/dropbox/android/activity/VideoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/dropbox/android/activity/VideoPlayerActivity;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/dropbox/android/activity/ca;->b:Lcom/dropbox/android/activity/VideoPlayerActivity;

    iput-object p2, p0, Lcom/dropbox/android/activity/ca;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Landroid/media/MediaPlayer;II)Z
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 78
    invoke-static {}, Lcom/dropbox/android/util/h;->A()Lcom/dropbox/android/util/r;

    move-result-object v0

    const-string v1, "what"

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;J)Lcom/dropbox/android/util/r;

    move-result-object v0

    const-string v1, "extra"

    int-to-long v2, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;J)Lcom/dropbox/android/util/r;

    move-result-object v0

    const-string v1, "container"

    iget-object v2, p0, Lcom/dropbox/android/activity/ca;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/android/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->c()V

    .line 79
    const/4 v0, 0x0

    return v0
.end method
