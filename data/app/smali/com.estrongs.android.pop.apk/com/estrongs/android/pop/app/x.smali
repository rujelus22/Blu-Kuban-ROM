.class Lcom/estrongs/android/pop/app/x;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/x;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7

    const/4 v0, 0x4

    const/4 v1, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    iget-object v3, p0, Lcom/estrongs/android/pop/app/x;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v3}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v3

    if-eqz v3, :cond_1f

    iget-object v3, p0, Lcom/estrongs/android/pop/app/x;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v3}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->a(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1f

    iget-object v3, p0, Lcom/estrongs/android/pop/app/x;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v3}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->a(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-nez v3, :cond_20

    :cond_1f
    :goto_1f
    return v1

    :cond_20
    if-nez v2, :cond_1f

    iget-object v2, p0, Lcom/estrongs/android/pop/app/x;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->I(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-ne v2, v0, :cond_33

    move v0, v1

    :cond_2d
    :goto_2d
    iget-object v2, p0, Lcom/estrongs/android/pop/app/x;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v2, v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->g(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;I)V

    goto :goto_1f

    :cond_33
    const/4 v3, 0x7

    if-eq v2, v3, :cond_2d

    move v0, v2

    goto :goto_2d
.end method
