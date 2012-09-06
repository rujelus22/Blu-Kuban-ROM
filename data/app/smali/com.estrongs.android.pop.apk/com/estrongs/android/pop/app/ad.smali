.class Lcom/estrongs/android/pop/app/ad;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/pop/app/aq;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/ad;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ad;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    const/4 v1, 0x3

    invoke-static {v0, v1, p1}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->a(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;II)V

    return-void
.end method

.method public b(I)V
    .registers 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ad;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->a(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;II)V

    return-void
.end method

.method public c(I)V
    .registers 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ad;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->a(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;II)V

    return-void
.end method

.method public d(I)V
    .registers 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ad;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->a(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;II)V

    return-void
.end method

.method public e(I)V
    .registers 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ad;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->a(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;II)V

    return-void
.end method

.method public f(I)V
    .registers 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ad;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->e()I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ad;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v1, v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->a(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;I)V

    return-void
.end method

.method public g(I)V
    .registers 4

    const-wide/16 v0, 0x3e8

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_30

    :goto_5
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ad;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->n()Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ad;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->l()Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_1d
    :goto_1d
    return-void

    :cond_1e
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ad;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->e()I

    move-result v0

    if-eq v0, p1, :cond_1d

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ad;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v1, v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->a(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;I)V

    goto :goto_1d

    :catch_30
    move-exception v0

    goto :goto_5
.end method
