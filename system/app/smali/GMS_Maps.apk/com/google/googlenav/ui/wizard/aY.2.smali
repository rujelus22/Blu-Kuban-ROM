.class public Lcom/google/googlenav/ui/wizard/aY;
.super Lcom/google/googlenav/ui/view/android/ap;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/aT;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/aT;Lcom/google/googlenav/ui/p;)V
    .registers 4

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/aY;->a:Lcom/google/googlenav/ui/wizard/aT;

    const v0, 0x7f0d001c

    invoke-direct {p0, p2, v0}, Lcom/google/googlenav/ui/view/android/ap;-><init>(Lcom/google/googlenav/ui/p;I)V

    return-void
.end method


# virtual methods
.method public N_()V
    .registers 2

    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/aY;->requestWindowFeature(I)Z

    :cond_14
    return-void
.end method

.method protected c()Landroid/view/View;
    .registers 5

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/aY;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f03001c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v0

    if-nez v0, :cond_30

    const v0, 0x7f0f00d2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/aY;->a:Lcom/google/googlenav/ui/wizard/aT;

    iget-object v2, v2, Lcom/google/googlenav/ui/wizard/aT;->a:Lcom/google/googlenav/ui/wizard/aZ;

    iget-object v2, v2, Lcom/google/googlenav/ui/wizard/aZ;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_30
    const v0, 0x7f0f008c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/aY;->a:Lcom/google/googlenav/ui/wizard/aT;

    iget-object v2, v2, Lcom/google/googlenav/ui/wizard/aT;->a:Lcom/google/googlenav/ui/wizard/aZ;

    iget-object v2, v2, Lcom/google/googlenav/ui/wizard/aZ;->b:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/aY;->a:Lcom/google/googlenav/ui/wizard/aT;

    iget-object v2, v2, Lcom/google/googlenav/ui/wizard/aT;->a:Lcom/google/googlenav/ui/wizard/aZ;

    iget-boolean v2, v2, Lcom/google/googlenav/ui/wizard/aZ;->g:Z

    if-eqz v2, :cond_5e

    invoke-static {v0, v3}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    :goto_4d
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aY;->a:Lcom/google/googlenav/ui/wizard/aT;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/wizard/aT;->a(Lcom/google/googlenav/ui/wizard/aT;Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aY;->a:Lcom/google/googlenav/ui/wizard/aT;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/wizard/aT;->b(Lcom/google/googlenav/ui/wizard/aT;Landroid/view/View;)V

    return-object v1

    :cond_5e
    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_4d
.end method

.method public g()V
    .registers 3

    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/aY;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/aY;->a:Lcom/google/googlenav/ui/wizard/aT;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/aT;->a:Lcom/google/googlenav/ui/wizard/aZ;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/aZ;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    :goto_13
    return-void

    :cond_14
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/aY;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f020171

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    goto :goto_13
.end method
