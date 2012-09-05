.class final Lcom/google/googlenav/ui/wizard/fh;
.super Landroid/widget/ArrayAdapter;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/fe;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/wizard/fe;Landroid/content/Context;)V
    .registers 4

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/fh;->a:Lcom/google/googlenav/ui/wizard/fe;

    const v0, 0x1020014

    invoke-direct {p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/wizard/fe;Landroid/content/Context;Lcom/google/googlenav/ui/wizard/ff;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/wizard/fh;-><init>(Lcom/google/googlenav/ui/wizard/fe;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 12

    const/4 v7, 0x0

    if-nez p2, :cond_90

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fh;->a:Lcom/google/googlenav/ui/wizard/fe;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/fe;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03001a

    invoke-virtual {v0, v1, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/google/googlenav/ui/wizard/fi;

    invoke-direct {v1}, Lcom/google/googlenav/ui/wizard/fi;-><init>()V

    const v0, 0x1020014

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/google/googlenav/ui/wizard/fi;->a:Landroid/widget/TextView;

    const v0, 0x1020015

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/google/googlenav/ui/wizard/fi;->b:Landroid/widget/TextView;

    const v0, 0x1020006

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/google/googlenav/ui/wizard/fi;->c:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_39
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fh;->a:Lcom/google/googlenav/ui/wizard/fe;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/fe;->b(Lcom/google/googlenav/ui/wizard/fe;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lax/aL;

    iget-object v2, v1, Lcom/google/googlenav/ui/wizard/fi;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lax/aL;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lax/aL;->d()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_98

    iget-object v2, v1, Lcom/google/googlenav/ui/wizard/fi;->b:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5e
    invoke-virtual {v0}, Lax/aL;->c()Lax/aN;

    move-result-object v2

    sget-object v3, Lax/aN;->c:Lax/aN;

    if-ne v2, v3, :cond_bf

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/fh;->a:Lcom/google/googlenav/ui/wizard/fe;

    invoke-static {v2}, Lcom/google/googlenav/ui/wizard/fe;->c(Lcom/google/googlenav/ui/wizard/fe;)Lay/a;

    move-result-object v2

    invoke-virtual {v0}, Lax/aL;->a()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lay/a;->a(Ljava/lang/Long;)Lay/n;

    move-result-object v2

    if-eqz v2, :cond_b5

    invoke-virtual {v2}, Lay/n;->e()Lah/f;

    move-result-object v3

    if-eqz v3, :cond_b5

    invoke-virtual {v2}, Lay/n;->e()Lah/f;

    move-result-object v0

    check-cast v0, Lai/f;

    invoke-virtual {v0}, Lai/f;->h()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/fi;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_8f
    return-object p2

    :cond_90
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/wizard/fi;

    move-object v1, v0

    goto :goto_39

    :cond_98
    iget-object v2, v1, Lcom/google/googlenav/ui/wizard/fi;->b:Landroid/widget/TextView;

    const/16 v3, 0x309

    invoke-static {v3}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v0}, Lax/aL;->d()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5e

    :cond_b5
    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/fi;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lax/aL;->e()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_8f

    :cond_bf
    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/fi;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lax/aL;->e()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_8f
.end method
