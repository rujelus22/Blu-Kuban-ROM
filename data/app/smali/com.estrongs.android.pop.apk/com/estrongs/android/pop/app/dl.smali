.class Lcom/estrongs/android/pop/app/dl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/PopVideoPlayer;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/PopVideoPlayer;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/dl;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 7

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dl;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->d(Lcom/estrongs/android/pop/app/PopVideoPlayer;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dl;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->finish()V

    :goto_e
    return v2

    :cond_f
    iget-object v0, p0, Lcom/estrongs/android/pop/app/dl;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->showDialog(I)V

    goto :goto_e
.end method
