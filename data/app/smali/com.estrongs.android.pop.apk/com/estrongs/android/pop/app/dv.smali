.class Lcom/estrongs/android/pop/app/dv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/dv;->a:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dv;->a:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->dismissDialog(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dv;->a:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->l(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)Landroid/widget/VideoView;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/dv;->a:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->m(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dv;->a:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->n(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)V

    return-void
.end method
