.class public Lcom/google/googlenav/ui/android/TemplateViewWithRightText;
.super Lcom/google/googlenav/ui/android/TemplateView;


# instance fields
.field private a:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;


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
.method protected b(Lcom/google/googlenav/ui/bl;)I
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRightText;->i:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/google/googlenav/ui/bl;->x:Lcom/google/googlenav/ui/bh;

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ui/android/TemplateViewWithRightText;->a(Landroid/widget/TextView;Lcom/google/googlenav/ui/bh;)V

    iget-object v0, p1, Lcom/google/googlenav/ui/bl;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2a

    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRightText;->a:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/google/googlenav/ui/bl;->i:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/bh;

    invoke-virtual {p0, v1, v0}, Lcom/google/googlenav/ui/android/TemplateViewWithRightText;->a(Landroid/widget/TextView;Lcom/google/googlenav/ui/bh;)V

    iget-boolean v0, p1, Lcom/google/googlenav/ui/bl;->v:Z

    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRightText;->a:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ui/android/TemplateViewWithRightText;->a(ZLandroid/widget/TextView;)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/googlenav/ui/android/TemplateViewWithRightText;->a(Lcom/google/googlenav/ui/bl;I)I

    move-result v0

    :goto_29
    return v0

    :cond_2a
    invoke-super {p0, p1}, Lcom/google/googlenav/ui/android/TemplateView;->b(Lcom/google/googlenav/ui/bl;)I

    move-result v0

    goto :goto_29
.end method

.method protected onFinishInflate()V
    .registers 2

    invoke-super {p0}, Lcom/google/googlenav/ui/android/TemplateView;->onFinishInflate()V

    const v0, 0x7f0f0003

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateViewWithRightText;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRightText;->a:Landroid/widget/TextView;

    const v0, 0x7f0f0004

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateViewWithRightText;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRightText;->i:Landroid/widget/TextView;

    return-void
.end method
