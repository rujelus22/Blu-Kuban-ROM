.class Lcom/estrongs/android/pop/app/t;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/t;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 10

    const/16 v6, 0x8

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iget-object v3, p0, Lcom/estrongs/android/pop/app/t;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v3}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v3

    if-eqz v3, :cond_18

    iget-object v3, p0, Lcom/estrongs/android/pop/app/t;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v3}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->a(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)[Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_19

    :cond_18
    :goto_18
    return v1

    :cond_19
    iget-object v3, p0, Lcom/estrongs/android/pop/app/t;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v3}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/estrongs/android/pop/app/AudioPlayerService;->n()Z

    move-result v3

    if-nez v3, :cond_18

    if-nez v0, :cond_3a

    iget-object v0, p0, Lcom/estrongs/android/pop/app/t;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->y(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/t;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->z(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_18

    :cond_3a
    if-ne v0, v1, :cond_e9

    iget-object v0, p0, Lcom/estrongs/android/pop/app/t;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/estrongs/android/pop/app/t;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->i()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_63

    iget-object v0, p0, Lcom/estrongs/android/pop/app/t;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->y(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/t;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->z(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_18

    :cond_63
    iget-object v0, p0, Lcom/estrongs/android/pop/app/t;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->d()I

    move-result v0

    if-eq v0, v1, :cond_b0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/t;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->d()I

    move-result v0

    const/4 v3, 0x4

    if-eq v0, v3, :cond_b0

    move v0, v1

    :goto_7d
    iget-object v3, p0, Lcom/estrongs/android/pop/app/t;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v3}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/estrongs/android/pop/app/AudioPlayerService;->j()I

    move-result v3

    iget-object v4, p0, Lcom/estrongs/android/pop/app/t;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v4}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/estrongs/android/pop/app/AudioPlayerService;->g()I

    move-result v4

    iget-object v5, p0, Lcom/estrongs/android/pop/app/t;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v5}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/estrongs/android/pop/app/AudioPlayerService;->i()[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    if-ne v5, v1, :cond_b2

    if-eqz v0, :cond_b2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/t;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->r()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/t;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0, v2}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->a(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;I)V

    goto/16 :goto_18

    :cond_b0
    move v0, v2

    goto :goto_7d

    :cond_b2
    if-ltz v4, :cond_c5

    iget-object v5, p0, Lcom/estrongs/android/pop/app/t;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v5}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/estrongs/android/pop/app/AudioPlayerService;->i()[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    if-lt v4, v5, :cond_d9

    if-nez v0, :cond_d9

    if-ne v3, v4, :cond_d9

    :cond_c5
    iget-object v0, p0, Lcom/estrongs/android/pop/app/t;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->y(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/t;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->z(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_18

    :cond_d9
    iget-object v0, p0, Lcom/estrongs/android/pop/app/t;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->r()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/t;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0, v4}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->a(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;I)V

    goto/16 :goto_18

    :cond_e9
    const/4 v3, 0x3

    if-ne v0, v3, :cond_18

    iget-object v0, p0, Lcom/estrongs/android/pop/app/t;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->y(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/t;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->z(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_18
.end method
