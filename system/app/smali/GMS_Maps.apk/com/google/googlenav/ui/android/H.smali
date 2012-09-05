.class Lcom/google/googlenav/ui/android/H;
.super Landroid/widget/ArrayAdapter;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/android/FloorPickerView;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/android/FloorPickerView;Landroid/content/Context;Lt/q;)V
    .registers 7

    iput-object p1, p0, Lcom/google/googlenav/ui/android/H;->a:Lcom/google/googlenav/ui/android/FloorPickerView;

    const v0, 0x7f0300a8

    const v1, 0x7f0f021e

    invoke-direct {p0, p2, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    invoke-virtual {p3}, Lt/q;->d()Z

    move-result v0

    if-eqz v0, :cond_1a

    new-instance v0, Lcom/google/googlenav/ui/android/I;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/googlenav/ui/android/I;-><init>(Lt/u;)V

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/H;->add(Ljava/lang/Object;)V

    :cond_1a
    invoke-virtual {p3}, Lt/q;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/u;

    new-instance v2, Lcom/google/googlenav/ui/android/I;

    invoke-direct {v2, v0}, Lcom/google/googlenav/ui/android/I;-><init>(Lt/u;)V

    invoke-virtual {p0, v2}, Lcom/google/googlenav/ui/android/H;->add(Ljava/lang/Object;)V

    goto :goto_22

    :cond_37
    return-void
.end method

.method private a(Landroid/view/View;ILcom/google/googlenav/ui/android/J;)V
    .registers 9

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/android/H;->a:Lcom/google/googlenav/ui/android/FloorPickerView;

    invoke-static {v0}, Lcom/google/googlenav/ui/android/FloorPickerView;->a(Lcom/google/googlenav/ui/android/FloorPickerView;)I

    move-result v0

    if-ne p2, v0, :cond_52

    iget-object v0, p3, Lcom/google/googlenav/ui/android/J;->a:Landroid/widget/TextView;

    iget-object v3, p3, Lcom/google/googlenav/ui/android/J;->a:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0d00d6

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    const v0, 0x7f020180

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p1}, Landroid/view/View;->destroyDrawingCache()V

    :cond_22
    :goto_22
    iget-object v0, p0, Lcom/google/googlenav/ui/android/H;->a:Lcom/google/googlenav/ui/android/FloorPickerView;

    invoke-static {v0}, Lcom/google/googlenav/ui/android/FloorPickerView;->b(Lcom/google/googlenav/ui/android/FloorPickerView;)I

    move-result v0

    if-ne p2, v0, :cond_6e

    iget-object v0, p3, Lcom/google/googlenav/ui/android/J;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_2f
    invoke-virtual {p0, p2}, Lcom/google/googlenav/ui/android/H;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/I;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/I;->a()Lt/u;

    move-result-object v0

    if-eqz v0, :cond_74

    iget-object v3, p0, Lcom/google/googlenav/ui/android/H;->a:Lcom/google/googlenav/ui/android/FloorPickerView;

    invoke-static {v3}, Lcom/google/googlenav/ui/android/FloorPickerView;->c(Lcom/google/googlenav/ui/android/FloorPickerView;)Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v0}, Lt/u;->a()Lt/y;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_74

    move v0, v1

    :goto_4c
    iget-object v1, p3, Lcom/google/googlenav/ui/android/J;->c:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_52
    iget-object v0, p3, Lcom/google/googlenav/ui/android/J;->a:Landroid/widget/TextView;

    iget-object v3, p3, Lcom/google/googlenav/ui/android/J;->a:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0d00d5

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_22

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Landroid/view/View;->destroyDrawingCache()V

    goto :goto_22

    :cond_6e
    iget-object v0, p3, Lcom/google/googlenav/ui/android/J;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2f

    :cond_74
    move v0, v2

    goto :goto_4c
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/J;

    if-nez v0, :cond_2c

    const v0, 0x7f0f021e

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0f0220

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v1, 0x7f0f021f

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v1, Lcom/google/googlenav/ui/android/J;

    invoke-direct {v1, v0, v3, v4}, Lcom/google/googlenav/ui/android/J;-><init>(Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    :cond_2c
    invoke-direct {p0, v2, p1, v0}, Lcom/google/googlenav/ui/android/H;->a(Landroid/view/View;ILcom/google/googlenav/ui/android/J;)V

    return-object v2
.end method

.method public hasStableIds()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
