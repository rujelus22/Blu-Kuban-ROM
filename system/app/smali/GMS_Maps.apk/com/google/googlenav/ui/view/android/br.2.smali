.class public Lcom/google/googlenav/ui/view/android/bR;
.super Lcom/google/googlenav/ui/view/android/ah;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/g;Lcom/google/googlenav/ui/view/p;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 33
    const v0, 0x7f0f001b

    invoke-direct {p0, p1, v0, p2}, Lcom/google/googlenav/ui/view/android/ah;-><init>(Lcom/google/googlenav/ui/g;ILcom/google/googlenav/ui/view/p;)V

    .line 34
    return-void
.end method

.method private static a(Landroid/view/View;II)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 183
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    return-void
.end method


# virtual methods
.method protected I_()V
    .registers 3

    .prologue
    .line 45
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-nez v0, :cond_10

    .line 46
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bR;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f02019e

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 50
    :cond_10
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bR;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 51
    return-void
.end method

.method public N_()V
    .registers 2

    .prologue
    .line 38
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-nez v0, :cond_a

    .line 39
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/bR;->requestWindowFeature(I)Z

    .line 41
    :cond_a
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Lcom/google/googlenav/ui/g;)V
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v10, 0x7f1003ce

    const v9, 0x7f1003cd

    const/16 v5, 0x40e

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 71
    const v0, 0x7f100354

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 72
    const v0, 0x7f1003c9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 74
    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 75
    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 76
    const v0, 0x7f1003cf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 79
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-nez v0, :cond_ee

    .line 80
    invoke-static {v5}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    :goto_3e
    const v0, 0x7f1003c6

    const/16 v5, 0x3f8

    invoke-static {p1, v0, v5}, Lcom/google/googlenav/ui/view/android/bR;->a(Landroid/view/View;II)V

    .line 88
    const v0, 0x7f1003c7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 89
    const/16 v5, 0x3fc

    invoke-static {v5}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    new-instance v5, Lcom/google/googlenav/ui/view/android/bS;

    invoke-direct {v5, p0, p3}, Lcom/google/googlenav/ui/view/android/bS;-><init>(Lcom/google/googlenav/ui/view/android/bR;Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    const v0, 0x7f1003c8

    const/16 v5, 0x3f9

    invoke-static {p1, v0, v5}, Lcom/google/googlenav/ui/view/android/bR;->a(Landroid/view/View;II)V

    .line 99
    const/16 v0, 0x3fb

    invoke-static {p1, v9, v0}, Lcom/google/googlenav/ui/view/android/bR;->a(Landroid/view/View;II)V

    .line 100
    const/16 v0, 0x3f4

    invoke-static {p1, v10, v0}, Lcom/google/googlenav/ui/view/android/bR;->a(Landroid/view/View;II)V

    .line 102
    const v0, 0x7f1003cb

    const/16 v5, 0x3fa

    invoke-static {p1, v0, v5}, Lcom/google/googlenav/ui/view/android/bR;->a(Landroid/view/View;II)V

    .line 104
    const v0, 0x7f1003cc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v5, 0x3f7

    invoke-static {v5}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v5

    new-array v9, v1, [Ljava/lang/String;

    const-string v10, "google.com/places"

    aput-object v10, v9, v2

    invoke-static {v5, v9}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    const v0, 0x7f1003cf

    const/16 v5, 0x3f5

    invoke-static {p1, v0, v5}, Lcom/google/googlenav/ui/view/android/bR;->a(Landroid/view/View;II)V

    .line 111
    if-eqz p2, :cond_ab

    .line 112
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    :cond_ab
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_f7

    move v0, v1

    :goto_ba
    invoke-virtual {v6, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 117
    new-instance v0, Lcom/google/googlenav/ui/view/android/bT;

    invoke-direct {v0, p0, v3, v6}, Lcom/google/googlenav/ui/view/android/bT;-><init>(Lcom/google/googlenav/ui/view/android/bR;Landroid/widget/TextView;Landroid/widget/Button;)V

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 136
    const v0, 0x7f1003c5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 137
    const v0, 0x7f1003ca

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 140
    new-instance v0, Lcom/google/googlenav/ui/view/android/bU;

    move-object v1, p0

    move-object v2, p4

    invoke-direct/range {v0 .. v9}, Lcom/google/googlenav/ui/view/android/bU;-><init>(Lcom/google/googlenav/ui/view/android/bR;Lcom/google/googlenav/ui/g;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/view/View;)V

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    new-instance v0, Lcom/google/googlenav/ui/view/android/bV;

    invoke-direct {v0, p0, p4}, Lcom/google/googlenav/ui/view/android/bV;-><init>(Lcom/google/googlenav/ui/view/android/bR;Lcom/google/googlenav/ui/g;)V

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    new-instance v0, Lcom/google/googlenav/ui/view/android/bW;

    invoke-direct {v0, p0, p4, v3}, Lcom/google/googlenav/ui/view/android/bW;-><init>(Lcom/google/googlenav/ui/view/android/bR;Lcom/google/googlenav/ui/g;Landroid/widget/TextView;)V

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    return-void

    .line 82
    :cond_ee
    invoke-static {v5}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/bR;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_3e

    :cond_f7
    move v0, v2

    .line 115
    goto :goto_ba
.end method

.method protected c()Landroid/view/View;
    .registers 5

    .prologue
    .line 55
    sget-object v0, Lcom/google/googlenav/ui/view/android/bR;->f:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-virtual {v0}, Lcom/google/googlenav/android/BaseMapsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040166

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 56
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bR;->n()Lcom/google/googlenav/ui/view/y;

    move-result-object v1

    .line 57
    iget-object v1, v1, Lcom/google/googlenav/ui/view/y;->h:Ljava/lang/String;

    sget-object v2, Lcom/google/googlenav/ui/view/android/bR;->f:Lcom/google/googlenav/android/BaseMapsActivity;

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bR;->g:Lcom/google/googlenav/ui/g;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/googlenav/ui/view/android/bR;->a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Lcom/google/googlenav/ui/g;)V

    .line 59
    return-object v0
.end method

.method public synthetic i()Lcom/google/googlenav/ui/view/p;
    .registers 2

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bR;->n()Lcom/google/googlenav/ui/view/y;

    move-result-object v0

    return-object v0
.end method

.method public n()Lcom/google/googlenav/ui/view/y;
    .registers 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bR;->a:Lcom/google/googlenav/ui/view/p;

    check-cast v0, Lcom/google/googlenav/ui/view/y;

    return-object v0
.end method
