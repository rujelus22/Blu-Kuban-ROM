.class Lcom/estrongs/android/pop/app/dz;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/dz;->a:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/dz;)Lcom/estrongs/android/pop/app/StreamingMediaPlayer;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dz;->a:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    return-object v0
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 7

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dz;->a:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    invoke-static {v0, v2}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->b(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dz;->a:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->e(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/ea;

    invoke-direct {v1, p0, p3}, Lcom/estrongs/android/pop/app/ea;-><init>(Lcom/estrongs/android/pop/app/dz;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v2
.end method
