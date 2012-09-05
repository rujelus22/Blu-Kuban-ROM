.class public Lcom/google/googlenav/ui/android/GridTemplateView;
.super Lcom/google/googlenav/ui/android/TemplateView;


# instance fields
.field private a:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ui/android/GridTemplateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/android/TemplateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected b(Lcom/google/googlenav/ui/bl;)I
    .registers 7

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/android/GridTemplateView;->i:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/google/googlenav/ui/android/GridTemplateView;->a:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/google/googlenav/ui/bl;->i:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/bh;

    invoke-virtual {p0, v1, v0}, Lcom/google/googlenav/ui/android/GridTemplateView;->a(Landroid/widget/TextView;Lcom/google/googlenav/ui/bh;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/GridTemplateView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p1, Lcom/google/googlenav/ui/bl;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_20
    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/bh;

    iget-object v2, v0, Lcom/google/googlenav/ui/bh;->b:Lcom/google/googlenav/ui/bg;

    sget-object v3, Lcom/google/googlenav/ui/bg;->bL:Lcom/google/googlenav/ui/bg;

    if-ne v2, v3, :cond_20

    iget-object v2, p0, Lcom/google/googlenav/ui/android/GridTemplateView;->i:Landroid/widget/TextView;

    invoke-virtual {p0, v2, v0}, Lcom/google/googlenav/ui/android/GridTemplateView;->a(Landroid/widget/TextView;Lcom/google/googlenav/ui/bh;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/GridTemplateView;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_20

    :cond_3d
    return v4
.end method

.method protected onFinishInflate()V
    .registers 3

    const v0, 0x7f0f01b1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/GridTemplateView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0f0061

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/google/googlenav/ui/android/GridTemplateView;->f:Landroid/widget/ImageView;

    const v1, 0x7f0f014e

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/GridTemplateView;->i:Landroid/widget/TextView;

    const v0, 0x7f0f01b2

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/GridTemplateView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/GridTemplateView;->a:Landroid/widget/TextView;

    return-void
.end method
