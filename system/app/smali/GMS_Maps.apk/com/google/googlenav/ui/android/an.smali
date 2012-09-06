.class public Lcom/google/googlenav/ui/android/an;
.super Lcom/google/googlenav/ui/view/d;
.source "SourceFile"


# instance fields
.field a:Lcom/google/googlenav/ui/android/ao;

.field b:Lcom/google/googlenav/ui/android/ao;

.field c:Lcom/google/googlenav/ui/android/ao;

.field private final f:Z

.field private final g:Z


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/android/ButtonContainer;Lcom/google/googlenav/ui/view/c;Lcom/google/googlenav/ai;ZZ)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 67
    const v0, 0x7f100397

    invoke-virtual {p1, v0}, Lcom/google/googlenav/ui/android/ButtonContainer;->a(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p1, v2}, Lcom/google/googlenav/ui/view/d;-><init>(Landroid/view/View;Landroid/view/ViewGroup;Z)V

    .line 69
    iput-boolean p4, p0, Lcom/google/googlenav/ui/android/an;->f:Z

    .line 70
    iput-boolean p5, p0, Lcom/google/googlenav/ui/android/an;->g:Z

    .line 71
    invoke-virtual {p0, p2}, Lcom/google/googlenav/ui/android/an;->a(Lcom/google/googlenav/ui/view/c;)V

    .line 72
    invoke-direct {p0, p3, p2}, Lcom/google/googlenav/ui/android/an;->a(Lcom/google/googlenav/ai;Lcom/google/googlenav/ui/view/c;)V

    .line 73
    invoke-direct {p0, p3, p2}, Lcom/google/googlenav/ui/android/an;->b(Lcom/google/googlenav/ai;Lcom/google/googlenav/ui/view/c;)V

    .line 74
    invoke-direct {p0, p3, p2}, Lcom/google/googlenav/ui/android/an;->c(Lcom/google/googlenav/ai;Lcom/google/googlenav/ui/view/c;)V

    .line 76
    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/an;->d()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f10039a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v2, v2}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 78
    iget-object v0, p0, Lcom/google/googlenav/ui/android/an;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 79
    return-void
.end method

.method private a(Lcom/google/googlenav/ai;Lcom/google/googlenav/ui/view/c;)V
    .registers 12
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 87
    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/an;->d()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f10039b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 89
    new-instance v1, Lcom/google/googlenav/ui/android/ao;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/an;->d()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {v1, v4, v0, v2, v2}, Lcom/google/googlenav/ui/android/ao;-><init>(Landroid/view/View;Landroid/view/ViewGroup;ZI)V

    iput-object v1, p0, Lcom/google/googlenav/ui/android/an;->a:Lcom/google/googlenav/ui/android/ao;

    .line 91
    iget-object v0, p0, Lcom/google/googlenav/ui/android/an;->a:Lcom/google/googlenav/ui/android/ao;

    invoke-virtual {v0, p2}, Lcom/google/googlenav/ui/android/ao;->a(Lcom/google/googlenav/ui/view/c;)V

    .line 93
    invoke-virtual {p1}, Lcom/google/googlenav/ai;->aC()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a9

    invoke-virtual {p1}, Lcom/google/googlenav/ai;->aC()Ljava/lang/String;

    move-result-object v0

    :goto_28
    sget-object v1, Lcom/google/googlenav/ui/aV;->al:Lcom/google/googlenav/ui/aV;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/aW;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v5

    .line 96
    invoke-virtual {p1}, Lcom/google/googlenav/ai;->aF()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/aV;->ak:Lcom/google/googlenav/ui/aV;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/aW;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v6

    .line 98
    invoke-virtual {p1}, Lcom/google/googlenav/ai;->aD()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/aV;->am:Lcom/google/googlenav/ui/aV;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/aW;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v7

    .line 100
    invoke-virtual {p1}, Lcom/google/googlenav/ai;->aE()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/aV;->am:Lcom/google/googlenav/ui/aV;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/aW;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v8

    .line 103
    const v0, 0x7f10039c

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 104
    const v1, 0x7f10039d

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 105
    const v2, 0x7f10039e

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 106
    const v3, 0x7f10039f

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 108
    invoke-static {v5}, Lcom/google/googlenav/ui/bn;->a(Lcom/google/googlenav/ui/aW;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    invoke-static {v6}, Lcom/google/googlenav/ui/bn;->a(Lcom/google/googlenav/ui/aW;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    invoke-static {v7}, Lcom/google/googlenav/ui/bn;->a(Lcom/google/googlenav/ui/aW;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    invoke-static {v8}, Lcom/google/googlenav/ui/bn;->a(Lcom/google/googlenav/ui/aW;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    const v0, 0x7f10001c

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 114
    const/16 v1, 0x34

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/aV;->ae:Lcom/google/googlenav/ui/aV;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/aW;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v1

    invoke-static {v1}, Lcom/google/googlenav/ui/bn;->a(Lcom/google/googlenav/ui/aW;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    return-void

    .line 93
    :cond_a9
    invoke-virtual {p1}, Lcom/google/googlenav/ai;->ak()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_28
.end method

.method private b(Lcom/google/googlenav/ai;Lcom/google/googlenav/ui/view/c;)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 126
    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/an;->d()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1003a0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 127
    const v0, 0x7f1003a2

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 128
    const v1, 0x7f1003a1

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 129
    iget-boolean v2, p0, Lcom/google/googlenav/ui/android/an;->f:Z

    if-eqz v2, :cond_5a

    .line 130
    new-instance v4, Lcom/google/googlenav/ui/android/ao;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/an;->d()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    const/4 v5, 0x2

    invoke-direct {v4, v3, v2, v6, v5}, Lcom/google/googlenav/ui/android/ao;-><init>(Landroid/view/View;Landroid/view/ViewGroup;ZI)V

    iput-object v4, p0, Lcom/google/googlenav/ui/android/an;->b:Lcom/google/googlenav/ui/android/ao;

    .line 132
    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/bn;->n()LS/g;

    move-result-object v2

    sget-char v4, Lcom/google/googlenav/ui/bn;->aV:C

    invoke-interface {v2, v4}, LS/g;->e(C)LS/f;

    move-result-object v2

    check-cast v2, LT/f;

    invoke-virtual {v2}, LT/f;->h()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 134
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 135
    const v0, 0x7f02000b

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 145
    :goto_50
    iget-object v0, p0, Lcom/google/googlenav/ui/android/an;->b:Lcom/google/googlenav/ui/android/ao;

    if-eqz v0, :cond_59

    .line 146
    iget-object v0, p0, Lcom/google/googlenav/ui/android/an;->b:Lcom/google/googlenav/ui/android/ao;

    invoke-virtual {v0, p2}, Lcom/google/googlenav/ui/android/ao;->a(Lcom/google/googlenav/ui/view/c;)V

    .line 148
    :cond_59
    return-void

    .line 136
    :cond_5a
    iget-boolean v1, p0, Lcom/google/googlenav/ui/android/an;->g:Z

    if-eqz v1, :cond_87

    .line 137
    new-instance v2, Lcom/google/googlenav/ui/android/ao;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/an;->d()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v4, 0x3

    invoke-direct {v2, v3, v1, v6, v4}, Lcom/google/googlenav/ui/android/ao;-><init>(Landroid/view/View;Landroid/view/ViewGroup;ZI)V

    iput-object v2, p0, Lcom/google/googlenav/ui/android/an;->b:Lcom/google/googlenav/ui/android/ao;

    .line 139
    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/bn;->n()LS/g;

    move-result-object v1

    sget-char v2, Lcom/google/googlenav/ui/bn;->aW:C

    invoke-interface {v1, v2}, LS/g;->e(C)LS/f;

    move-result-object v1

    check-cast v1, LT/f;

    invoke-virtual {v1}, LT/f;->h()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 141
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_50

    .line 143
    :cond_87
    const/16 v0, 0x8

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_50
.end method

.method private c(Lcom/google/googlenav/ai;Lcom/google/googlenav/ui/view/c;)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 157
    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/an;->d()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100398

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 158
    const v0, 0x7f100399

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 159
    const v1, 0x7f100194

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/ui/view/android/DistanceView;

    .line 160
    invoke-virtual {p1}, Lcom/google/googlenav/ai;->a()Lat/B;

    move-result-object v2

    if-eqz v2, :cond_51

    .line 161
    new-instance v4, Lcom/google/googlenav/ui/android/ao;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/an;->d()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    const/4 v5, 0x1

    invoke-direct {v4, v3, v2, v6, v5}, Lcom/google/googlenav/ui/android/ao;-><init>(Landroid/view/View;Landroid/view/ViewGroup;ZI)V

    iput-object v4, p0, Lcom/google/googlenav/ui/android/an;->c:Lcom/google/googlenav/ui/android/ao;

    .line 163
    iget-object v2, p0, Lcom/google/googlenav/ui/android/an;->c:Lcom/google/googlenav/ui/android/ao;

    invoke-virtual {v2, p2}, Lcom/google/googlenav/ui/android/ao;->a(Lcom/google/googlenav/ui/view/c;)V

    .line 164
    const v2, 0x7f0202e1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 165
    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/google/googlenav/ai;->a()Lat/B;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/google/googlenav/ui/view/android/aS;->a(Lcom/google/googlenav/ui/view/android/DistanceView;Lcom/google/googlenav/ui/view/android/HeadingView;Lat/B;)V

    .line 166
    const/high16 v0, 0x4140

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/view/android/DistanceView;->setTextSize(F)V

    .line 167
    invoke-virtual {v1, v6}, Lcom/google/googlenav/ui/view/android/DistanceView;->setVisibility(I)V

    .line 168
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 172
    :goto_50
    return-void

    .line 170
    :cond_51
    const/16 v0, 0x8

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_50
.end method
