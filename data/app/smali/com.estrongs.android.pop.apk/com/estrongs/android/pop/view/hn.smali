.class Lcom/estrongs/android/pop/view/hn;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/FilemgrUpgrade;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/FilemgrUpgrade;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/hn;->a:Lcom/estrongs/android/pop/view/FilemgrUpgrade;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 10

    const/16 v6, 0x9

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/view/hn;->a:Lcom/estrongs/android/pop/view/FilemgrUpgrade;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->g(Lcom/estrongs/android/pop/view/FilemgrUpgrade;)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_e
    :goto_e
    return v2

    :cond_f
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_42

    iget-object v0, p0, Lcom/estrongs/android/pop/view/hn;->a:Lcom/estrongs/android/pop/view/FilemgrUpgrade;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->h(Lcom/estrongs/android/pop/view/FilemgrUpgrade;)I

    move-result v0

    if-ne v0, v3, :cond_25

    iget-object v0, p0, Lcom/estrongs/android/pop/view/hn;->a:Lcom/estrongs/android/pop/view/FilemgrUpgrade;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->i(Lcom/estrongs/android/pop/view/FilemgrUpgrade;)I

    move-result v0

    if-eq v0, v2, :cond_35

    :cond_25
    iget-object v0, p0, Lcom/estrongs/android/pop/view/hn;->a:Lcom/estrongs/android/pop/view/FilemgrUpgrade;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->h(Lcom/estrongs/android/pop/view/FilemgrUpgrade;)I

    move-result v0

    if-ne v0, v5, :cond_e

    iget-object v0, p0, Lcom/estrongs/android/pop/view/hn;->a:Lcom/estrongs/android/pop/view/FilemgrUpgrade;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->j(Lcom/estrongs/android/pop/view/FilemgrUpgrade;)I

    move-result v0

    if-ne v0, v6, :cond_e

    :cond_35
    iget-object v0, p0, Lcom/estrongs/android/pop/view/hn;->a:Lcom/estrongs/android/pop/view/FilemgrUpgrade;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->k(Lcom/estrongs/android/pop/view/FilemgrUpgrade;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f020117

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_e

    :cond_42
    if-ne v0, v4, :cond_51

    iget-object v0, p0, Lcom/estrongs/android/pop/view/hn;->a:Lcom/estrongs/android/pop/view/FilemgrUpgrade;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->k(Lcom/estrongs/android/pop/view/FilemgrUpgrade;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f02002d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_e

    :cond_51
    if-ne v0, v2, :cond_e

    iget-object v0, p0, Lcom/estrongs/android/pop/view/hn;->a:Lcom/estrongs/android/pop/view/FilemgrUpgrade;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->k(Lcom/estrongs/android/pop/view/FilemgrUpgrade;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f02002d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/hn;->a:Lcom/estrongs/android/pop/view/FilemgrUpgrade;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->h(Lcom/estrongs/android/pop/view/FilemgrUpgrade;)I

    move-result v0

    if-ne v0, v3, :cond_82

    iget-object v0, p0, Lcom/estrongs/android/pop/view/hn;->a:Lcom/estrongs/android/pop/view/FilemgrUpgrade;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->i(Lcom/estrongs/android/pop/view/FilemgrUpgrade;)I

    move-result v0

    if-ne v0, v2, :cond_e

    iget-object v0, p0, Lcom/estrongs/android/pop/view/hn;->a:Lcom/estrongs/android/pop/view/FilemgrUpgrade;

    invoke-static {v0, v4}, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->a(Lcom/estrongs/android/pop/view/FilemgrUpgrade;I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/hn;->a:Lcom/estrongs/android/pop/view/FilemgrUpgrade;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->l(Lcom/estrongs/android/pop/view/FilemgrUpgrade;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/estrongs/android/pop/view/hn;->a:Lcom/estrongs/android/pop/view/FilemgrUpgrade;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->a(Lcom/estrongs/android/pop/view/FilemgrUpgrade;)V

    goto :goto_e

    :cond_82
    iget-object v0, p0, Lcom/estrongs/android/pop/view/hn;->a:Lcom/estrongs/android/pop/view/FilemgrUpgrade;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->h(Lcom/estrongs/android/pop/view/FilemgrUpgrade;)I

    move-result v0

    if-ne v0, v5, :cond_e

    iget-object v0, p0, Lcom/estrongs/android/pop/view/hn;->a:Lcom/estrongs/android/pop/view/FilemgrUpgrade;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->j(Lcom/estrongs/android/pop/view/FilemgrUpgrade;)I

    move-result v0

    if-ne v0, v6, :cond_e

    iget-object v0, p0, Lcom/estrongs/android/pop/view/hn;->a:Lcom/estrongs/android/pop/view/FilemgrUpgrade;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->b(Lcom/estrongs/android/pop/view/FilemgrUpgrade;)Lcom/estrongs/android/util/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/util/v;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/app/a;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/hn;->a:Lcom/estrongs/android/pop/view/FilemgrUpgrade;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/hn;->a:Lcom/estrongs/android/pop/view/FilemgrUpgrade;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->finish()V

    goto/16 :goto_e
.end method
