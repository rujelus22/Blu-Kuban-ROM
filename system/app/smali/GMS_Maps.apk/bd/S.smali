.class public Lbd/S;
.super Ljava/lang/Object;

# interfaces
.implements Lbd/k;


# instance fields
.field private final a:I

.field private final b:Ljava/util/List;

.field private final c:Lcom/google/googlenav/ui/bF;

.field private final d:Z


# direct methods
.method public constructor <init>(ILjava/util/List;Lcom/google/googlenav/ui/bF;Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lbd/S;->a:I

    iput-object p2, p0, Lbd/S;->b:Ljava/util/List;

    iput-object p3, p0, Lbd/S;->c:Lcom/google/googlenav/ui/bF;

    iput-boolean p4, p0, Lbd/S;->d:Z

    return-void
.end method

.method private a(Lbd/W;Lam/b;)Lcom/google/googlenav/ui/bG;
    .registers 9

    const/4 v2, 0x0

    const/4 v5, 0x4

    const/16 v3, 0xa

    iget-object v0, p0, Lbd/S;->c:Lcom/google/googlenav/ui/bF;

    if-eqz v0, :cond_6a

    invoke-virtual {p2, v3}, Lam/b;->k(I)Z

    move-result v0

    if-eqz v0, :cond_6a

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v0

    invoke-virtual {p2, v3}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bw;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6a

    new-instance v1, Lcom/google/googlenav/ui/bG;

    invoke-virtual {p2, v3}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v0

    sget v3, Lcom/google/googlenav/ui/bw;->by:I

    invoke-direct {v1, v0, v3}, Lcom/google/googlenav/ui/bG;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1}, Lbd/W;->d()Landroid/widget/ImageView;

    move-result-object v3

    iget-object v0, p0, Lbd/S;->c:Lcom/google/googlenav/ui/bF;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bF;->a(Lcom/google/googlenav/ui/aj;)Lah/f;

    move-result-object v0

    check-cast v0, Lai/f;

    invoke-virtual {v0}, Lai/f;->h()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    move-object v0, v1

    :goto_3b
    const/4 v1, 0x0

    :goto_3c
    invoke-virtual {p2, v5}, Lam/b;->l(I)I

    move-result v3

    if-ge v1, v3, :cond_4d

    invoke-virtual {p2, v5, v1}, Lam/b;->f(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Las/b;->c(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_67

    move-object v2, v3

    :cond_4d
    invoke-virtual {p1}, Lbd/W;->c()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lbd/W;->b()Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p2, v2}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/bg;->aS:Lcom/google/googlenav/ui/bg;

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/bw;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v0

    :cond_67
    add-int/lit8 v1, v1, 0x1

    goto :goto_3c

    :cond_6a
    move-object v0, v2

    goto :goto_3b
.end method

.method private a(Lcom/google/googlenav/ui/p;Ljava/util/List;)V
    .registers 9

    const/4 v3, 0x0

    invoke-static {}, LK/cb;->a()Ljava/util/HashMap;

    move-result-object v4

    move v2, v3

    :goto_6
    iget-object v0, p0, Lbd/S;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_52

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbd/W;

    iget-object v1, p0, Lbd/S;->b:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lam/b;

    invoke-direct {p0, v0, v1}, Lbd/S;->a(Lbd/W;Lam/b;)Lcom/google/googlenav/ui/bG;

    move-result-object v1

    if-eqz v1, :cond_29

    invoke-virtual {v0}, Lbd/W;->d()Landroid/widget/ImageView;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_29
    iget-boolean v1, p0, Lbd/S;->d:Z

    if-nez v1, :cond_30

    const/4 v1, 0x3

    if-ge v2, v1, :cond_48

    :cond_30
    invoke-virtual {v0}, Lbd/W;->a()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_37
    invoke-virtual {v0}, Lbd/W;->a()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lbd/U;

    const/4 v5, 0x0

    invoke-direct {v1, p1, v2, v5}, Lbd/U;-><init>(Lcom/google/googlenav/ui/p;ILbd/T;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_6

    :cond_48
    invoke-virtual {v0}, Lbd/W;->a()Landroid/view/View;

    move-result-object v1

    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_37

    :cond_52
    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_74

    iget-object v0, p0, Lbd/S;->c:Lcom/google/googlenav/ui/bF;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bF;->a()Lay/r;

    move-result-object v0

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v1}, LK/bR;->a(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Lbd/V;

    iget-object v3, p0, Lbd/S;->c:Lcom/google/googlenav/ui/bF;

    invoke-direct {v2, v3, v4}, Lbd/V;-><init>(Lcom/google/googlenav/ui/bF;Ljava/util/Map;)V

    invoke-virtual {v0, v1, v2}, Lay/r;->a(Ljava/util/List;Lay/q;)V

    :cond_74
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)Lbd/aJ;
    .registers 9

    const/4 v3, 0x0

    const v0, 0x7f0f02ea

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lbd/S;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, LK/bR;->c(I)Ljava/util/ArrayList;

    move-result-object v2

    move v1, v3

    :goto_15
    iget-object v4, p0, Lbd/S;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_37

    const v4, 0x7f030105

    invoke-static {v4, v0, v3}, Lcom/google/googlenav/ui/bw;->a(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    new-instance v5, Lbd/W;

    invoke-direct {v5, v4}, Lbd/W;-><init>(Landroid/view/View;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_37
    new-instance v0, Lbd/X;

    const v1, 0x7f0f02eb

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v1, 0x7f0f02ec

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v1, 0x7f0f02ed

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v1, 0x7f0f02ee

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lbd/X;-><init>(Landroid/view/View;Ljava/util/List;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    return-object v0
.end method

.method public a(Lcom/google/googlenav/ui/p;Lbd/aJ;)V
    .registers 7

    const/16 v3, 0x8

    const/4 v2, 0x0

    check-cast p2, Lbd/X;

    invoke-virtual {p2}, Lbd/X;->a()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lbd/S;->a(Lcom/google/googlenav/ui/p;Ljava/util/List;)V

    invoke-virtual {p0}, Lbd/S;->a()Z

    move-result v0

    if-eqz v0, :cond_38

    iget-boolean v0, p0, Lbd/S;->d:Z

    if-eqz v0, :cond_45

    invoke-virtual {p2}, Lbd/X;->c()Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x41a

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lbd/X;->d()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p2}, Lbd/X;->e()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_31
    :goto_31
    invoke-virtual {p2}, Lbd/X;->b()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_38
    invoke-virtual {p2}, Lbd/X;->b()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lbd/T;

    invoke-direct {v1, p0, p1}, Lbd/T;-><init>(Lbd/S;Lcom/google/googlenav/ui/p;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_45
    iget-object v0, p0, Lbd/S;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/view/android/bD;->a(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lbd/X;->c()Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v1, v0}, Lbd/l;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_31

    invoke-virtual {p2}, Lbd/X;->d()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p2}, Lbd/X;->e()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_31
.end method

.method public a()Z
    .registers 2

    iget-object v0, p0, Lbd/S;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public b()I
    .registers 2

    const v0, 0x7f030104

    return v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lbd/S;->a:I

    return v0
.end method

.method public d()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
