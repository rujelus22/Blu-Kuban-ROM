.class public Lbd/p;
.super Ljava/lang/Object;

# interfaces
.implements Lbd/k;


# instance fields
.field private final a:I

.field private final b:Lcom/google/googlenav/ah;


# direct methods
.method public constructor <init>(ILcom/google/googlenav/ah;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lbd/p;->a:I

    iput-object p2, p0, Lbd/p;->b:Lcom/google/googlenav/ah;

    return-void
.end method

.method private a(Lam/b;Landroid/widget/TextView;Lcom/google/googlenav/ui/p;)V
    .registers 9

    const/4 v4, 0x2

    const/4 v2, 0x1

    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1a

    sget-object v1, Lcom/google/googlenav/ui/bg;->aW:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bw;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_1a
    invoke-virtual {p1, v4}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    invoke-virtual {v0, v2}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2d

    move-object v0, v1

    :cond_2d
    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_42

    invoke-static {v1}, Las/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_72

    sget-object v2, Lcom/google/googlenav/ui/bg;->aW:Lcom/google/googlenav/ui/bg;

    :goto_3b
    invoke-static {v0, v2}, Lcom/google/googlenav/ui/bw;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_42
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_56

    sget-object v2, Lcom/google/googlenav/ui/bg;->aW:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/bw;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_56
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_71

    invoke-static {p2, v3}, Lbd/l;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {v1}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_71

    new-instance v0, Lbd/q;

    invoke-direct {v0, p0, p3, v1}, Lbd/q;-><init>(Lbd/p;Lcom/google/googlenav/ui/p;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_71
    return-void

    :cond_72
    sget-object v2, Lcom/google/googlenav/ui/bg;->aT:Lcom/google/googlenav/ui/bg;

    goto :goto_3b
.end method


# virtual methods
.method public a(Landroid/view/View;)Lbd/aJ;
    .registers 5

    new-instance v1, Lbd/r;

    invoke-direct {v1, p0}, Lbd/r;-><init>(Lbd/p;)V

    const v0, 0x7f0f02d0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lbd/r;->a:Landroid/view/View;

    iget-object v0, v1, Lbd/r;->a:Landroid/view/View;

    const v2, 0x7f0f02d1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lbd/r;->b:Landroid/widget/TextView;

    iget-object v0, v1, Lbd/r;->a:Landroid/view/View;

    const v2, 0x7f0f02d2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lbd/r;->c:Landroid/widget/TextView;

    iget-object v0, v1, Lbd/r;->a:Landroid/view/View;

    const v2, 0x7f0f02d3

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lbd/r;->d:Landroid/widget/TextView;

    return-object v1
.end method

.method public a(Lcom/google/googlenav/ui/p;Lbd/aJ;)V
    .registers 9

    const/16 v5, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lbd/p;->b:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->Y()Ljava/util/List;

    move-result-object v2

    check-cast p2, Lbd/r;

    const/4 v0, 0x3

    new-array v3, v0, [Landroid/widget/TextView;

    iget-object v0, p2, Lbd/r;->b:Landroid/widget/TextView;

    aput-object v0, v3, v1

    const/4 v0, 0x1

    iget-object v4, p2, Lbd/r;->c:Landroid/widget/TextView;

    aput-object v4, v3, v0

    const/4 v0, 0x2

    iget-object v4, p2, Lbd/r;->d:Landroid/widget/TextView;

    aput-object v4, v3, v0

    move v0, v1

    :goto_1d
    array-length v4, v3

    if-ge v0, v4, :cond_28

    aget-object v4, v3, v0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_28
    if-eqz v2, :cond_30

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_36

    :cond_30
    iget-object v0, p2, Lbd/r;->a:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_35
    return-void

    :cond_36
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v1

    :goto_3b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/b;

    aget-object v5, v3, v2

    invoke-direct {p0, v0, v5, p1}, Lbd/p;->a(Lam/b;Landroid/widget/TextView;Lcom/google/googlenav/ui/p;)V

    add-int/lit8 v0, v2, 0x1

    array-length v2, v3

    if-lt v0, v2, :cond_57

    :cond_51
    iget-object v0, p2, Lbd/r;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_35

    :cond_57
    move v2, v0

    goto :goto_3b
.end method

.method public b()I
    .registers 2

    const v0, 0x7f0300fc

    return v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lbd/p;->a:I

    return v0
.end method

.method public d()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
