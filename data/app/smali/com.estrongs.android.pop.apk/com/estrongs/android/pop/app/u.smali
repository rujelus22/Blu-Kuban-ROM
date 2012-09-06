.class Lcom/estrongs/android/pop/app/u;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/u;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8

    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/u;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/estrongs/android/pop/app/u;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->a(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_19

    :cond_18
    :goto_18
    return v2

    :cond_19
    iget-object v1, p0, Lcom/estrongs/android/pop/app/u;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/AudioPlayerService;->n()Z

    move-result v1

    if-nez v1, :cond_18

    if-nez v0, :cond_43

    iget-object v0, p0, Lcom/estrongs/android/pop/app/u;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->A(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/u;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->B(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/u;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->C(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_18

    :cond_43
    if-ne v0, v2, :cond_aa

    iget-object v0, p0, Lcom/estrongs/android/pop/app/u;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->i()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_57

    iget-object v0, p0, Lcom/estrongs/android/pop/app/u;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->D(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)V

    goto :goto_18

    :cond_57
    iget-object v0, p0, Lcom/estrongs/android/pop/app/u;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->l()Z

    move-result v0

    if-eqz v0, :cond_6f

    iget-object v0, p0, Lcom/estrongs/android/pop/app/u;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->m()Z

    move-result v0

    if-eqz v0, :cond_9f

    :cond_6f
    iget-object v0, p0, Lcom/estrongs/android/pop/app/u;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->m()Z

    move-result v0

    if-eqz v0, :cond_85

    iget-object v0, p0, Lcom/estrongs/android/pop/app/u;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->v()V

    goto :goto_18

    :cond_85
    iget-object v0, p0, Lcom/estrongs/android/pop/app/u;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->e()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_98

    iget-object v1, p0, Lcom/estrongs/android/pop/app/u;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v1, v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->a(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;I)V

    goto :goto_18

    :cond_98
    iget-object v0, p0, Lcom/estrongs/android/pop/app/u;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0, v3}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->a(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;I)V

    goto/16 :goto_18

    :cond_9f
    iget-object v0, p0, Lcom/estrongs/android/pop/app/u;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->s()V

    goto/16 :goto_18

    :cond_aa
    const/4 v1, 0x3

    if-ne v0, v1, :cond_18

    iget-object v0, p0, Lcom/estrongs/android/pop/app/u;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->l()Z

    move-result v0

    if-eqz v0, :cond_d3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/u;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->m()Z

    move-result v0

    if-eqz v0, :cond_cc

    iget-object v0, p0, Lcom/estrongs/android/pop/app/u;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->E(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)V

    goto/16 :goto_18

    :cond_cc
    iget-object v0, p0, Lcom/estrongs/android/pop/app/u;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->F(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)V

    goto/16 :goto_18

    :cond_d3
    iget-object v0, p0, Lcom/estrongs/android/pop/app/u;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->D(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)V

    goto/16 :goto_18
.end method
