.class public LaC/y;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/List;

.field private b:Ljava/lang/String;

.field private c:Lcom/google/android/maps/PlacesRefinementLinearLayout;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/view/View;

.field private final f:Lcom/google/googlenav/ui/wizard/gi;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Lcom/google/googlenav/ui/wizard/gi;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, LaC/y;->a:Ljava/util/List;

    .line 47
    iput-object p2, p0, LaC/y;->b:Ljava/lang/String;

    .line 48
    iput-object p3, p0, LaC/y;->f:Lcom/google/googlenav/ui/wizard/gi;

    .line 49
    return-void
.end method

.method private a(LaC/N;LaC/N;Landroid/view/View$OnClickListener;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 133
    const v0, 0x7f04013c

    invoke-static {v0, p4, v3}, Lcom/google/googlenav/ui/bn;->a(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 134
    const v1, 0x7f100344

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 135
    const v2, 0x7f100346

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 136
    invoke-static {v1, p1, p3}, LaC/N;->a(Landroid/view/View;LaC/N;Landroid/view/View$OnClickListener;)V

    .line 137
    invoke-static {v2, p2, p3}, LaC/N;->a(Landroid/view/View;LaC/N;Landroid/view/View$OnClickListener;)V

    .line 139
    if-eqz p5, :cond_26

    .line 140
    invoke-virtual {v1, v3, v3, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 141
    invoke-virtual {v2, v3, v3, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 146
    :goto_25
    return-object v0

    .line 143
    :cond_26
    invoke-virtual {v1, v3, v3, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 144
    invoke-virtual {v2, v3, v3, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_25
.end method

.method static synthetic a(LaC/y;)Lcom/google/googlenav/ui/wizard/gi;
    .registers 2
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, LaC/y;->f:Lcom/google/googlenav/ui/wizard/gi;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, LaC/y;->a:Ljava/util/List;

    return-object v0
.end method

.method public a(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 55
    const v0, 0x7f10033b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LaC/y;->d:Landroid/widget/TextView;

    .line 56
    iget-object v0, p0, LaC/y;->d:Landroid/widget/TextView;

    const/16 v1, 0x3ac

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    const v0, 0x7f10033c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, LaC/y;->e:Landroid/view/View;

    .line 58
    const v0, 0x7f10033d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/PlacesRefinementLinearLayout;

    iput-object v0, p0, LaC/y;->c:Lcom/google/android/maps/PlacesRefinementLinearLayout;

    .line 59
    iget-object v0, p0, LaC/y;->c:Lcom/google/android/maps/PlacesRefinementLinearLayout;

    iget-object v1, p0, LaC/y;->f:Lcom/google/googlenav/ui/wizard/gi;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/PlacesRefinementLinearLayout;->setPlacesWizardActions(Lcom/google/googlenav/ui/wizard/gi;)V

    .line 60
    iget-object v0, p0, LaC/y;->a:Ljava/util/List;

    iget-object v1, p0, LaC/y;->b:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, LaC/y;->a(Ljava/util/List;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public a(Ljava/util/List;Ljava/lang/String;)V
    .registers 14
    .parameter
    .parameter

    .prologue
    const/16 v10, 0xa

    const/4 v8, 0x1

    const/16 v1, 0x8

    const/4 v7, 0x0

    .line 68
    iput-object p1, p0, LaC/y;->a:Ljava/util/List;

    .line 69
    iput-object p2, p0, LaC/y;->b:Ljava/lang/String;

    .line 71
    iget-object v0, p0, LaC/y;->c:Lcom/google/android/maps/PlacesRefinementLinearLayout;

    invoke-virtual {v0}, Lcom/google/android/maps/PlacesRefinementLinearLayout;->removeAllViews()V

    .line 72
    iget-object v0, p0, LaC/y;->c:Lcom/google/android/maps/PlacesRefinementLinearLayout;

    invoke-virtual {v0, p2}, Lcom/google/android/maps/PlacesRefinementLinearLayout;->a(Ljava/lang/String;)V

    .line 74
    if-eqz p1, :cond_1c

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2c

    .line 75
    :cond_1c
    iget-object v0, p0, LaC/y;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 76
    iget-object v0, p0, LaC/y;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 77
    iget-object v0, p0, LaC/y;->c:Lcom/google/android/maps/PlacesRefinementLinearLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/PlacesRefinementLinearLayout;->setVisibility(I)V

    .line 129
    :goto_2b
    return-void

    .line 81
    :cond_2c
    iget-object v0, p0, LaC/y;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 82
    iget-object v0, p0, LaC/y;->e:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 83
    iget-object v0, p0, LaC/y;->c:Lcom/google/android/maps/PlacesRefinementLinearLayout;

    invoke-virtual {v0, v7}, Lcom/google/android/maps/PlacesRefinementLinearLayout;->setVisibility(I)V

    .line 85
    new-instance v3, LaC/z;

    invoke-direct {v3, p0}, LaC/z;-><init>(LaC/y;)V

    move v5, v7

    move v6, v8

    .line 109
    :goto_42
    if-ge v5, v10, :cond_89

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_89

    .line 110
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LaC/N;

    .line 111
    invoke-virtual {v1}, LaC/N;->e()Z

    move-result v0

    and-int v4, v6, v0

    .line 112
    const/4 v2, 0x0

    .line 113
    add-int/lit8 v0, v5, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_a3

    .line 114
    add-int/lit8 v0, v5, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaC/N;

    .line 115
    invoke-virtual {v0}, LaC/N;->e()Z

    move-result v2

    and-int/2addr v2, v4

    move v6, v2

    move-object v2, v0

    .line 118
    :goto_6e
    add-int/lit8 v9, v5, 0x2

    .line 119
    iget-object v4, p0, LaC/y;->c:Lcom/google/android/maps/PlacesRefinementLinearLayout;

    if-ge v9, v10, :cond_7a

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v9, v0, :cond_87

    :cond_7a
    move v5, v8

    :goto_7b
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, LaC/y;->a(LaC/N;LaC/N;Landroid/view/View$OnClickListener;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 121
    iget-object v1, p0, LaC/y;->c:Lcom/google/android/maps/PlacesRefinementLinearLayout;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/PlacesRefinementLinearLayout;->addView(Landroid/view/View;)V

    move v5, v9

    .line 122
    goto :goto_42

    :cond_87
    move v5, v7

    .line 119
    goto :goto_7b

    .line 124
    :cond_89
    if-eqz v6, :cond_97

    .line 125
    iget-object v0, p0, LaC/y;->d:Landroid/widget/TextView;

    const/16 v1, 0x3ad

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2b

    .line 127
    :cond_97
    iget-object v0, p0, LaC/y;->d:Landroid/widget/TextView;

    const/16 v1, 0x3ac

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2b

    :cond_a3
    move v6, v4

    goto :goto_6e
.end method
