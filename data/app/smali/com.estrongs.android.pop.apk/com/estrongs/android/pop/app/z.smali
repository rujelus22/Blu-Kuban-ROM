.class Lcom/estrongs/android/pop/app/z;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/z;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/pop/app/z;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->o(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Lcom/estrongs/android/pop/view/RealViewSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/RealViewSwitcher;->b()I

    move-result v0

    if-nez v0, :cond_84

    iget-object v0, p0, Lcom/estrongs/android/pop/app/z;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v0

    if-nez v0, :cond_15

    :cond_14
    :goto_14
    return-void

    :cond_15
    if-ltz p3, :cond_14

    iget-object v0, p0, Lcom/estrongs/android/pop/app/z;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->a(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-ge p3, v0, :cond_14

    :try_start_20
    iget-object v0, p0, Lcom/estrongs/android/pop/app/z;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->l()Z

    move-result v0

    if-nez v0, :cond_38

    iget-object v0, p0, Lcom/estrongs/android/pop/app/z;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->n()Z

    move-result v0

    if-eqz v0, :cond_75

    :cond_38
    iget-object v0, p0, Lcom/estrongs/android/pop/app/z;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->j()I

    move-result v0

    if-ne v0, p3, :cond_75

    iget-object v0, p0, Lcom/estrongs/android/pop/app/z;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->n()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/estrongs/android/pop/app/z;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->m()Z

    move-result v0

    if-eqz v0, :cond_6b

    iget-object v0, p0, Lcom/estrongs/android/pop/app/z;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->v()V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_65} :catch_66

    goto :goto_14

    :catch_66
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_14

    :cond_6b
    :try_start_6b
    iget-object v0, p0, Lcom/estrongs/android/pop/app/z;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->s()V

    goto :goto_14

    :cond_75
    iget-object v0, p0, Lcom/estrongs/android/pop/app/z;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->r()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/z;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0, p3}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->a(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;I)V
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_83} :catch_66

    goto :goto_14

    :cond_84
    if-ltz p3, :cond_14

    iget-object v0, p0, Lcom/estrongs/android/pop/app/z;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->l(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-ge p3, v0, :cond_14

    iget-object v0, p0, Lcom/estrongs/android/pop/app/z;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/z;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->l(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p3

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->c(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;Ljava/lang/String;)Z

    goto/16 :goto_14
.end method
