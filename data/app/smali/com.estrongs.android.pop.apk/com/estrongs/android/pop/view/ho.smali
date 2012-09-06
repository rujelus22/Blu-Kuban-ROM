.class Lcom/estrongs/android/pop/view/ho;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/FilemgrUpgrade;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/FilemgrUpgrade;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/ho;->a:Lcom/estrongs/android/pop/view/FilemgrUpgrade;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7

    const v3, 0x7f02002d

    const/4 v1, 0x3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ho;->a:Lcom/estrongs/android/pop/view/FilemgrUpgrade;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->g(Lcom/estrongs/android/pop/view/FilemgrUpgrade;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_d
    :goto_d
    return v2

    :cond_e
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ho;->a:Lcom/estrongs/android/pop/view/FilemgrUpgrade;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->m(Lcom/estrongs/android/pop/view/FilemgrUpgrade;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f020118

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_d

    :cond_21
    if-ne v0, v1, :cond_2d

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ho;->a:Lcom/estrongs/android/pop/view/FilemgrUpgrade;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->m(Lcom/estrongs/android/pop/view/FilemgrUpgrade;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_d

    :cond_2d
    if-ne v0, v2, :cond_d

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ho;->a:Lcom/estrongs/android/pop/view/FilemgrUpgrade;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->m(Lcom/estrongs/android/pop/view/FilemgrUpgrade;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ho;->a:Lcom/estrongs/android/pop/view/FilemgrUpgrade;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->h(Lcom/estrongs/android/pop/view/FilemgrUpgrade;)I

    move-result v0

    if-ne v0, v1, :cond_51

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ho;->a:Lcom/estrongs/android/pop/view/FilemgrUpgrade;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->b(Lcom/estrongs/android/pop/view/FilemgrUpgrade;)Lcom/estrongs/android/util/v;

    move-result-object v0

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ho;->a:Lcom/estrongs/android/pop/view/FilemgrUpgrade;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->b(Lcom/estrongs/android/pop/view/FilemgrUpgrade;)Lcom/estrongs/android/util/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/util/v;->b()V

    :cond_51
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ho;->a:Lcom/estrongs/android/pop/view/FilemgrUpgrade;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->finish()V

    goto :goto_d
.end method
