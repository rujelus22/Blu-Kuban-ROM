.class Lcom/estrongs/android/pop/app/dk;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/PopVideoPlayer;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/PopVideoPlayer;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/dk;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 4

    sget-object v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c:Ljava/lang/String;

    const-string v1, "Spreadtrum_cmcc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dk;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->a(Lcom/estrongs/android/pop/app/PopVideoPlayer;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dk;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->b()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dk;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->finish()V

    :cond_1d
    return-void
.end method
