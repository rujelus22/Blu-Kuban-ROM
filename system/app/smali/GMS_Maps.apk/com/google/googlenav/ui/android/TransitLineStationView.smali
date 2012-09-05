.class public Lcom/google/googlenav/ui/android/TransitLineStationView;
.super Lcom/google/googlenav/ui/android/TransitStationView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/android/TransitStationView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/android/TransitStationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Lcom/google/googlenav/bV;)V
    .registers 8

    const/4 v0, 0x3

    const/4 v1, 0x0

    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/google/googlenav/bV;->e()I

    move-result v3

    if-le v3, v0, :cond_1c

    :goto_d
    new-array v3, v0, [Lcom/google/googlenav/bP;

    move v0, v1

    :goto_10
    array-length v4, v3

    if-ge v0, v4, :cond_21

    invoke-virtual {p1, v0}, Lcom/google/googlenav/bV;->a(I)Lcom/google/googlenav/bP;

    move-result-object v4

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_1c
    invoke-virtual {p1}, Lcom/google/googlenav/bV;->e()I

    move-result v0

    goto :goto_d

    :cond_21
    new-instance v0, Lcom/google/googlenav/bV;

    invoke-virtual {p1}, Lcom/google/googlenav/bV;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/googlenav/bV;->f()Z

    move-result v5

    invoke-direct {v0, v4, v3, v5}, Lcom/google/googlenav/bV;-><init>(Ljava/lang/String;[Lcom/google/googlenav/bP;Z)V

    invoke-virtual {p0, v2, v0}, Lcom/google/googlenav/ui/android/TransitLineStationView;->a(Landroid/text/SpannableStringBuilder;Lcom/google/googlenav/bV;)V

    const v0, 0x7f0f03bb

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TransitLineStationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/bN;Lcom/google/googlenav/bV;Lcom/google/googlenav/ui/p;II)V
    .registers 10

    const/4 v3, 0x1

    invoke-virtual {p0, p1, p3}, Lcom/google/googlenav/ui/android/TransitLineStationView;->a(Lcom/google/googlenav/bN;Lcom/google/googlenav/ui/p;)V

    invoke-virtual {p0, v3}, Lcom/google/googlenav/ui/android/TransitLineStationView;->setClickable(Z)V

    if-ge p4, p5, :cond_2c

    const v0, 0x7f0d00d1

    move v1, v0

    :goto_d
    const v0, 0x7f0f0062

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TransitLineStationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/google/googlenav/bN;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/TransitLineStationView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0, v3}, Lcom/google/googlenav/ui/android/TransitLineStationView;->setWillNotDraw(Z)V

    return-void

    :cond_2c
    if-le p4, p5, :cond_33

    const v0, 0x7f0d00d3

    move v1, v0

    goto :goto_d

    :cond_33
    const v0, 0x7f0d00d2

    if-eqz p2, :cond_3b

    invoke-direct {p0, p2}, Lcom/google/googlenav/ui/android/TransitLineStationView;->a(Lcom/google/googlenav/bV;)V

    :cond_3b
    move v1, v0

    goto :goto_d
.end method
