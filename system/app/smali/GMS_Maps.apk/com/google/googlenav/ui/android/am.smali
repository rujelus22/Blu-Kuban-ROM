.class public Lcom/google/googlenav/ui/android/am;
.super Lcom/google/googlenav/ui/view/d;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/android/ButtonContainer;Lcom/google/googlenav/ui/view/c;LaM/bj;Lcom/google/googlenav/ai;LS/f;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 40
    const v0, 0x7f100396

    invoke-virtual {p1, v0}, Lcom/google/googlenav/ui/android/ButtonContainer;->a(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p1, v4}, Lcom/google/googlenav/ui/view/d;-><init>(Landroid/view/View;Landroid/view/ViewGroup;Z)V

    .line 41
    invoke-virtual {p0, p2}, Lcom/google/googlenav/ui/android/am;->a(Lcom/google/googlenav/ui/view/c;)V

    .line 43
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v1

    .line 44
    invoke-virtual {p3, p4, v1}, LaM/bj;->a(Lcom/google/googlenav/ai;Ljava/util/List;)V

    .line 47
    iget-object v0, p0, Lcom/google/googlenav/ui/android/am;->d:Landroid/view/View;

    const v2, 0x7f10001c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 48
    const/16 v2, 0x34

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/aV;->ae:Lcom/google/googlenav/ui/aV;

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/aW;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/google/googlenav/ui/android/am;->a(Landroid/widget/TextView;Lcom/google/googlenav/ui/aW;Lcom/google/googlenav/ui/aW;)V

    .line 52
    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/android/am;->a(Ljava/util/List;)V

    .line 55
    iget-object v0, p0, Lcom/google/googlenav/ui/android/am;->d:Landroid/view/View;

    const v1, 0x7f10001a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 56
    if-eqz p5, :cond_57

    .line 57
    check-cast p5, LT/f;

    invoke-virtual {p5}, LT/f;->h()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 58
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 59
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 64
    :goto_51
    iget-object v0, p0, Lcom/google/googlenav/ui/android/am;->d:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 65
    return-void

    .line 61
    :cond_57
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_51
.end method

.method private a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/text/SpannableStringBuilder;I)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 125
    .line 126
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gt v0, p4, :cond_24

    .line 127
    const v0, 0x7f0401b9

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 128
    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 129
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 130
    add-int/lit8 v1, p4, 0x1

    invoke-virtual {p2, v0, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 134
    :goto_1d
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 136
    return-void

    .line 132
    :cond_24
    invoke-virtual {p2, p4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    goto :goto_1d
.end method

.method private a(Landroid/widget/TextView;Lcom/google/googlenav/ui/aW;Lcom/google/googlenav/ui/aW;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 139
    if-eqz p2, :cond_1a

    .line 140
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/googlenav/ui/aW;

    aput-object p2, v0, v2

    const/4 v1, 0x1

    aput-object p3, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/cx;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ui/bn;->a(Ljava/util/List;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 145
    :goto_19
    return-void

    .line 143
    :cond_1a
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_19
.end method

.method private a(Ljava/util/List;)V
    .registers 10
    .parameter

    .prologue
    const/16 v7, 0x8

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 71
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9e

    .line 72
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/aW;

    .line 74
    const/4 v1, 0x0

    .line 75
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v2, :cond_a1

    .line 76
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/ui/aW;

    move-object v2, v1

    move v3, v4

    .line 80
    :goto_20
    iget-object v1, p0, Lcom/google/googlenav/ui/android/am;->d:Landroid/view/View;

    const v6, 0x7f10001b

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 81
    invoke-direct {p0, v1, v0, v2}, Lcom/google/googlenav/ui/android/am;->a(Landroid/widget/TextView;Lcom/google/googlenav/ui/aW;Lcom/google/googlenav/ui/aW;)V

    .line 83
    iget-object v0, p0, Lcom/google/googlenav/ui/android/am;->d:Landroid/view/View;

    const v1, 0x7f10004c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 84
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v4, :cond_9b

    .line 85
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 87
    iget-object v1, p0, Lcom/google/googlenav/ui/android/am;->d:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 90
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6}, Landroid/text/SpannableStringBuilder;-><init>()V

    move v2, v3

    move v3, v5

    .line 92
    :goto_57
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_7b

    .line 93
    add-int/lit8 v4, v2, 0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/googlenav/ui/aW;

    .line 94
    if-nez v2, :cond_69

    move v2, v4

    .line 95
    goto :goto_57

    .line 97
    :cond_69
    invoke-static {v2, v6}, Lcom/google/googlenav/ui/bn;->a(Lcom/google/googlenav/ui/aW;Landroid/text/SpannableStringBuilder;)V

    .line 98
    iget-boolean v2, v2, Lcom/google/googlenav/ui/aW;->d:Z

    if-eqz v2, :cond_9f

    .line 99
    add-int/lit8 v2, v3, 0x1

    invoke-direct {p0, v1, v0, v6, v3}, Lcom/google/googlenav/ui/android/am;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/text/SpannableStringBuilder;I)V

    .line 100
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->clear()V

    :goto_78
    move v3, v2

    move v2, v4

    .line 102
    goto :goto_57

    .line 103
    :cond_7b
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_8a

    .line 104
    add-int/lit8 v2, v3, 0x1

    invoke-direct {p0, v1, v0, v6, v3}, Lcom/google/googlenav/ui/android/am;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/text/SpannableStringBuilder;I)V

    .line 105
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->clear()V

    move v3, v2

    .line 109
    :cond_8a
    :goto_8a
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v3, v1, :cond_9e

    .line 110
    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    move v3, v1

    goto :goto_8a

    .line 113
    :cond_9b
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 116
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
