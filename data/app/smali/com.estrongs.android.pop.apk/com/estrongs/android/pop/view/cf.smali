.class Lcom/estrongs/android/pop/view/cf;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/FileExplorerActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/cf;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .registers 9

    const/4 v1, 0x3

    const/4 v6, 0x1

    const/4 v2, 0x4

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/estrongs/android/pop/view/cf;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->b(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Landroid/widget/TabHost;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v4

    iget-object v3, p0, Lcom/estrongs/android/pop/view/cf;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v3, v3, Lcom/estrongs/android/pop/view/FileExplorerActivity;->q:Lcom/estrongs/android/pop/view/RealViewSwitcher;

    invoke-virtual {v3, v4}, Lcom/estrongs/android/pop/view/RealViewSwitcher;->b(I)V

    iget-object v3, p0, Lcom/estrongs/android/pop/view/cf;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v3, v6}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->b(Lcom/estrongs/android/pop/view/FileExplorerActivity;Z)V

    iget-object v3, p0, Lcom/estrongs/android/pop/view/cf;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->s(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Landroid/widget/ImageView;

    move-result-object v3

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    if-nez v4, :cond_95

    iget-object v3, p0, Lcom/estrongs/android/pop/view/cf;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->k()V

    :goto_2c
    if-ne v4, v1, :cond_3c

    iget-object v3, p0, Lcom/estrongs/android/pop/view/cf;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->t(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/pop/view/ff;

    move-result-object v3

    invoke-virtual {v3}, Lcom/estrongs/android/pop/view/ff;->t()V

    iget-object v3, p0, Lcom/estrongs/android/pop/view/cf;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->u(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V

    :cond_3c
    iget-object v3, p0, Lcom/estrongs/android/pop/view/cf;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/android/pop/view/FileExplorerActivity;)[Lcom/estrongs/android/pop/view/ff;

    move-result-object v3

    iget-object v5, p0, Lcom/estrongs/android/pop/view/cf;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v5}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->v(Lcom/estrongs/android/pop/view/FileExplorerActivity;)I

    move-result v5

    aget-object v3, v3, v5

    invoke-virtual {v3, v6, v0}, Lcom/estrongs/android/pop/view/ff;->b(ZZ)V

    iget-object v3, p0, Lcom/estrongs/android/pop/view/cf;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v3, v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->e(Lcom/estrongs/android/pop/view/FileExplorerActivity;Z)V

    iget-object v3, p0, Lcom/estrongs/android/pop/view/cf;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/android/pop/view/FileExplorerActivity;)[Lcom/estrongs/android/pop/view/ff;

    move-result-object v3

    aget-object v3, v3, v4

    invoke-virtual {v3, v6}, Lcom/estrongs/android/pop/view/ff;->h(Z)V

    iget-object v3, p0, Lcom/estrongs/android/pop/view/cf;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v3, v4}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->b(Lcom/estrongs/android/pop/view/FileExplorerActivity;I)V

    iget-object v3, p0, Lcom/estrongs/android/pop/view/cf;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->w(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V

    iget-object v3, p0, Lcom/estrongs/android/pop/view/cf;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iput-boolean v0, v3, Lcom/estrongs/android/pop/view/FileExplorerActivity;->r:Z

    sget-object v3, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c:Ljava/lang/String;

    const-string v5, "baidu"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_94

    iget-object v3, p0, Lcom/estrongs/android/pop/view/cf;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v3}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/estrongs/android/pop/c;->ah()Z

    move-result v3

    if-eqz v3, :cond_94

    if-nez v4, :cond_a7

    move v0, v1

    :cond_84
    :goto_84
    iget-object v3, p0, Lcom/estrongs/android/pop/view/cf;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v3}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/estrongs/android/pop/c;->ag()I

    move-result v3

    and-int/lit8 v5, v3, 0x1

    if-lez v5, :cond_ab

    if-ne v0, v1, :cond_ab

    :cond_94
    :goto_94
    return-void

    :cond_95
    iget-object v3, p0, Lcom/estrongs/android/pop/view/cf;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->k()V

    invoke-static {}, Lcom/estrongs/android/pop/view/le;->a()Lcom/estrongs/android/pop/view/le;

    move-result-object v3

    invoke-virtual {v3}, Lcom/estrongs/android/pop/view/le;->e()V

    iget-object v3, p0, Lcom/estrongs/android/pop/view/cf;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->W()V

    goto :goto_2c

    :cond_a7
    if-ne v4, v2, :cond_84

    move v0, v2

    goto :goto_84

    :cond_ab
    and-int/lit8 v1, v3, 0x2

    if-lez v1, :cond_b1

    if-eq v0, v2, :cond_94

    :cond_b1
    if-eqz v0, :cond_94

    if-nez v4, :cond_d9

    or-int/lit8 v1, v3, 0x1

    :goto_b7
    iget-object v2, p0, Lcom/estrongs/android/pop/view/cf;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v2}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/estrongs/android/pop/c;->h(I)V

    iget-object v1, p0, Lcom/estrongs/android/pop/view/cf;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "guide_index"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/pop/view/cf;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const-class v3, Lcom/estrongs/android/pop/view/GuideActivity;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_94

    :cond_d9
    if-ne v4, v2, :cond_de

    or-int/lit8 v1, v3, 0x2

    goto :goto_b7

    :cond_de
    move v1, v3

    goto :goto_b7
.end method
