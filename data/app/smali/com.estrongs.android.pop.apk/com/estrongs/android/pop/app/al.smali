.class Lcom/estrongs/android/pop/app/al;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/ak;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/ak;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/estrongs/android/pop/app/al;->a:Lcom/estrongs/android/pop/app/ak;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/al;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    const/4 v4, 0x3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/al;->a:Lcom/estrongs/android/pop/app/ak;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/ak;->a(Lcom/estrongs/android/pop/app/ak;)Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->w(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/al;->a:Lcom/estrongs/android/pop/app/ak;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/ak;->a(Lcom/estrongs/android/pop/app/ak;)Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/al;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/al;->a:Lcom/estrongs/android/pop/app/ak;

    invoke-static {v3}, Lcom/estrongs/android/pop/app/ak;->a(Lcom/estrongs/android/pop/app/ak;)Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->x(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->a(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_45

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg1:I

    :goto_2a
    iget-object v1, p0, Lcom/estrongs/android/pop/app/al;->a:Lcom/estrongs/android/pop/app/ak;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/ak;->a(Lcom/estrongs/android/pop/app/ak;)Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->w(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/al;->a:Lcom/estrongs/android/pop/app/ak;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/ak;->a(Lcom/estrongs/android/pop/app/ak;)Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->w(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_45
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    goto :goto_2a
.end method
