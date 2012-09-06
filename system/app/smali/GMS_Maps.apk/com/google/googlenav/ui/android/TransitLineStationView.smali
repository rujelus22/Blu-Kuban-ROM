.class public Lcom/google/googlenav/ui/android/TransitLineStationView;
.super Lcom/google/googlenav/ui/android/TransitStationView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/android/TransitStationView;-><init>(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/android/TransitStationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method private a(Lcom/google/googlenav/cp;)V
    .registers 8
    .parameter

    .prologue
    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 68
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 69
    invoke-virtual {p1}, Lcom/google/googlenav/cp;->d()I

    move-result v3

    if-le v3, v0, :cond_1c

    :goto_d
    new-array v3, v0, [Lcom/google/googlenav/cd;

    move v0, v1

    .line 71
    :goto_10
    array-length v4, v3

    if-ge v0, v4, :cond_21

    .line 72
    invoke-virtual {p1, v0}, Lcom/google/googlenav/cp;->a(I)Lcom/google/googlenav/cd;

    move-result-object v4

    aput-object v4, v3, v0

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 69
    :cond_1c
    invoke-virtual {p1}, Lcom/google/googlenav/cp;->d()I

    move-result v0

    goto :goto_d

    .line 75
    :cond_21
    new-instance v0, Lcom/google/googlenav/cp;

    invoke-virtual {p1}, Lcom/google/googlenav/cp;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/googlenav/cp;->e()Z

    move-result v5

    invoke-direct {v0, v4, v3, v5}, Lcom/google/googlenav/cp;-><init>(Ljava/lang/String;[Lcom/google/googlenav/cd;Z)V

    .line 77
    invoke-virtual {p0, v2, v0}, Lcom/google/googlenav/ui/android/TransitLineStationView;->a(Landroid/text/SpannableStringBuilder;Lcom/google/googlenav/cp;)V

    .line 79
    const v0, 0x7f10044a

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TransitLineStationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 80
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 82
    return-void
.end method


# virtual methods
.method public setTransitLineStation(Lcom/google/googlenav/ca;Lcom/google/googlenav/cp;Lcom/google/googlenav/ui/g;II)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 42
    invoke-virtual {p0, p1, p3}, Lcom/google/googlenav/ui/android/TransitLineStationView;->setTransitStation(Lcom/google/googlenav/ca;Lcom/google/googlenav/ui/g;)V

    .line 43
    invoke-virtual {p0, v3}, Lcom/google/googlenav/ui/android/TransitLineStationView;->setClickable(Z)V

    .line 46
    if-ge p4, p5, :cond_2c

    .line 47
    const v0, 0x7f0f00e9

    move v1, v0

    .line 57
    :goto_d
    const v0, 0x7f100090

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TransitLineStationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 58
    invoke-virtual {p1}, Lcom/google/googlenav/ca;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/TransitLineStationView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 60
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 64
    invoke-virtual {p0, v3}, Lcom/google/googlenav/ui/android/TransitLineStationView;->setWillNotDraw(Z)V

    .line 65
    return-void

    .line 48
    :cond_2c
    if-le p4, p5, :cond_33

    .line 49
    const v0, 0x7f0f00eb

    move v1, v0

    goto :goto_d

    .line 51
    :cond_33
    const v0, 0x7f0f00ea

    .line 52
    if-eqz p2, :cond_3b

    .line 53
    invoke-direct {p0, p2}, Lcom/google/googlenav/ui/android/TransitLineStationView;->a(Lcom/google/googlenav/cp;)V

    :cond_3b
    move v1, v0

    goto :goto_d
.end method
