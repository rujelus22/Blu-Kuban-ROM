.class public Lcom/google/googlenav/ui/view/android/bU;
.super Lcom/google/googlenav/ui/view/android/ay;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/p;Lbb/f;)V
    .registers 4

    const v0, 0x7f0d001c

    invoke-direct {p0, p1, v0, p2}, Lcom/google/googlenav/ui/view/android/ay;-><init>(Lcom/google/googlenav/ui/p;ILbb/f;)V

    return-void
.end method

.method private static a(Landroid/view/View;II)V
    .registers 5

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public N_()V
    .registers 2

    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/bU;->requestWindowFeature(I)Z

    :cond_a
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Lcom/google/googlenav/ui/p;)V
    .registers 16

    const v10, 0x7f0f0333

    const v9, 0x7f0f0332

    const/16 v5, 0x352

    const/4 v1, 0x1

    const/4 v2, 0x0

    const v0, 0x7f0f02ce

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v0, 0x7f0f032e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    const v0, 0x7f0f0334

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v0

    if-nez v0, :cond_ee

    invoke-static {v5}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3e
    const v0, 0x7f0f032b

    const/16 v5, 0x33a

    invoke-static {p1, v0, v5}, Lcom/google/googlenav/ui/view/android/bU;->a(Landroid/view/View;II)V

    const v0, 0x7f0f032c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v5, 0x33e

    invoke-static {v5}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v5, Lcom/google/googlenav/ui/view/android/bV;

    invoke-direct {v5, p0, p3}, Lcom/google/googlenav/ui/view/android/bV;-><init>(Lcom/google/googlenav/ui/view/android/bU;Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0f032d

    const/16 v5, 0x33b

    invoke-static {p1, v0, v5}, Lcom/google/googlenav/ui/view/android/bU;->a(Landroid/view/View;II)V

    const/16 v0, 0x33d

    invoke-static {p1, v9, v0}, Lcom/google/googlenav/ui/view/android/bU;->a(Landroid/view/View;II)V

    const/16 v0, 0x336

    invoke-static {p1, v10, v0}, Lcom/google/googlenav/ui/view/android/bU;->a(Landroid/view/View;II)V

    const v0, 0x7f0f0330

    const/16 v5, 0x33c

    invoke-static {p1, v0, v5}, Lcom/google/googlenav/ui/view/android/bU;->a(Landroid/view/View;II)V

    const v0, 0x7f0f0331

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v5, 0x339

    invoke-static {v5}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v5

    new-array v9, v1, [Ljava/lang/String;

    const-string v10, "google.com/places"

    aput-object v10, v9, v2

    invoke-static {v5, v9}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0f0334

    const/16 v5, 0x337

    invoke-static {p1, v0, v5}, Lcom/google/googlenav/ui/view/android/bU;->a(Landroid/view/View;II)V

    if-eqz p2, :cond_ab

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_ab
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_f7

    move v0, v1

    :goto_ba
    invoke-virtual {v6, v0}, Landroid/widget/Button;->setEnabled(Z)V

    new-instance v0, Lcom/google/googlenav/ui/view/android/bW;

    invoke-direct {v0, p0, v3, v6}, Lcom/google/googlenav/ui/view/android/bW;-><init>(Lcom/google/googlenav/ui/view/android/bU;Landroid/widget/TextView;Landroid/widget/Button;)V

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v0, 0x7f0f032a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const v0, 0x7f0f032f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    new-instance v0, Lcom/google/googlenav/ui/view/android/bX;

    move-object v1, p0

    move-object v2, p4

    invoke-direct/range {v0 .. v9}, Lcom/google/googlenav/ui/view/android/bX;-><init>(Lcom/google/googlenav/ui/view/android/bU;Lcom/google/googlenav/ui/p;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/view/View;)V

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/google/googlenav/ui/view/android/bY;

    invoke-direct {v0, p0, p4}, Lcom/google/googlenav/ui/view/android/bY;-><init>(Lcom/google/googlenav/ui/view/android/bU;Lcom/google/googlenav/ui/p;)V

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/google/googlenav/ui/view/android/bZ;

    invoke-direct {v0, p0, p4, v3}, Lcom/google/googlenav/ui/view/android/bZ;-><init>(Lcom/google/googlenav/ui/view/android/bU;Lcom/google/googlenav/ui/p;Landroid/widget/TextView;)V

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_ee
    invoke-static {v5}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/bU;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_3e

    :cond_f7
    move v0, v2

    goto :goto_ba
.end method

.method protected c()Landroid/view/View;
    .registers 5

    sget-object v0, Lcom/google/googlenav/ui/view/android/bU;->e:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-virtual {v0}, Lcom/google/googlenav/android/BaseMapsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030121

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bU;->k()Lbb/u;

    move-result-object v1

    iget-object v1, v1, Lbb/u;->h:Ljava/lang/String;

    sget-object v2, Lcom/google/googlenav/ui/view/android/bU;->e:Lcom/google/googlenav/android/BaseMapsActivity;

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bU;->f:Lcom/google/googlenav/ui/p;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/googlenav/ui/view/android/bU;->a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Lcom/google/googlenav/ui/p;)V

    return-object v0
.end method

.method protected g()V
    .registers 3

    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bU;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f020171

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    :cond_10
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bU;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method

.method public synthetic i()Lbb/f;
    .registers 2

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bU;->k()Lbb/u;

    move-result-object v0

    return-object v0
.end method

.method public k()Lbb/u;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bU;->a:Lbb/f;

    check-cast v0, Lbb/u;

    return-object v0
.end method
