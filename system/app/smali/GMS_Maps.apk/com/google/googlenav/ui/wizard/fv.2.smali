.class final Lcom/google/googlenav/ui/wizard/fV;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/fL;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/wizard/fL;Landroid/content/Context;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 484
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/fV;->a:Lcom/google/googlenav/ui/wizard/fL;

    .line 485
    const v0, 0x1020014

    invoke-direct {p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 486
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/wizard/fL;Landroid/content/Context;Lcom/google/googlenav/ui/wizard/fM;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 482
    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/wizard/fV;-><init>(Lcom/google/googlenav/ui/wizard/fL;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 492
    if-nez p2, :cond_5c

    .line 493
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fV;->a:Lcom/google/googlenav/ui/wizard/fL;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/fL;->g(Lcom/google/googlenav/ui/wizard/fL;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x1090004

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 494
    new-instance v1, Lcom/google/googlenav/ui/wizard/fW;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/google/googlenav/ui/wizard/fW;-><init>(Lcom/google/googlenav/ui/wizard/fM;)V

    .line 495
    const v0, 0x1020014

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/google/googlenav/ui/wizard/fW;->a:Landroid/widget/TextView;

    .line 496
    const v0, 0x1020015

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/google/googlenav/ui/wizard/fW;->b:Landroid/widget/TextView;

    .line 498
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 503
    :goto_2f
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fV;->a:Lcom/google/googlenav/ui/wizard/fL;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/fL;->d(Lcom/google/googlenav/ui/wizard/fL;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/h;

    .line 504
    iget-object v2, v1, Lcom/google/googlenav/ui/wizard/fW;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/google/googlenav/h;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 505
    invoke-virtual {v0}, Lcom/google/googlenav/h;->l()Z

    move-result v2

    if-eqz v2, :cond_64

    invoke-virtual {v0}, Lcom/google/googlenav/h;->d()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_64

    .line 506
    iget-object v0, v1, Lcom/google/googlenav/ui/wizard/fW;->b:Landroid/widget/TextView;

    const/16 v1, 0x7e

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 512
    :goto_5b
    return-object p2

    .line 500
    :cond_5c
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/wizard/fW;

    move-object v1, v0

    goto :goto_2f

    .line 508
    :cond_64
    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/fW;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/google/googlenav/h;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/googlenav/h;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/googlenav/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5b
.end method
