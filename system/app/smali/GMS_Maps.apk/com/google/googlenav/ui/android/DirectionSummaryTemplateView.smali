.class public Lcom/google/googlenav/ui/android/DirectionSummaryTemplateView;
.super Lcom/google/googlenav/ui/android/TemplateView;


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


# virtual methods
.method public a(Lcom/google/googlenav/ui/bl;)V
    .registers 4

    if-eqz p1, :cond_1f

    instance-of v0, p1, Lcom/google/googlenav/ui/r;

    if-eqz v0, :cond_1f

    move-object v0, p1

    check-cast v0, Lcom/google/googlenav/ui/r;

    const v1, 0x7f0f0004

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/android/DirectionSummaryTemplateView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v0, v0, Lcom/google/googlenav/ui/r;->a:Ljava/util/List;

    invoke-static {v0}, Lcom/google/googlenav/ui/bw;->a(Ljava/util/List;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1f
    invoke-super {p0, p1}, Lcom/google/googlenav/ui/android/TemplateView;->a(Lcom/google/googlenav/ui/bl;)V

    return-void
.end method
