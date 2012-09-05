.class public Lcom/google/googlenav/ui/android/TemplateViewForJustifications;
.super Lcom/google/googlenav/ui/android/TemplateView;


# instance fields
.field protected a:Landroid/widget/LinearLayout;


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
    .registers 8

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/google/googlenav/ui/android/TemplateView;->a(Lcom/google/googlenav/ui/bl;)V

    iget-object v0, p1, Lcom/google/googlenav/ui/bl;->H:[Lcom/google/googlenav/ui/bl;

    array-length v0, v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_39

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForJustifications;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViewsInLayout()V

    iget-object v0, p1, Lcom/google/googlenav/ui/bl;->H:[Lcom/google/googlenav/ui/bl;

    array-length v0, v0

    add-int/lit8 v3, v0, -0x1

    move v1, v2

    :goto_15
    if-ge v1, v3, :cond_39

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForJustifications;->c:Landroid/view/LayoutInflater;

    const v4, 0x7f0300af

    iget-object v5, p0, Lcom/google/googlenav/ui/android/TemplateViewForJustifications;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/TemplateView;

    iget-object v4, p1, Lcom/google/googlenav/ui/bl;->H:[Lcom/google/googlenav/ui/bl;

    add-int/lit8 v5, v1, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v0, v4}, Lcom/google/googlenav/ui/android/TemplateView;->a(Lcom/google/googlenav/ui/bl;)V

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/android/TemplateView;->setVisibility(I)V

    iget-object v4, p0, Lcom/google/googlenav/ui/android/TemplateViewForJustifications;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_15

    :cond_39
    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    invoke-super {p0}, Lcom/google/googlenav/ui/android/TemplateView;->onFinishInflate()V

    const v0, 0x7f0f01e1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateViewForJustifications;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForJustifications;->a:Landroid/widget/LinearLayout;

    return-void
.end method
