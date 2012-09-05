.class public final Lcom/google/googlenav/ui/wizard/dx;
.super Landroid/widget/ArrayAdapter;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/dv;

.field private b:I

.field private c:I


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/wizard/dv;Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/dx;->a:Lcom/google/googlenav/ui/wizard/dv;

    invoke-direct {p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput v0, p0, Lcom/google/googlenav/ui/wizard/dx;->b:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/googlenav/ui/wizard/dx;->c:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/wizard/dv;Landroid/content/Context;Lcom/google/googlenav/ui/wizard/dw;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/wizard/dx;-><init>(Lcom/google/googlenav/ui/wizard/dv;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getItemViewType(I)I
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/wizard/dx;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/google/googlenav/ui/wizard/dx;->b:I

    :goto_a
    return v0

    :cond_b
    iget v0, p0, Lcom/google/googlenav/ui/wizard/dx;->c:I

    goto :goto_a
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 13

    const/4 v6, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dx;->a:Lcom/google/googlenav/ui/wizard/dv;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/dv;->c(Lcom/google/googlenav/ui/wizard/dv;)Lcom/google/googlenav/ui/wizard/dx;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/wizard/dx;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v5, v1, Ljava/lang/String;

    if-nez p2, :cond_61

    if-eqz v5, :cond_4a

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dx;->a:Lcom/google/googlenav/ui/wizard/dv;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/dv;->a(Lcom/google/googlenav/ui/wizard/dv;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030141

    invoke-virtual {v0, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f0f0378

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    :goto_28
    new-instance v4, Lcom/google/googlenav/ui/wizard/dA;

    invoke-direct {v4, v6}, Lcom/google/googlenav/ui/wizard/dA;-><init>(Lcom/google/googlenav/ui/wizard/dw;)V

    iput-object v0, v4, Lcom/google/googlenav/ui/wizard/dA;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object p2, v2

    move-object v2, v4

    :goto_34
    if-eqz v5, :cond_69

    iget-object v3, v2, Lcom/google/googlenav/ui/wizard/dA;->a:Landroid/widget/TextView;

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/google/googlenav/ui/bg;->y:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bw;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v2, Lcom/google/googlenav/ui/wizard/dA;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_49
    return-object p2

    :cond_4a
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dx;->a:Lcom/google/googlenav/ui/wizard/dv;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/dv;->a(Lcom/google/googlenav/ui/wizard/dv;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030140

    invoke-virtual {v0, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f0f0377

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    goto :goto_28

    :cond_61
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/wizard/dA;

    move-object v2, v0

    goto :goto_34

    :cond_69
    check-cast v1, LaL/c;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, LaL/c;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lcom/google/googlenav/ui/bg;->w:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v5}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, LaL/c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b6

    invoke-virtual {v1}, LaL/c;->c()Ljava/lang/String;

    move-result-object v0

    const-string v5, "\n"

    invoke-static {v0, v5}, Las/b;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v0, v3

    :goto_93
    if-ge v0, v6, :cond_b6

    aget-object v3, v5, v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v7, Lcom/google/googlenav/ui/bg;->y:Lcom/google/googlenav/ui/bg;

    invoke-static {v3, v7}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_93

    :cond_b6
    iget-object v0, v2, Lcom/google/googlenav/ui/wizard/dA;->a:Landroid/widget/TextView;

    invoke-static {v0, v4}, Lcom/google/googlenav/ui/bw;->a(Landroid/widget/TextView;Ljava/util/List;)V

    iget-object v0, v2, Lcom/google/googlenav/ui/wizard/dA;->a:Landroid/widget/TextView;

    new-instance v2, Lcom/google/googlenav/ui/wizard/dy;

    invoke-direct {v2, p0, v1}, Lcom/google/googlenav/ui/wizard/dy;-><init>(Lcom/google/googlenav/ui/wizard/dx;LaL/c;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_49
.end method

.method public getViewTypeCount()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method
