.class Lcom/estrongs/android/pop/app/w;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/w;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6

    const/4 v2, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/w;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v1

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/estrongs/android/pop/app/w;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->a(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/estrongs/android/pop/app/w;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->a(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_1f

    :cond_1e
    :goto_1e
    return v2

    :cond_1f
    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/estrongs/android/pop/app/w;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->I(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/w;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v1, v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->f(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;I)Z

    move-result v1

    if-eqz v1, :cond_37

    add-int/lit8 v0, v0, -0x3

    :goto_31
    iget-object v1, p0, Lcom/estrongs/android/pop/app/w;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v1, v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->g(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;I)V

    goto :goto_1e

    :cond_37
    add-int/lit8 v0, v0, 0x3

    goto :goto_31
.end method
