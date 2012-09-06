.class Lcom/google/googlenav/ui/view/dialog/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaQ/H;


# instance fields
.field private final a:Lam/f;


# direct methods
.method public constructor <init>(Lam/f;)V
    .registers 2
    .parameter

    .prologue
    .line 452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 453
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/A;->a:Lam/f;

    .line 454
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)LaQ/bE;
    .registers 4
    .parameter

    .prologue
    .line 473
    new-instance v1, Lcom/google/googlenav/ui/view/dialog/B;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/google/googlenav/ui/view/dialog/B;-><init>(Lcom/google/googlenav/ui/view/dialog/t;)V

    .line 474
    const v0, 0x7f10008c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    invoke-static {v1, v0}, Lcom/google/googlenav/ui/view/dialog/B;->a(Lcom/google/googlenav/ui/view/dialog/B;Landroid/widget/TableLayout;)Landroid/widget/TableLayout;

    .line 475
    const v0, 0x7f10008e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/google/googlenav/ui/view/dialog/B;->a(Lcom/google/googlenav/ui/view/dialog/B;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 476
    const v0, 0x7f100090

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/google/googlenav/ui/view/dialog/B;->b(Lcom/google/googlenav/ui/view/dialog/B;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 477
    const v0, 0x7f100091

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/google/googlenav/ui/view/dialog/B;->c(Lcom/google/googlenav/ui/view/dialog/B;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 478
    const v0, 0x7f100092

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/google/googlenav/ui/view/dialog/B;->d(Lcom/google/googlenav/ui/view/dialog/B;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 479
    const v0, 0x7f10008f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/google/googlenav/ui/view/dialog/B;->a(Lcom/google/googlenav/ui/view/dialog/B;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 480
    const v0, 0x7f10008d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/google/googlenav/ui/view/dialog/B;->b(Lcom/google/googlenav/ui/view/dialog/B;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 481
    return-object v1
.end method

.method public a(Lcom/google/googlenav/ui/g;LaQ/bE;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 486
    check-cast p2, Lcom/google/googlenav/ui/view/dialog/B;

    .line 488
    invoke-static {p2}, Lcom/google/googlenav/ui/view/dialog/B;->a(Lcom/google/googlenav/ui/view/dialog/B;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/A;->a:Lam/f;

    invoke-virtual {v1}, Lam/f;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 489
    invoke-static {p2}, Lcom/google/googlenav/ui/view/dialog/B;->b(Lcom/google/googlenav/ui/view/dialog/B;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/A;->a:Lam/f;

    invoke-virtual {v1}, Lam/f;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 490
    invoke-static {p2}, Lcom/google/googlenav/ui/view/dialog/B;->c(Lcom/google/googlenav/ui/view/dialog/B;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/A;->a:Lam/f;

    invoke-virtual {v1}, Lam/f;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 491
    invoke-static {p2}, Lcom/google/googlenav/ui/view/dialog/B;->d(Lcom/google/googlenav/ui/view/dialog/B;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/A;->a:Lam/f;

    invoke-virtual {v1}, Lam/f;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 492
    invoke-static {p2}, Lcom/google/googlenav/ui/view/dialog/B;->e(Lcom/google/googlenav/ui/view/dialog/B;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/A;->a:Lam/f;

    invoke-virtual {v0}, Lam/f;->g()LS/f;

    move-result-object v0

    check-cast v0, LT/f;

    invoke-virtual {v0}, LT/f;->h()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 493
    invoke-static {p2}, Lcom/google/googlenav/ui/view/dialog/B;->f(Lcom/google/googlenav/ui/view/dialog/B;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/A;->a:Lam/f;

    invoke-virtual {v0}, Lam/f;->a()Z

    move-result v0

    if-eqz v0, :cond_7a

    const/4 v0, 0x0

    :goto_56
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 497
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/A;->a:Lam/f;

    invoke-virtual {v0}, Lam/f;->j()Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 498
    invoke-static {p2}, Lcom/google/googlenav/ui/view/dialog/B;->c(Lcom/google/googlenav/ui/view/dialog/B;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/ui/bn;->e()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f010f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 500
    invoke-static {p2}, Lcom/google/googlenav/ui/view/dialog/B;->g(Lcom/google/googlenav/ui/view/dialog/B;)Landroid/widget/TableLayout;

    move-result-object v0

    const v1, 0x7f020286

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->setBackgroundResource(I)V

    .line 506
    :goto_79
    return-void

    .line 493
    :cond_7a
    const/16 v0, 0x8

    goto :goto_56

    .line 502
    :cond_7d
    invoke-static {p2}, Lcom/google/googlenav/ui/view/dialog/B;->c(Lcom/google/googlenav/ui/view/dialog/B;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/ui/bn;->e()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0110

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 504
    invoke-static {p2}, Lcom/google/googlenav/ui/view/dialog/B;->g(Lcom/google/googlenav/ui/view/dialog/B;)Landroid/widget/TableLayout;

    move-result-object v0

    const v1, 0x7f020285

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->setBackgroundResource(I)V

    goto :goto_79
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 463
    const/4 v0, 0x0

    return v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 468
    const/4 v0, 0x0

    return v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 458
    const v0, 0x7f04001c

    return v0
.end method
