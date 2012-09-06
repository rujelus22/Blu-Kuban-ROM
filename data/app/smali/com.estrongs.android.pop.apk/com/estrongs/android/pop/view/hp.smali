.class Lcom/estrongs/android/pop/view/hp;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/FilemgrUpgrade;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/FilemgrUpgrade;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/hp;->a:Lcom/estrongs/android/pop/view/FilemgrUpgrade;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/estrongs/android/pop/view/hp;->a:Lcom/estrongs/android/pop/view/FilemgrUpgrade;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->g(Lcom/estrongs/android/pop/view/FilemgrUpgrade;)Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v1, p0, Lcom/estrongs/android/pop/view/hp;->a:Lcom/estrongs/android/pop/view/FilemgrUpgrade;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/hp;->a:Lcom/estrongs/android/pop/view/FilemgrUpgrade;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->n(Lcom/estrongs/android/pop/view/FilemgrUpgrade;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const/4 v0, 0x0

    :goto_14
    invoke-static {v1, v0}, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->a(Lcom/estrongs/android/pop/view/FilemgrUpgrade;Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/hp;->a:Lcom/estrongs/android/pop/view/FilemgrUpgrade;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->n(Lcom/estrongs/android/pop/view/FilemgrUpgrade;)Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/estrongs/android/pop/view/hp;->a:Lcom/estrongs/android/pop/view/FilemgrUpgrade;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->o(Lcom/estrongs/android/pop/view/FilemgrUpgrade;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f02003c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_8

    :cond_2c
    const/4 v0, 0x1

    goto :goto_14

    :cond_2e
    iget-object v0, p0, Lcom/estrongs/android/pop/view/hp;->a:Lcom/estrongs/android/pop/view/FilemgrUpgrade;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->o(Lcom/estrongs/android/pop/view/FilemgrUpgrade;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f02003b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_8
.end method
