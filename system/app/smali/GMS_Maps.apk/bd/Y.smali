.class public Lbd/Y;
.super Ljava/lang/Object;

# interfaces
.implements Lbd/k;


# instance fields
.field final a:Lcom/google/googlenav/ah;

.field final b:I

.field private c:I


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ah;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lbd/Y;->c:I

    iput-object p1, p0, Lbd/Y;->a:Lcom/google/googlenav/ah;

    iput p2, p0, Lbd/Y;->b:I

    return-void
.end method

.method private a(Lcom/google/googlenav/aO;Ljava/lang/String;Lbd/ab;Lcom/google/googlenav/ui/p;)V
    .registers 8

    sget-object v0, Lcom/google/googlenav/ui/bg;->O:Lcom/google/googlenav/ui/bg;

    invoke-static {p2, v0}, Lcom/google/googlenav/ui/bw;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    iget-object v1, p3, Lbd/ab;->b:Landroid/widget/TextView;

    invoke-static {v1, v0}, Lbd/l;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/google/googlenav/aO;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Las/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_20

    invoke-static {v1}, Lcom/google/googlenav/ui/bw;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/bg;->aW:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bw;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    :cond_20
    iget-object v1, p3, Lbd/ab;->c:Landroid/widget/TextView;

    invoke-static {v1, v0}, Lbd/l;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v0, p3, Lbd/ab;->d:Lcom/google/googlenav/ui/view/android/DistanceView;

    iget-object v1, p3, Lbd/ab;->e:Lcom/google/googlenav/ui/view/android/HeadingView;

    iget-object v2, p1, Lcom/google/googlenav/aO;->a:LaJ/B;

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/view/android/bh;->a(Lcom/google/googlenav/ui/view/android/DistanceView;Lcom/google/googlenav/ui/view/android/HeadingView;LaJ/B;)V

    iget-object v0, p3, Lbd/ab;->a:Landroid/view/ViewGroup;

    new-instance v1, Lbd/Z;

    invoke-direct {v1, p0, p4, p1}, Lbd/Z;-><init>(Lbd/Y;Lcom/google/googlenav/ui/p;Lcom/google/googlenav/aO;)V

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/view/android/h;->a(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    iget-object v0, p3, Lbd/ab;->a:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)Lbd/aJ;
    .registers 10

    const v7, 0x7f0f014d

    const v6, 0x7f0f0006

    const/4 v2, 0x0

    new-instance v3, Lbd/aa;

    invoke-direct {v3, p0}, Lbd/aa;-><init>(Lbd/Y;)V

    const v0, 0x7f0f02f7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v3, Lbd/aa;->a:Landroid/view/View;

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v3, Lbd/aa;->b:Landroid/widget/TextView;

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v3, Lbd/aa;->c:Landroid/view/View;

    const v0, 0x7f0f02f8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v3, Lbd/aa;->d:Landroid/widget/LinearLayout;

    move v1, v2

    :goto_2f
    const/4 v0, 0x5

    if-ge v1, v0, :cond_8d

    new-instance v4, Lbd/ab;

    invoke-direct {v4, p0}, Lbd/ab;-><init>(Lbd/Y;)V

    const v0, 0x7f03010a

    iget-object v5, v3, Lbd/aa;->d:Landroid/widget/LinearLayout;

    invoke-static {v0, v5, v2}, Lcom/google/googlenav/ui/bw;->a(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v4, Lbd/ab;->a:Landroid/view/ViewGroup;

    iget-object v0, v4, Lbd/ab;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v4, Lbd/ab;->b:Landroid/widget/TextView;

    iget-object v0, v4, Lbd/ab;->a:Landroid/view/ViewGroup;

    const v5, 0x7f0f015e

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v4, Lbd/ab;->c:Landroid/widget/TextView;

    iget-object v0, v4, Lbd/ab;->a:Landroid/view/ViewGroup;

    const v5, 0x7f0f0166

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/DistanceView;

    iput-object v0, v4, Lbd/ab;->d:Lcom/google/googlenav/ui/view/android/DistanceView;

    iget-object v0, v4, Lbd/ab;->a:Landroid/view/ViewGroup;

    const v5, 0x7f0f0167

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/HeadingView;

    iput-object v0, v4, Lbd/ab;->e:Lcom/google/googlenav/ui/view/android/HeadingView;

    iget-object v0, v4, Lbd/ab;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v4, Lbd/ab;->f:Landroid/view/View;

    iget-object v0, v3, Lbd/aa;->d:Landroid/widget/LinearLayout;

    iget-object v5, v4, Lbd/ab;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, v3, Lbd/aa;->e:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2f

    :cond_8d
    return-object v3
.end method

.method public a(Lcom/google/googlenav/ui/p;Lbd/aJ;)V
    .registers 7

    iget-object v0, p0, Lbd/Y;->a:Lcom/google/googlenav/ah;

    const/4 v1, 0x5

    invoke-static {v0, v1}, LaY/aq;->a(Lcom/google/googlenav/ah;I)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lbd/Y;->a:Lcom/google/googlenav/ah;

    invoke-static {v1}, LaY/aq;->f(Lcom/google/googlenav/ah;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lbd/Y;->c:I

    if-eq v2, v3, :cond_1e

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    iput v2, p0, Lbd/Y;->c:I

    invoke-virtual {p0, v0, v1, p1, p2}, Lbd/Y;->a(Ljava/util/List;Ljava/lang/String;Lcom/google/googlenav/ui/p;Lbd/aJ;)V

    :cond_1e
    return-void
.end method

.method a(Ljava/util/List;Ljava/lang/String;Lcom/google/googlenav/ui/p;Lbd/aJ;)V
    .registers 12

    const/4 v3, 0x0

    const/16 v5, 0x8

    check-cast p4, Lbd/aa;

    move v1, v3

    :goto_6
    const/4 v0, 0x5

    if-ge v1, v0, :cond_1a

    iget-object v0, p4, Lbd/aa;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbd/ab;

    iget-object v0, v0, Lbd/ab;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    :cond_1a
    if-eqz p1, :cond_22

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_37

    :cond_22
    iget-object v0, p4, Lbd/aa;->a:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p4, Lbd/aa;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p4, Lbd/aa;->c:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p4, Lbd/aa;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_36
    return-void

    :cond_37
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v3

    :goto_3c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/aO;

    const/4 v1, 0x0

    iget-object v4, v0, Lcom/google/googlenav/aO;->c:Lam/b;

    if-eqz v4, :cond_b3

    iget-object v1, v0, Lcom/google/googlenav/aO;->c:Lam/b;

    const/4 v4, 0x2

    invoke-static {v1, v4}, Lam/g;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    :goto_55
    invoke-static {v4}, Las/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b1

    iget-object v1, p4, Lbd/aa;->e:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbd/ab;

    invoke-direct {p0, v0, v4, v1, p3}, Lbd/Y;->a(Lcom/google/googlenav/aO;Ljava/lang/String;Lbd/ab;Lcom/google/googlenav/ui/p;)V

    add-int/lit8 v0, v2, 0x1

    :goto_68
    move v2, v0

    goto :goto_3c

    :cond_6a
    iget-object v1, p4, Lbd/aa;->a:Landroid/view/View;

    if-lez v2, :cond_ad

    move v0, v3

    :goto_6f
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p4, Lbd/aa;->d:Landroid/widget/LinearLayout;

    if-lez v2, :cond_af

    move v0, v3

    :goto_77
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-lez v2, :cond_a5

    invoke-static {p2}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a5

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/bg;->aX:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bw;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    iget-object v1, p4, Lbd/aa;->b:Landroid/widget/TextView;

    invoke-static {v1, v0}, Lbd/l;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v0, p4, Lbd/aa;->c:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p4, Lbd/aa;->e:Ljava/util/List;

    add-int/lit8 v1, v2, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbd/ab;

    iget-object v0, v0, Lbd/ab;->f:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_a5
    iget-object v0, p0, Lbd/Y;->a:Lcom/google/googlenav/ah;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ah;->n(I)V

    goto :goto_36

    :cond_ad
    move v0, v5

    goto :goto_6f

    :cond_af
    move v0, v5

    goto :goto_77

    :cond_b1
    move v0, v2

    goto :goto_68

    :cond_b3
    move-object v4, v1

    goto :goto_55
.end method

.method public b()I
    .registers 2

    const v0, 0x7f03010b

    return v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lbd/Y;->b:I

    return v0
.end method

.method public d()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
