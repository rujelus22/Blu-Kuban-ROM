.class Lcom/google/googlenav/ui/view/dialog/l;
.super Ljava/lang/Object;

# interfaces
.implements Lbd/k;


# instance fields
.field private final a:LaD/f;


# direct methods
.method public constructor <init>(LaD/f;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/l;->a:LaD/f;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)Lbd/aJ;
    .registers 4

    new-instance v1, Lcom/google/googlenav/ui/view/dialog/m;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/google/googlenav/ui/view/dialog/m;-><init>(Lcom/google/googlenav/ui/view/dialog/e;)V

    const v0, 0x7f0f005e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    invoke-static {v1, v0}, Lcom/google/googlenav/ui/view/dialog/m;->a(Lcom/google/googlenav/ui/view/dialog/m;Landroid/widget/TableLayout;)Landroid/widget/TableLayout;

    const v0, 0x7f0f0060

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/google/googlenav/ui/view/dialog/m;->a(Lcom/google/googlenav/ui/view/dialog/m;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v0, 0x7f0f0062

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/google/googlenav/ui/view/dialog/m;->b(Lcom/google/googlenav/ui/view/dialog/m;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v0, 0x7f0f0063

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/google/googlenav/ui/view/dialog/m;->c(Lcom/google/googlenav/ui/view/dialog/m;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v0, 0x7f0f0064

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/google/googlenav/ui/view/dialog/m;->d(Lcom/google/googlenav/ui/view/dialog/m;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v0, 0x7f0f0061

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/google/googlenav/ui/view/dialog/m;->a(Lcom/google/googlenav/ui/view/dialog/m;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    const v0, 0x7f0f005f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/google/googlenav/ui/view/dialog/m;->b(Lcom/google/googlenav/ui/view/dialog/m;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    return-object v1
.end method

.method public a(Lcom/google/googlenav/ui/p;Lbd/aJ;)V
    .registers 6

    check-cast p2, Lcom/google/googlenav/ui/view/dialog/m;

    invoke-static {p2}, Lcom/google/googlenav/ui/view/dialog/m;->a(Lcom/google/googlenav/ui/view/dialog/m;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/l;->a:LaD/f;

    invoke-virtual {v1}, LaD/f;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p2}, Lcom/google/googlenav/ui/view/dialog/m;->b(Lcom/google/googlenav/ui/view/dialog/m;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/l;->a:LaD/f;

    invoke-virtual {v1}, LaD/f;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p2}, Lcom/google/googlenav/ui/view/dialog/m;->c(Lcom/google/googlenav/ui/view/dialog/m;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/l;->a:LaD/f;

    invoke-virtual {v1}, LaD/f;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p2}, Lcom/google/googlenav/ui/view/dialog/m;->d(Lcom/google/googlenav/ui/view/dialog/m;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/l;->a:LaD/f;

    invoke-virtual {v1}, LaD/f;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p2}, Lcom/google/googlenav/ui/view/dialog/m;->e(Lcom/google/googlenav/ui/view/dialog/m;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/l;->a:LaD/f;

    invoke-virtual {v0}, LaD/f;->g()Lah/f;

    move-result-object v0

    check-cast v0, Lai/f;

    invoke-virtual {v0}, Lai/f;->h()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-static {p2}, Lcom/google/googlenav/ui/view/dialog/m;->f(Lcom/google/googlenav/ui/view/dialog/m;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/l;->a:LaD/f;

    invoke-virtual {v0}, LaD/f;->a()Z

    move-result v0

    if-eqz v0, :cond_7a

    const/4 v0, 0x0

    :goto_56
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/l;->a:LaD/f;

    invoke-virtual {v0}, LaD/f;->j()Z

    move-result v0

    if-eqz v0, :cond_7d

    invoke-static {p2}, Lcom/google/googlenav/ui/view/dialog/m;->c(Lcom/google/googlenav/ui/view/dialog/m;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/ui/bw;->e()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d00f6

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    invoke-static {p2}, Lcom/google/googlenav/ui/view/dialog/m;->g(Lcom/google/googlenav/ui/view/dialog/m;)Landroid/widget/TableLayout;

    move-result-object v0

    const v1, 0x7f020230

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->setBackgroundResource(I)V

    :goto_79
    return-void

    :cond_7a
    const/16 v0, 0x8

    goto :goto_56

    :cond_7d
    invoke-static {p2}, Lcom/google/googlenav/ui/view/dialog/m;->c(Lcom/google/googlenav/ui/view/dialog/m;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/ui/bw;->e()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d00f7

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    invoke-static {p2}, Lcom/google/googlenav/ui/view/dialog/m;->g(Lcom/google/googlenav/ui/view/dialog/m;)Landroid/widget/TableLayout;

    move-result-object v0

    const v1, 0x7f02022f

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->setBackgroundResource(I)V

    goto :goto_79
.end method

.method public b()I
    .registers 2

    const v0, 0x7f030013

    return v0
.end method

.method public c()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public d()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
