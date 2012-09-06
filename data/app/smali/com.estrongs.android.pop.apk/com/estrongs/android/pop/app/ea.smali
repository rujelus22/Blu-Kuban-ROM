.class Lcom/estrongs/android/pop/app/ea;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/dz;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/dz;I)V
    .registers 3

    iput-object p1, p0, Lcom/estrongs/android/pop/app/ea;->a:Lcom/estrongs/android/pop/app/dz;

    iput p2, p0, Lcom/estrongs/android/pop/app/ea;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ea;->a:Lcom/estrongs/android/pop/app/dz;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/dz;->a(Lcom/estrongs/android/pop/app/dz;)Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->f(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)Z

    move-result v0

    if-eqz v0, :cond_28

    iget v0, p0, Lcom/estrongs/android/pop/app/ea;->b:I

    const/16 v1, -0xf

    if-ne v0, v1, :cond_1d

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ea;->a:Lcom/estrongs/android/pop/app/dz;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/dz;->a(Lcom/estrongs/android/pop/app/dz;)Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->showDialog(I)V

    :cond_1c
    :goto_1c
    return-void

    :cond_1d
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ea;->a:Lcom/estrongs/android/pop/app/dz;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/dz;->a(Lcom/estrongs/android/pop/app/dz;)Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->b(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;Z)V

    goto :goto_1c

    :cond_28
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ea;->a:Lcom/estrongs/android/pop/app/dz;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/dz;->a(Lcom/estrongs/android/pop/app/dz;)Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->showDialog(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ea;->a:Lcom/estrongs/android/pop/app/dz;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/dz;->a(Lcom/estrongs/android/pop/app/dz;)Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->g(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getProgress()I

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ea;->a:Lcom/estrongs/android/pop/app/dz;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/dz;->a(Lcom/estrongs/android/pop/app/dz;)Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->g(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ea;->a:Lcom/estrongs/android/pop/app/dz;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/dz;->a(Lcom/estrongs/android/pop/app/dz;)Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->h(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ea;->a:Lcom/estrongs/android/pop/app/dz;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/dz;->a(Lcom/estrongs/android/pop/app/dz;)Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->g(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ea;->a:Lcom/estrongs/android/pop/app/dz;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/dz;->a(Lcom/estrongs/android/pop/app/dz;)Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->i(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->incrementProgressBy(I)V

    goto :goto_1c
.end method
