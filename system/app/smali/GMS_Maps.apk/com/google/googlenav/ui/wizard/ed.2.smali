.class final Lcom/google/googlenav/ui/wizard/ed;
.super Landroid/widget/ArrayAdapter;

# interfaces
.implements Lcom/google/googlenav/ui/view/android/cl;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/dY;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/wizard/dY;Landroid/content/Context;)V
    .registers 4

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/ed;->a:Lcom/google/googlenav/ui/wizard/dY;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/wizard/dY;Landroid/content/Context;Lcom/google/googlenav/ui/wizard/dZ;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/wizard/ed;-><init>(Lcom/google/googlenav/ui/wizard/dY;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/ed;->clear()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ed;->a:Lcom/google/googlenav/ui/wizard/dY;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/dY;->b(Lcom/google/googlenav/ui/wizard/dY;)LaR/i;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, LaR/i;->c(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/prefetch/android/n;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/ed;->add(Ljava/lang/Object;)V

    goto :goto_12

    :cond_22
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9

    if-nez p2, :cond_80

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ed;->a:Lcom/google/googlenav/ui/wizard/dY;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/dY;->a(Lcom/google/googlenav/ui/wizard/dY;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300b2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/google/googlenav/ui/wizard/ei;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/google/googlenav/ui/wizard/ei;-><init>(Lcom/google/googlenav/ui/wizard/dZ;)V

    const v0, 0x7f0f0242

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/google/googlenav/ui/wizard/ei;->a:Landroid/widget/TextView;

    const v0, 0x7f0f0243

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, v1, Lcom/google/googlenav/ui/wizard/ei;->b:Landroid/widget/ImageButton;

    const v0, 0x7f0f0244

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, v1, Lcom/google/googlenav/ui/wizard/ei;->c:Landroid/widget/ImageButton;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_3a
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ed;->a:Lcom/google/googlenav/ui/wizard/dY;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/dY;->c(Lcom/google/googlenav/ui/wizard/dY;)Lcom/google/googlenav/ui/wizard/ed;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/wizard/ed;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/prefetch/android/n;

    invoke-virtual {v0}, Lcom/google/googlenav/prefetch/android/n;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Las/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_88

    const/16 v2, 0x2b2

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    :goto_56
    iget-object v3, v1, Lcom/google/googlenav/ui/wizard/ei;->a:Landroid/widget/TextView;

    sget-object v4, Lcom/google/googlenav/ui/bg;->E:Lcom/google/googlenav/ui/bg;

    invoke-static {v2, v4}, Lcom/google/googlenav/ui/bw;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/google/googlenav/ui/wizard/ei;->a:Landroid/widget/TextView;

    new-instance v3, Lcom/google/googlenav/ui/wizard/ee;

    invoke-direct {v3, p0, v0}, Lcom/google/googlenav/ui/wizard/ee;-><init>(Lcom/google/googlenav/ui/wizard/ed;Lcom/google/googlenav/prefetch/android/n;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v1, Lcom/google/googlenav/ui/wizard/ei;->b:Landroid/widget/ImageButton;

    new-instance v3, Lcom/google/googlenav/ui/wizard/ef;

    invoke-direct {v3, p0, v0}, Lcom/google/googlenav/ui/wizard/ef;-><init>(Lcom/google/googlenav/ui/wizard/ed;Lcom/google/googlenav/prefetch/android/n;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/ei;->c:Landroid/widget/ImageButton;

    new-instance v2, Lcom/google/googlenav/ui/wizard/eg;

    invoke-direct {v2, p0, v0}, Lcom/google/googlenav/ui/wizard/eg;-><init>(Lcom/google/googlenav/ui/wizard/ed;Lcom/google/googlenav/prefetch/android/n;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2

    :cond_80
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/wizard/ei;

    move-object v1, v0

    goto :goto_3a

    :cond_88
    invoke-virtual {v0}, Lcom/google/googlenav/prefetch/android/n;->c()Ljava/lang/String;

    move-result-object v2

    goto :goto_56
.end method
