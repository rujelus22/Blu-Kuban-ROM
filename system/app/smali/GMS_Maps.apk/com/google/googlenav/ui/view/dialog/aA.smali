.class public Lcom/google/googlenav/ui/view/dialog/aA;
.super Lcom/google/googlenav/ui/view/dialog/at;


# instance fields
.field private final b:I

.field private final c:I

.field private final d:I

.field private final k:I

.field private final l:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIIILjava/lang/String;Lcom/google/googlenav/ui/wizard/hp;)V
    .registers 7

    invoke-direct {p0, p6}, Lcom/google/googlenav/ui/view/dialog/at;-><init>(Lcom/google/googlenav/ui/wizard/hp;)V

    iput p1, p0, Lcom/google/googlenav/ui/view/dialog/aA;->b:I

    iput p2, p0, Lcom/google/googlenav/ui/view/dialog/aA;->c:I

    iput p3, p0, Lcom/google/googlenav/ui/view/dialog/aA;->d:I

    iput p4, p0, Lcom/google/googlenav/ui/view/dialog/aA;->k:I

    iput-object p5, p0, Lcom/google/googlenav/ui/view/dialog/aA;->l:Ljava/lang/String;

    return-void
.end method

.method private a(Landroid/view/View;II)Z
    .registers 12

    const/16 v7, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    const v0, 0x7f0f037a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0f037b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/16 v4, 0x459

    invoke-static {v4}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x45a

    invoke-static {v5}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p2, v4, v5}, Lcom/google/googlenav/ui/wizard/hp;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Las/b;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_58

    move v4, v3

    :goto_2d
    if-eqz v4, :cond_5a

    sget-object v6, Lcom/google/googlenav/ui/bg;->aP:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v5, v6}, Lcom/google/googlenav/ui/bw;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)V

    :goto_34
    const/16 v0, 0x456

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x457

    invoke-static {v5}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p3, v0, v5}, Lcom/google/googlenav/ui/wizard/hp;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5e

    move v0, v3

    :goto_4b
    if-eqz v0, :cond_60

    sget-object v6, Lcom/google/googlenav/ui/bg;->aP:Lcom/google/googlenav/ui/bg;

    invoke-static {v1, v5, v6}, Lcom/google/googlenav/ui/bw;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)V

    :goto_52
    if-nez v4, :cond_56

    if-eqz v0, :cond_64

    :cond_56
    move v0, v3

    :goto_57
    return v0

    :cond_58
    move v4, v2

    goto :goto_2d

    :cond_5a
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_34

    :cond_5e
    move v0, v2

    goto :goto_4b

    :cond_60
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_52

    :cond_64
    move v0, v2

    goto :goto_57
.end method

.method private h()Ljava/lang/String;
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/google/googlenav/ui/view/dialog/aA;->d:I

    iget v3, p0, Lcom/google/googlenav/ui/view/dialog/aA;->k:I

    add-int/2addr v0, v3

    if-lez v0, :cond_27

    move v0, v1

    :goto_a
    iget v3, p0, Lcom/google/googlenav/ui/view/dialog/aA;->b:I

    iget v4, p0, Lcom/google/googlenav/ui/view/dialog/aA;->c:I

    add-int/2addr v3, v4

    if-lez v3, :cond_29

    move v3, v1

    :goto_12
    if-eqz v3, :cond_2e

    if-eqz v0, :cond_2b

    const/16 v0, 0x46e

    :goto_18
    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/String;

    iget-object v3, p0, Lcom/google/googlenav/ui/view/dialog/aA;->l:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_26
    return-object v0

    :cond_27
    move v0, v2

    goto :goto_a

    :cond_29
    move v3, v2

    goto :goto_12

    :cond_2b
    const/16 v0, 0x468

    goto :goto_18

    :cond_2e
    if-eqz v0, :cond_37

    const/16 v0, 0x46b

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_26

    :cond_37
    const/4 v0, 0x0

    goto :goto_26
.end method


# virtual methods
.method protected c()Landroid/view/View;
    .registers 12

    const/16 v10, 0x8

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/aA;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03014b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    const v0, 0x7f0f037c

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0f0390

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0f0391

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const v2, 0x7f0f0392

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0f0393

    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const v3, 0x7f0f0394

    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0f0395

    invoke-virtual {v5, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const/16 v8, 0x46f

    invoke-static {v8}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v5, v8}, Lcom/google/googlenav/ui/view/dialog/aA;->a(Landroid/view/View;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/aA;->h()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_d3

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_5b
    iget v0, p0, Lcom/google/googlenav/ui/view/dialog/aA;->b:I

    iget v8, p0, Lcom/google/googlenav/ui/view/dialog/aA;->c:I

    invoke-direct {p0, v6, v0, v8}, Lcom/google/googlenav/ui/view/dialog/aA;->a(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_de

    const/16 v0, 0x46d

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v6, Lcom/google/googlenav/ui/bg;->aP:Lcom/google/googlenav/ui/bg;

    invoke-static {v1, v0, v6}, Lcom/google/googlenav/ui/bw;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)V

    :goto_70
    iget v0, p0, Lcom/google/googlenav/ui/view/dialog/aA;->d:I

    iget v1, p0, Lcom/google/googlenav/ui/view/dialog/aA;->k:I

    invoke-direct {p0, v7, v0, v1}, Lcom/google/googlenav/ui/view/dialog/aA;->a(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_e5

    const/16 v0, 0x46c

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/bg;->aP:Lcom/google/googlenav/ui/bg;

    invoke-static {v2, v0, v1}, Lcom/google/googlenav/ui/bw;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)V

    :goto_85
    const/16 v0, 0x469

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v6, p0, Lcom/google/googlenav/ui/view/dialog/aA;->l:Ljava/lang/String;

    aput-object v6, v1, v2

    invoke-static {v0, v1}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/bg;->aR:Lcom/google/googlenav/ui/bg;

    invoke-static {v3, v0, v1}, Lcom/google/googlenav/ui/bw;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)V

    const/16 v0, 0x470

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/bg;->aR:Lcom/google/googlenav/ui/bg;

    invoke-static {v4, v0, v1}, Lcom/google/googlenav/ui/bw;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aA;->a:Lcom/google/googlenav/ui/wizard/hp;

    const/16 v1, 0x46a

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "http://www.google.com/local"

    invoke-virtual {v0, v5, v1, v2}, Lcom/google/googlenav/ui/wizard/hp;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f0f0396

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const/16 v1, 0x467

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/google/googlenav/ui/view/dialog/aB;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/dialog/aB;-><init>(Lcom/google/googlenav/ui/view/dialog/aA;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v5

    :cond_d3
    invoke-static {v8}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    sget-object v9, Lcom/google/googlenav/ui/bg;->aR:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v8, v9}, Lcom/google/googlenav/ui/bw;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)V

    goto/16 :goto_5b

    :cond_de
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_70

    :cond_e5
    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_85
.end method
