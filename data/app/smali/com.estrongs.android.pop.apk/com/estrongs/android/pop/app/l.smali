.class Lcom/estrongs/android/pop/app/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/AudioPlayerService;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/AudioPlayerService;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/l;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/l;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->a(Lcom/estrongs/android/pop/app/AudioPlayerService;)Lcom/estrongs/android/pop/app/aq;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/estrongs/android/pop/app/l;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->r()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/l;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->a(Lcom/estrongs/android/pop/app/AudioPlayerService;)Lcom/estrongs/android/pop/app/aq;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/l;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/AudioPlayerService;->b(Lcom/estrongs/android/pop/app/AudioPlayerService;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/estrongs/android/pop/app/aq;->f(I)V

    :goto_1c
    return-void

    :cond_1d
    iget-object v0, p0, Lcom/estrongs/android/pop/app/l;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/app/AudioPlayerService;->a(Landroid/media/MediaPlayer;)Z

    goto :goto_1c
.end method
