.class public Lcom/google/googlenav/ui/wizard/ew;
.super Lcom/google/googlenav/ui/view/android/ap;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/eo;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/eo;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/ew;->a:Lcom/google/googlenav/ui/wizard/eo;

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v0

    if-eqz v0, :cond_13

    const v0, 0x7f0d001c

    :goto_f
    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ui/view/android/ap;-><init>(Lcom/google/googlenav/ui/p;I)V

    return-void

    :cond_13
    const v0, 0x7f0d001a

    goto :goto_f
.end method

.method private a(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ew;->a:Lcom/google/googlenav/ui/wizard/eo;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/eo;->c(Lcom/google/googlenav/ui/wizard/eo;)Lcom/google/googlenav/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->at()Lcom/google/googlenav/av;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/av;->b()Z

    move-result v1

    if-eqz v1, :cond_99

    invoke-virtual {v0}, Lcom/google/googlenav/av;->c()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/googlenav/av;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/aw;

    const v1, 0x7f0f01d3

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/google/googlenav/aw;->a()Lah/f;

    move-result-object v0

    check-cast v0, Lai/f;

    invoke-virtual {v0}, Lai/f;->h()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const v0, 0x7f0f01d4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ew;->a:Lcom/google/googlenav/ui/wizard/eo;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/eo;->c(Lcom/google/googlenav/ui/wizard/eo;)Lcom/google/googlenav/ah;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ah;->an()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0f01d6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x2d1

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v0

    if-nez v0, :cond_7f

    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v0

    if-nez v0, :cond_7f

    const v0, 0x7f0f01d5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x108009a

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_7f
    const v0, 0x7f0f01d7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const/16 v1, 0x2d4

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/google/googlenav/ui/wizard/ex;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/ex;-><init>(Lcom/google/googlenav/ui/wizard/ew;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_99
    return-void
.end method


# virtual methods
.method public N_()V
    .registers 2

    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/ew;->requestWindowFeature(I)Z

    :cond_a
    return-void
.end method

.method protected c()Landroid/view/View;
    .registers 4

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ew;->a:Lcom/google/googlenav/ui/wizard/eo;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/ew;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    invoke-static {v1, v0}, Lcom/google/googlenav/ui/wizard/eo;->a(Lcom/google/googlenav/ui/wizard/eo;Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ew;->a:Lcom/google/googlenav/ui/wizard/eo;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/eo;->g(Lcom/google/googlenav/ui/wizard/eo;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03007a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/ew;->a(Landroid/view/View;)V

    return-object v0
.end method

.method public g()V
    .registers 3

    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/ew;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x2d4

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    :goto_13
    return-void

    :cond_14
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/ew;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f020171

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    goto :goto_13
.end method

.method public h()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/ew;->o()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/ew;->a(Landroid/view/View;)V

    return-void
.end method
