.class public Lcom/google/googlenav/ui/android/TemplateViewForDetails;
.super Lcom/google/googlenav/ui/android/TemplateView;


# instance fields
.field private a:Landroid/widget/TextView;

.field private i:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/android/TemplateView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/android/TemplateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Lcom/google/googlenav/ui/bh;Lcom/google/googlenav/ui/bh;Lcom/google/googlenav/ui/bh;)Landroid/widget/TableRow;
    .registers 9

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/TemplateViewForDetails;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/TemplateViewForDetails;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/TemplateViewForDetails;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v3, p1, Lcom/google/googlenav/ui/bh;->a:Ljava/lang/String;

    invoke-static {v3}, Las/b;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2b

    const-string v3, " "

    sget-object v4, Lcom/google/googlenav/ui/bg;->aS:Lcom/google/googlenav/ui/bg;

    invoke-static {v3, v4}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object p1

    :cond_2b
    invoke-virtual {p0, v0, p1}, Lcom/google/googlenav/ui/android/TemplateViewForDetails;->a(Landroid/widget/TextView;Lcom/google/googlenav/ui/bh;)V

    invoke-virtual {p0, v1, p2}, Lcom/google/googlenav/ui/android/TemplateViewForDetails;->a(Landroid/widget/TextView;Lcom/google/googlenav/ui/bh;)V

    invoke-virtual {p0, v2, p3}, Lcom/google/googlenav/ui/android/TemplateViewForDetails;->a(Landroid/widget/TextView;Lcom/google/googlenav/ui/bh;)V

    new-instance v3, Landroid/widget/TableRow;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/TemplateViewForDetails;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v0}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    invoke-virtual {v3, v1}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    invoke-virtual {v3, v2}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    return-object v3
.end method


# virtual methods
.method protected a(Lcom/google/googlenav/ui/bl;I)I
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/googlenav/ui/android/TemplateViewForDetails;->a(Lcom/google/googlenav/ui/bl;IZ)I

    move-result v0

    return v0
.end method

.method protected b(Lcom/google/googlenav/ui/bl;)I
    .registers 9

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForDetails;->a:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/google/googlenav/ui/bl;->w:Lcom/google/googlenav/ui/bh;

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ui/android/TemplateViewForDetails;->a(Landroid/widget/TextView;Lcom/google/googlenav/ui/bh;)V

    iget-object v0, p1, Lcom/google/googlenav/ui/bl;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForDetails;->i:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p1, Lcom/google/googlenav/ui/bl;->j:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/bh;

    iget-object v0, v0, Lcom/google/googlenav/ui/bh;->e:Lbb/E;

    if-eqz v0, :cond_32

    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateViewForDetails;->i:Landroid/view/ViewGroup;

    iget-object v2, p1, Lcom/google/googlenav/ui/bl;->y:Lbb/c;

    iget-object v0, p1, Lcom/google/googlenav/ui/bl;->j:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/bh;

    iget-object v0, v0, Lcom/google/googlenav/ui/bh;->e:Lbb/E;

    invoke-static {v1, v2, v0}, Lcom/google/googlenav/ui/android/ao;->a(Landroid/view/View;Lbb/c;Lbb/E;)Lcom/google/googlenav/ui/android/ao;

    :cond_32
    move v3, v4

    :goto_33
    iget-object v0, p1, Lcom/google/googlenav/ui/bl;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_64

    iget-object v5, p0, Lcom/google/googlenav/ui/android/TemplateViewForDetails;->i:Landroid/view/ViewGroup;

    iget-object v0, p1, Lcom/google/googlenav/ui/bl;->j:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/bh;

    iget-object v1, p1, Lcom/google/googlenav/ui/bl;->j:Ljava/util/List;

    add-int/lit8 v2, v3, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/ui/bh;

    iget-object v2, p1, Lcom/google/googlenav/ui/bl;->j:Ljava/util/List;

    add-int/lit8 v6, v3, 0x2

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/googlenav/ui/bh;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/googlenav/ui/android/TemplateViewForDetails;->a(Lcom/google/googlenav/ui/bh;Lcom/google/googlenav/ui/bh;Lcom/google/googlenav/ui/bh;)Landroid/widget/TableRow;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v3, 0x3

    move v3, v0

    goto :goto_33

    :cond_64
    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForDetails;->i:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_69
    invoke-super {p0, p1}, Lcom/google/googlenav/ui/android/TemplateView;->b(Lcom/google/googlenav/ui/bl;)I

    move-result v0

    return v0

    :cond_6e
    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForDetails;->i:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_69
.end method

.method protected onFinishInflate()V
    .registers 2

    invoke-super {p0}, Lcom/google/googlenav/ui/android/TemplateView;->onFinishInflate()V

    const v0, 0x7f0f0006

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateViewForDetails;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForDetails;->a:Landroid/widget/TextView;

    const v0, 0x7f0f021c

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateViewForDetails;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForDetails;->i:Landroid/view/ViewGroup;

    return-void
.end method
