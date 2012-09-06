.class Lcom/estrongs/android/pop/view/gr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/ff;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/ff;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/gr;->a:Lcom/estrongs/android/pop/view/ff;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    const v5, 0x7f020008

    const v4, 0x7f020007

    iget-object v0, p0, Lcom/estrongs/android/pop/view/gr;->a:Lcom/estrongs/android/pop/view/ff;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/ff;->i(Lcom/estrongs/android/pop/view/ff;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f07007c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/gr;->a:Lcom/estrongs/android/pop/view/ff;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/ff;->i(Lcom/estrongs/android/pop/view/ff;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f07007b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/estrongs/android/pop/view/gr;->a:Lcom/estrongs/android/pop/view/ff;

    invoke-static {v2}, Lcom/estrongs/android/pop/view/ff;->f(Lcom/estrongs/android/pop/view/ff;)Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    const v1, 0x7f090093

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/gr;->a:Lcom/estrongs/android/pop/view/ff;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/ff;->i(Lcom/estrongs/android/pop/view/ff;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :goto_3e
    return-void

    :cond_3f
    iget-object v2, p0, Lcom/estrongs/android/pop/view/gr;->a:Lcom/estrongs/android/pop/view/ff;

    invoke-static {v2}, Lcom/estrongs/android/pop/view/ff;->a(Lcom/estrongs/android/pop/view/ff;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/pop/a/d;->G(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12c

    iget-object v2, p0, Lcom/estrongs/android/pop/view/gr;->a:Lcom/estrongs/android/pop/view/ff;

    invoke-static {v2}, Lcom/estrongs/android/pop/view/ff;->a(Lcom/estrongs/android/pop/view/ff;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/pop/a/d;->J(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c5

    const v2, 0x7f0900d4

    iget-object v3, p0, Lcom/estrongs/android/pop/view/gr;->a:Lcom/estrongs/android/pop/view/ff;

    invoke-static {v3}, Lcom/estrongs/android/pop/view/ff;->a(Lcom/estrongs/android/pop/view/ff;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/android/pop/a/d;->v(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_72

    iget-object v3, p0, Lcom/estrongs/android/pop/view/gr;->a:Lcom/estrongs/android/pop/view/ff;

    invoke-static {v3}, Lcom/estrongs/android/pop/view/ff;->a(Lcom/estrongs/android/pop/view/ff;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/android/pop/a/d;->u(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_99

    :cond_72
    const v2, 0x7f0900d5

    :cond_75
    :goto_75
    iget-object v3, p0, Lcom/estrongs/android/pop/view/gr;->a:Lcom/estrongs/android/pop/view/ff;

    invoke-static {v3}, Lcom/estrongs/android/pop/view/ff;->h(Lcom/estrongs/android/pop/view/ff;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_83
    iget-object v3, p0, Lcom/estrongs/android/pop/view/gr;->a:Lcom/estrongs/android/pop/view/ff;

    invoke-static {v3}, Lcom/estrongs/android/pop/view/ff;->a(Lcom/estrongs/android/pop/view/ff;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/android/pop/a/d;->r(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d0

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_92
    :goto_92
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    goto :goto_3e

    :cond_99
    iget-object v3, p0, Lcom/estrongs/android/pop/view/gr;->a:Lcom/estrongs/android/pop/view/ff;

    invoke-static {v3}, Lcom/estrongs/android/pop/view/ff;->a(Lcom/estrongs/android/pop/view/ff;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/android/pop/a/d;->D(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b5

    iget-object v2, p0, Lcom/estrongs/android/pop/view/gr;->a:Lcom/estrongs/android/pop/view/ff;

    invoke-static {v2}, Lcom/estrongs/android/pop/view/ff;->j(Lcom/estrongs/android/pop/view/ff;)Z

    move-result v2

    if-eqz v2, :cond_b1

    const v2, 0x7f09012a

    goto :goto_75

    :cond_b1
    const v2, 0x7f0900d6

    goto :goto_75

    :cond_b5
    iget-object v3, p0, Lcom/estrongs/android/pop/view/gr;->a:Lcom/estrongs/android/pop/view/ff;

    invoke-static {v3}, Lcom/estrongs/android/pop/view/ff;->a(Lcom/estrongs/android/pop/view/ff;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/android/pop/a/d;->C(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_75

    const v2, 0x7f0901c6

    goto :goto_75

    :cond_c5
    iget-object v2, p0, Lcom/estrongs/android/pop/view/gr;->a:Lcom/estrongs/android/pop/view/ff;

    invoke-static {v2}, Lcom/estrongs/android/pop/view/ff;->a(Lcom/estrongs/android/pop/view/ff;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/pop/a/d;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_83

    :cond_d0
    iget-object v3, p0, Lcom/estrongs/android/pop/view/gr;->a:Lcom/estrongs/android/pop/view/ff;

    invoke-static {v3}, Lcom/estrongs/android/pop/view/ff;->a(Lcom/estrongs/android/pop/view/ff;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/android/pop/a/d;->v(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_100

    iget-object v3, p0, Lcom/estrongs/android/pop/view/gr;->a:Lcom/estrongs/android/pop/view/ff;

    invoke-static {v3}, Lcom/estrongs/android/pop/view/ff;->a(Lcom/estrongs/android/pop/view/ff;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/android/pop/a/d;->s(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_100

    iget-object v3, p0, Lcom/estrongs/android/pop/view/gr;->a:Lcom/estrongs/android/pop/view/ff;

    invoke-static {v3}, Lcom/estrongs/android/pop/view/ff;->a(Lcom/estrongs/android/pop/view/ff;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/android/pop/a/d;->t(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_100

    iget-object v3, p0, Lcom/estrongs/android/pop/view/gr;->a:Lcom/estrongs/android/pop/view/ff;

    invoke-static {v3}, Lcom/estrongs/android/pop/view/ff;->a(Lcom/estrongs/android/pop/view/ff;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/android/pop/a/d;->u(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_107

    :cond_100
    const v3, 0x7f020006

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_92

    :cond_107
    iget-object v3, p0, Lcom/estrongs/android/pop/view/gr;->a:Lcom/estrongs/android/pop/view/ff;

    invoke-static {v3}, Lcom/estrongs/android/pop/view/ff;->a(Lcom/estrongs/android/pop/view/ff;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/android/pop/a/d;->D(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11b

    const v3, 0x7f020004

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_92

    :cond_11b
    iget-object v3, p0, Lcom/estrongs/android/pop/view/gr;->a:Lcom/estrongs/android/pop/view/ff;

    invoke-static {v3}, Lcom/estrongs/android/pop/view/ff;->a(Lcom/estrongs/android/pop/view/ff;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/android/pop/a/d;->C(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_92

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_92

    :cond_12c
    iget-object v2, p0, Lcom/estrongs/android/pop/view/gr;->a:Lcom/estrongs/android/pop/view/ff;

    invoke-static {v2}, Lcom/estrongs/android/pop/view/ff;->a(Lcom/estrongs/android/pop/view/ff;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/sdcard/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14f

    iget-object v3, p0, Lcom/estrongs/android/pop/view/gr;->a:Lcom/estrongs/android/pop/view/ff;

    invoke-static {v3}, Lcom/estrongs/android/pop/view/ff;->h(Lcom/estrongs/android/pop/view/ff;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/estrongs/android/pop/c;->I()Z

    move-result v3

    if-eqz v3, :cond_14f

    iget-object v3, p0, Lcom/estrongs/android/pop/view/gr;->a:Lcom/estrongs/android/pop/view/ff;

    invoke-static {v3, v2}, Lcom/estrongs/android/pop/view/ff;->b(Lcom/estrongs/android/pop/view/ff;Ljava/lang/String;)V

    :cond_14f
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_92
.end method
