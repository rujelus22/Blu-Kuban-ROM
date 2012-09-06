.class Lcom/estrongs/android/pop/app/af;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/af;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 11

    const/4 v2, 0x0

    const v3, 0x7f030008

    const/4 v7, 0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/af;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    check-cast p2, Lcom/estrongs/android/pop/app/r;

    invoke-virtual {p2}, Lcom/estrongs/android/pop/app/r;->a()Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->a(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;Lcom/estrongs/android/pop/app/AudioPlayerService;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/af;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v0

    if-nez v0, :cond_19

    :cond_18
    :goto_18
    return-void

    :cond_19
    iget-object v0, p0, Lcom/estrongs/android/pop/app/af;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->t()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/af;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->c(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/af;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/af;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->d(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Lcom/estrongs/android/pop/app/aq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/AudioPlayerService;->a(Lcom/estrongs/android/pop/app/aq;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/af;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0, v2}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/af;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->a(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f7

    iget-object v0, p0, Lcom/estrongs/android/pop/app/af;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->e(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Z

    move-result v0

    if-eqz v0, :cond_1b6

    iget-object v0, p0, Lcom/estrongs/android/pop/app/af;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->i()[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/af;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/af;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/app/AudioPlayerService;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;Ljava/lang/String;)V

    if-eqz v0, :cond_6d

    array-length v0, v0

    if-nez v0, :cond_165

    :cond_6d
    iget-object v0, p0, Lcom/estrongs/android/pop/app/af;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->r()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/af;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/af;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->a(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/AudioPlayerService;->b([Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/af;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/af;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/AudioPlayerService;->d()I

    move-result v1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/af;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->e()I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/af;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v1, v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->a(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;I)V

    :goto_a3
    iget-object v0, p0, Lcom/estrongs/android/pop/app/af;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->a(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_dd

    iget-object v0, p0, Lcom/estrongs/android/pop/app/af;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->j()I

    iget-object v6, p0, Lcom/estrongs/android/pop/app/af;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    new-instance v0, Lcom/estrongs/android/pop/app/ao;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/af;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/af;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    iget-object v4, p0, Lcom/estrongs/android/pop/app/af;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v4}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->a(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)[Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/estrongs/android/pop/app/af;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v5}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/pop/app/ao;-><init>(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;Landroid/content/Context;I[Ljava/lang/String;Lcom/estrongs/android/pop/app/AudioPlayerService;)V

    invoke-static {v6, v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->a(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;Lcom/estrongs/android/pop/app/ao;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/af;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->f(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/af;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->g(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Lcom/estrongs/android/pop/app/ao;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_dd
    iget-object v0, p0, Lcom/estrongs/android/pop/app/af;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->l()Z

    move-result v0

    if-eqz v0, :cond_105

    iget-object v0, p0, Lcom/estrongs/android/pop/app/af;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->j()I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/af;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/AudioPlayerService;->m()Z

    move-result v1

    if-eqz v1, :cond_226

    iget-object v1, p0, Lcom/estrongs/android/pop/app/af;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    const/4 v2, 0x2

    invoke-static {v1, v2, v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->a(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;II)V

    :cond_105
    :goto_105
    iget-object v0, p0, Lcom/estrongs/android/pop/app/af;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->h(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/af;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->i(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_241

    iget-object v0, p0, Lcom/estrongs/android/pop/app/af;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->j(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/af;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->i(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_121
    iget-object v0, p0, Lcom/estrongs/android/pop/app/af;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/af;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->k(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/af;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    new-instance v1, Lcom/estrongs/android/pop/app/ap;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/af;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    iget-object v4, p0, Lcom/estrongs/android/pop/app/af;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    iget-object v5, p0, Lcom/estrongs/android/pop/app/af;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v5}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->l(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)[Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v4, v3, v5}, Lcom/estrongs/android/pop/app/ap;-><init>(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;Landroid/content/Context;I[Ljava/lang/String;)V

    iput-object v1, v0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->a:Lcom/estrongs/android/pop/app/ap;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/af;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->m(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/af;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->a:Lcom/estrongs/android/pop/app/ap;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/af;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->n(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/estrongs/android/pop/app/af;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->a(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/af;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->o(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Lcom/estrongs/android/pop/view/RealViewSwitcher;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/estrongs/android/pop/view/RealViewSwitcher;->b(I)V

    goto/16 :goto_18

    :cond_165
    iget-object v0, p0, Lcom/estrongs/android/pop/app/af;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/af;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->a(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/AudioPlayerService;->a([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/af;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/af;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/AudioPlayerService;->i()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->a(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/af;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/af;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/AudioPlayerService;->d()I

    move-result v1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/af;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->l()Z

    move-result v0

    if-nez v0, :cond_1af

    iget-object v0, p0, Lcom/estrongs/android/pop/app/af;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->e()I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/af;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v1, v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->c(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;I)V

    goto/16 :goto_a3

    :cond_1af
    iget-object v0, p0, Lcom/estrongs/android/pop/app/af;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->finish()V

    goto/16 :goto_a3

    :cond_1b6
    iget-object v0, p0, Lcom/estrongs/android/pop/app/af;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->r()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/af;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/af;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->a(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/AudioPlayerService;->b([Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/af;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/app/AudioPlayerService;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/af;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/af;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/AudioPlayerService;->d()I

    move-result v1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/af;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->e()I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/af;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v1, v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->a(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;I)V

    goto/16 :goto_a3

    :cond_1f7
    iget-object v0, p0, Lcom/estrongs/android/pop/app/af;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/af;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/AudioPlayerService;->i()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->a(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/af;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/af;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/AudioPlayerService;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/af;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/af;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/AudioPlayerService;->d()I

    move-result v1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;I)V

    goto/16 :goto_a3

    :cond_226
    iget-object v1, p0, Lcom/estrongs/android/pop/app/af;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/AudioPlayerService;->n()Z

    move-result v1

    if-eqz v1, :cond_23a

    iget-object v1, p0, Lcom/estrongs/android/pop/app/af;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    const/4 v2, 0x3

    invoke-static {v1, v2, v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->a(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;II)V

    goto/16 :goto_105

    :cond_23a
    iget-object v1, p0, Lcom/estrongs/android/pop/app/af;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v1, v7, v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->a(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;II)V

    goto/16 :goto_105

    :cond_241
    iget-object v0, p0, Lcom/estrongs/android/pop/app/af;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->j(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/af;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    const v2, 0x7f0901fb

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_121
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/af;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->a(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;Lcom/estrongs/android/pop/app/AudioPlayerService;)V

    return-void
.end method
