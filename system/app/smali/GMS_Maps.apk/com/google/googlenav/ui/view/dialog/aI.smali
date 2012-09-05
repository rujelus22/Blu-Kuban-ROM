.class public Lcom/google/googlenav/ui/view/dialog/aI;
.super Lcom/google/googlenav/ui/view/android/bs;


# instance fields
.field private final a:Lcom/google/googlenav/ui/view/dialog/aJ;

.field private final b:Lax/by;

.field private final c:Lcom/google/googlenav/ui/ai;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lax/by;Lcom/google/googlenav/ui/ai;Lcom/google/googlenav/ui/view/dialog/aJ;)V
    .registers 6

    const v0, 0x7f0d001c

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ui/view/android/bs;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/google/googlenav/ui/view/dialog/aI;->b:Lax/by;

    iput-object p3, p0, Lcom/google/googlenav/ui/view/dialog/aI;->c:Lcom/google/googlenav/ui/ai;

    iput-object p4, p0, Lcom/google/googlenav/ui/view/dialog/aI;->a:Lcom/google/googlenav/ui/view/dialog/aJ;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/dialog/aI;->setCancelable(Z)V

    return-void
.end method

.method private a(Landroid/view/View;)V
    .registers 4

    const/16 v0, 0x1b

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/view/dialog/aI;->setTitle(Ljava/lang/CharSequence;)V

    :goto_f
    return-void

    :cond_10
    const v0, 0x7f0f00d2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_f
.end method

.method private a(Lax/by;Lcom/google/googlenav/ui/ai;)V
    .registers 6

    const v0, 0x7f030152

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/dialog/aI;->setContentView(I)V

    const v0, 0x7f0f03ac

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/dialog/aI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/dialog/aI;->a(Landroid/view/View;)V

    const v0, 0x7f0f01de

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/dialog/aI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/dialog/aI;->c(Landroid/view/View;)V

    const v0, 0x7f0f000f

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/dialog/aI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/dialog/aI;->b(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aI;->a:Lcom/google/googlenav/ui/view/dialog/aJ;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/aI;->d:Landroid/widget/Button;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/aI;->e:Landroid/widget/Button;

    invoke-interface {v0, v1, v2}, Lcom/google/googlenav/ui/view/dialog/aJ;->a(Landroid/widget/Button;Landroid/widget/Button;)V

    return-void
.end method

.method private b(Landroid/view/View;)V
    .registers 5

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0f0011

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aI;->d:Landroid/widget/Button;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aI;->d:Landroid/widget/Button;

    const/16 v1, 0x516

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aI;->d:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    const v0, 0x7f0f0012

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aI;->e:Landroid/widget/Button;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aI;->e:Landroid/widget/Button;

    const/16 v1, 0x291

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aI;->e:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method private c(Landroid/view/View;)V
    .registers 9

    const v0, 0x7f0f01df

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0f0062

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0f01d9

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, LaX/j;

    iget-object v4, p0, Lcom/google/googlenav/ui/view/dialog/aI;->b:Lax/by;

    invoke-virtual {v4}, Lax/by;->a()Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, LaX/j;-><init>(Ljava/lang/Long;IZ)V

    iget-object v4, p0, Lcom/google/googlenav/ui/view/dialog/aI;->c:Lcom/google/googlenav/ui/ai;

    invoke-interface {v4, v3}, Lcom/google/googlenav/ui/ai;->a(Lcom/google/googlenav/ui/aj;)Lah/f;

    move-result-object v3

    check-cast v3, Lai/f;

    if-eqz v3, :cond_3c

    invoke-virtual {v3}, Lai/f;->h()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    :cond_3c
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aI;->b:Lax/by;

    invoke-virtual {v0}, Lax/by;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aI;->b:Lax/by;

    invoke-virtual {v0}, Lax/by;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aI;->e:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/aI;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f020171

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    :cond_10
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aI;->b:Lax/by;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/aI;->c:Lcom/google/googlenav/ui/ai;

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/view/dialog/aI;->a(Lax/by;Lcom/google/googlenav/ui/ai;)V

    return-void
.end method
