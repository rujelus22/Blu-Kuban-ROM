.class Lcom/estrongs/android/pop/app/y;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/y;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 7

    iget-object v0, p0, Lcom/estrongs/android/pop/app/y;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/estrongs/android/pop/app/y;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->l()Z

    move-result v0

    if-eqz v0, :cond_35

    if-eqz p3, :cond_35

    iget-object v0, p0, Lcom/estrongs/android/pop/app/y;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->k()I

    move-result v0

    if-lez v0, :cond_35

    mul-int/2addr v0, p2

    div-int/lit16 v0, v0, 0x3e8

    iget-object v1, p0, Lcom/estrongs/android/pop/app/y;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    const/16 v2, 0x3e8

    invoke-static {v1, v2}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->h(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;I)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/y;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->b(I)V

    :cond_35
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    return-void
.end method
