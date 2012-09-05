.class public Lcom/google/googlenav/ui/view/android/C;
.super Lcom/google/googlenav/ui/view/android/S;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lau/b;Lcom/google/googlenav/ui/p;Z)V
    .registers 7

    invoke-static {p1, p2, p3, p4}, Lcom/google/googlenav/ui/view/android/C;->a(Landroid/view/ViewGroup;Lau/b;Lcom/google/googlenav/ui/p;Z)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/google/googlenav/ui/view/android/S;-><init>(Landroid/view/View;Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method private static a(Landroid/view/ViewGroup;Lau/b;Lcom/google/googlenav/ui/p;Z)Landroid/view/View;
    .registers 12

    const v7, 0x7f0f014f

    const v3, 0x7f0f013f

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    const v0, 0x7f0f014c

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_b8

    const v0, 0x7f0f0034

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    :goto_21
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0f0147

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0xf1

    invoke-static {v0, p1, p2, v2}, Lcom/google/googlenav/ui/view/android/C;->a(Landroid/view/View;Lau/b;Lcom/google/googlenav/ui/p;I)V

    const v0, 0x7f0f014d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    if-eqz p3, :cond_a8

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setClickable(Z)V

    new-instance v3, Lcom/google/googlenav/ui/view/android/E;

    invoke-direct {v3, p2}, Lcom/google/googlenav/ui/view/android/E;-><init>(Lcom/google/googlenav/ui/p;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0f014e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v3, 0x278

    invoke-static {v3}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_63
    invoke-virtual {p1}, Lau/b;->k()I

    move-result v0

    if-ne v0, v5, :cond_b0

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setClickable(Z)V

    new-instance v3, Lcom/google/googlenav/ui/view/android/F;

    invoke-direct {v3, p2}, Lcom/google/googlenav/ui/view/android/F;-><init>(Lcom/google/googlenav/ui/p;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0f0150

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v3, 0x493

    invoke-static {v3}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0f0151

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lau/b;->R()Lam/b;

    move-result-object v3

    invoke-static {v3}, Lcom/google/googlenav/ui/bq;->b(Lam/b;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_a4
    invoke-virtual {v1, v5}, Landroid/view/View;->setEnabled(Z)V

    return-object v1

    :cond_a8
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_63

    :cond_b0
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_a4

    :cond_b8
    move-object v1, v0

    goto/16 :goto_21
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 4

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v0

    const v1, 0x7f0d00e5

    const v2, 0x7f0d00e6

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/googlenav/ui/bw;->a(Ljava/lang/String;II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;I)V
    .registers 8

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    invoke-direct {v1, p0, p3}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/16 v3, 0x22

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method public static a(Landroid/view/View;Lau/b;Lcom/google/googlenav/ui/p;I)V
    .registers 11

    const v6, 0x7f0f014a

    const v5, 0x7f0d00e7

    const/4 v4, 0x1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v4}, Landroid/view/View;->setClickable(Z)V

    new-instance v0, Lcom/google/googlenav/ui/view/android/D;

    invoke-direct {v0, p2, p3}, Lcom/google/googlenav/ui/view/android/D;-><init>(Lcom/google/googlenav/ui/p;I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0f0148

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v2, 0x4c5

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0f0149

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lau/b;->au()Lau/x;

    move-result-object v2

    invoke-static {v2}, Lcom/google/googlenav/ui/bJ;->a(Lau/x;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/googlenav/ui/bw;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lau/b;->N()I

    move-result v0

    invoke-virtual {p1}, Lau/b;->ad()Lau/h;

    move-result-object v2

    invoke-virtual {v2}, Lau/h;->q()I

    move-result v2

    add-int/2addr v0, v2

    invoke-static {v0, v4}, Lcom/google/googlenav/ui/bq;->a(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/C;->a(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1}, Lau/b;->k()I

    move-result v2

    if-ne v2, v4, :cond_9c

    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string v0, " - "

    invoke-static {v1, v2, v0, v5}, Lcom/google/googlenav/ui/view/android/C;->a(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;I)V

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v0

    invoke-virtual {p1}, Lau/b;->aB()I

    move-result v3

    invoke-static {p1, v0, v3, v4}, Lcom/google/googlenav/ui/wizard/gO;->a(Lau/b;Lcom/google/googlenav/ui/bw;IZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ui/bw;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    const v3, 0x7f0d002c

    invoke-static {v1, v2, v0, v3}, Lcom/google/googlenav/ui/view/android/C;->a(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;I)V

    invoke-virtual {p0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_87
    const v0, 0x7f0f014b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p1}, Lau/b;->k()I

    move-result v1

    if-eqz v1, :cond_100

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_9b
    :goto_9b
    return-void

    :cond_9c
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {p1}, Lau/b;->k()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_e6

    sget-char v3, Lcom/google/googlenav/ui/bw;->bs:C

    invoke-static {v3}, Lcom/google/googlenav/ui/bw;->a(C)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/googlenav/ui/bw;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_ba
    :goto_ba
    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string v0, " - "

    invoke-static {v1, v2, v0, v5}, Lcom/google/googlenav/ui/view/android/C;->a(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;I)V

    invoke-virtual {p1}, Lau/b;->ao()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/C;->a(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string v0, " - "

    invoke-static {v1, v2, v0, v5}, Lcom/google/googlenav/ui/view/android/C;->a(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;I)V

    invoke-virtual {p1}, Lau/b;->aJ()Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f0d00e8

    invoke-static {v1, v2, v0, v3}, Lcom/google/googlenav/ui/view/android/C;->a(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;I)V

    invoke-virtual {p0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_87

    :cond_e6
    invoke-virtual {p1}, Lau/b;->k()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_ba

    sget-char v3, Lcom/google/googlenav/ui/bw;->bp:C

    invoke-static {v3}, Lcom/google/googlenav/ui/bw;->a(C)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/googlenav/ui/bw;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_ba

    :cond_100
    invoke-virtual {p1}, Lau/b;->ad()Lau/h;

    move-result-object v1

    if-eqz v1, :cond_9b

    sget-object v2, Lcom/google/googlenav/ui/view/android/G;->a:[I

    invoke-virtual {v1}, Lau/h;->r()Lau/f;

    move-result-object v1

    invoke-virtual {v1}, Lau/f;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_12e

    const v1, 0x7f02037e

    :goto_118
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_9b

    :pswitch_121
    const v1, 0x7f020380

    goto :goto_118

    :pswitch_125
    const v1, 0x7f02037f

    goto :goto_118

    :pswitch_129
    const v1, 0x7f020381

    goto :goto_118

    nop

    :pswitch_data_12e
    .packed-switch 0x1
        :pswitch_121
        :pswitch_125
        :pswitch_129
    .end packed-switch
.end method

.method protected static g()V
    .registers 0

    return-void
.end method


# virtual methods
.method public f()I
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/C;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09008b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method
