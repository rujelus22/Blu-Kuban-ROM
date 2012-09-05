.class public Lcom/google/googlenav/ui/android/T;
.super Lcom/google/googlenav/ui/view/android/S;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/android/ButtonContainer;Lbb/c;LaY/aG;Lcom/google/googlenav/ah;Lah/f;)V
    .registers 11

    const/4 v4, 0x0

    const v0, 0x7f0f0300

    invoke-virtual {p1, v0}, Lcom/google/googlenav/ui/android/ButtonContainer;->a(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p1, v4}, Lcom/google/googlenav/ui/view/android/S;-><init>(Landroid/view/View;Landroid/view/ViewGroup;Z)V

    invoke-virtual {p0, p2}, Lcom/google/googlenav/ui/android/T;->a(Lbb/c;)V

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p3, p4, v1}, LaY/aG;->a(Lcom/google/googlenav/ah;Ljava/util/List;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/T;->a:Landroid/view/View;

    const v2, 0x7f0f0004

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v2, 0x32

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/bg;->ag:Lcom/google/googlenav/ui/bg;

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/google/googlenav/ui/android/T;->a(Landroid/widget/TextView;Lcom/google/googlenav/ui/bh;Lcom/google/googlenav/ui/bh;)V

    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/android/T;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/T;->a:Landroid/view/View;

    const v1, 0x7f0f0002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz p5, :cond_57

    check-cast p5, Lai/f;

    invoke-virtual {p5}, Lai/f;->h()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_51
    iget-object v0, p0, Lcom/google/googlenav/ui/android/T;->a:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_57
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_51
.end method

.method private a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/text/SpannableStringBuilder;I)V
    .registers 8

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gt v0, p4, :cond_24

    const v0, 0x7f03016e

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    add-int/lit8 v1, p4, 0x1

    invoke-virtual {p2, v0, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :goto_1d
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_24
    invoke-virtual {p2, p4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    goto :goto_1d
.end method

.method private a(Landroid/widget/TextView;Lcom/google/googlenav/ui/bh;Lcom/google/googlenav/ui/bh;)V
    .registers 7

    const/4 v2, 0x0

    if-eqz p2, :cond_1a

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/googlenav/ui/bh;

    aput-object p2, v0, v2

    const/4 v1, 0x1

    aput-object p3, v0, v1

    invoke-static {v0}, LK/bR;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ui/bw;->a(Ljava/util/List;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_19
    return-void

    :cond_1a
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_19
.end method

.method private a(Ljava/util/List;)V
    .registers 10

    const/16 v7, 0x8

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9e

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/bh;

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v2, :cond_a1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/ui/bh;

    move-object v2, v1

    move v3, v4

    :goto_20
    iget-object v1, p0, Lcom/google/googlenav/ui/android/T;->a:Landroid/view/View;

    const v6, 0x7f0f0003

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-direct {p0, v1, v0, v2}, Lcom/google/googlenav/ui/android/T;->a(Landroid/widget/TextView;Lcom/google/googlenav/ui/bh;Lcom/google/googlenav/ui/bh;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/T;->a:Landroid/view/View;

    const v1, 0x7f0f0029

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v4, :cond_9b

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v1, p0, Lcom/google/googlenav/ui/android/T;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6}, Landroid/text/SpannableStringBuilder;-><init>()V

    move v2, v3

    move v3, v5

    :goto_57
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_7b

    add-int/lit8 v4, v2, 0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/googlenav/ui/bh;

    if-nez v2, :cond_69

    move v2, v4

    goto :goto_57

    :cond_69
    invoke-static {v2, v6}, Lcom/google/googlenav/ui/bw;->a(Lcom/google/googlenav/ui/bh;Landroid/text/SpannableStringBuilder;)V

    iget-boolean v2, v2, Lcom/google/googlenav/ui/bh;->c:Z

    if-eqz v2, :cond_9f

    add-int/lit8 v2, v3, 0x1

    invoke-direct {p0, v1, v0, v6, v3}, Lcom/google/googlenav/ui/android/T;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/text/SpannableStringBuilder;I)V

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->clear()V

    :goto_78
    move v3, v2

    move v2, v4

    goto :goto_57

    :cond_7b
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_8a

    add-int/lit8 v2, v3, 0x1

    invoke-direct {p0, v1, v0, v6, v3}, Lcom/google/googlenav/ui/android/T;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/text/SpannableStringBuilder;I)V

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->clear()V

    move v3, v2

    :cond_8a
    :goto_8a
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v3, v1, :cond_9e

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    move v3, v1

    goto :goto_8a

    :cond_9b
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_9e
    return-void

    :cond_9f
    move v2, v3

    goto :goto_78

    :cond_a1
    move v3, v2

    move-object v2, v1

    goto/16 :goto_20
.end method
