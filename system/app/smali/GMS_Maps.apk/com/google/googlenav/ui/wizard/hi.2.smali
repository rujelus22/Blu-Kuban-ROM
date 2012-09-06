.class public Lcom/google/googlenav/ui/wizard/hI;
.super Lcom/google/googlenav/ui/view/android/V;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/hG;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/hG;)V
    .registers 3
    .parameter

    .prologue
    .line 784
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/hI;->a:Lcom/google/googlenav/ui/wizard/hG;

    .line 785
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-eqz v0, :cond_13

    const v0, 0x7f0f001b

    :goto_f
    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ui/view/android/V;-><init>(Lcom/google/googlenav/ui/g;I)V

    .line 787
    return-void

    .line 785
    :cond_13
    invoke-static {}, Lcom/google/googlenav/ui/wizard/hI;->p()I

    move-result v0

    goto :goto_f
.end method


# virtual methods
.method public O_()Z
    .registers 2

    .prologue
    .line 797
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method protected c()Landroid/view/View;
    .registers 15

    .prologue
    .line 810
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/hI;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-eqz v0, :cond_242

    const v0, 0x7f040173

    :goto_11
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 814
    const v1, 0x7f10001e

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 815
    const v2, 0x7f100191

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 816
    const v3, 0x7f100246

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 817
    const v3, 0x7f1003e1

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 818
    const v4, 0x7f100247

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 819
    const v4, 0x7f1003e2

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 821
    const v5, 0x7f1003e3

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    .line 822
    const v6, 0x7f1003e4

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 823
    const v7, 0x7f100248

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 824
    const v7, 0x7f1003e5

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 825
    const v8, 0x7f1003e6

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 827
    iget-object v8, p0, Lcom/google/googlenav/ui/wizard/hI;->a:Lcom/google/googlenav/ui/wizard/hG;

    invoke-static {v8}, Lcom/google/googlenav/ui/wizard/hG;->a(Lcom/google/googlenav/ui/wizard/hG;)Z

    move-result v8

    if-eqz v8, :cond_247

    const/16 v8, 0x446

    .line 830
    :goto_7d
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v13

    if-eqz v13, :cond_8d

    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/googlenav/K;->an()Z

    move-result v13

    if-eqz v13, :cond_24b

    .line 831
    :cond_8d
    invoke-static {v8}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v8

    sget-object v13, Lcom/google/googlenav/ui/aV;->aN:Lcom/google/googlenav/ui/aV;

    invoke-static {v8, v13}, Lcom/google/googlenav/ui/bn;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)Landroid/text/SpannableStringBuilder;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 838
    :goto_9a
    const/4 v1, 0x3

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setLines(I)V

    .line 839
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hI;->a:Lcom/google/googlenav/ui/wizard/hG;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/hG;->b:Lcom/google/googlenav/ui/wizard/hP;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/hP;->j:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 840
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hI;->a:Lcom/google/googlenav/ui/wizard/hG;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/hG;->a(Lcom/google/googlenav/ui/wizard/hG;)Z

    move-result v1

    if-eqz v1, :cond_25d

    const/16 v1, 0x441

    .line 843
    :goto_b1
    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 845
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hI;->a:Lcom/google/googlenav/ui/wizard/hG;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/hG;->b:Lcom/google/googlenav/ui/wizard/hP;

    iget v1, v1, Lcom/google/googlenav/ui/wizard/hP;->g:I

    const/4 v8, 0x4

    if-ne v1, v8, :cond_269

    .line 846
    new-instance v8, Landroid/text/SpannableStringBuilder;

    invoke-direct {v8}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 847
    const/16 v1, 0x452

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v9, Lcom/google/googlenav/ui/aV;->t:Lcom/google/googlenav/ui/aV;

    invoke-static {v1, v9}, Lcom/google/googlenav/ui/bn;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 850
    const/16 v1, 0xa

    invoke-virtual {v8, v1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 851
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hI;->a:Lcom/google/googlenav/ui/wizard/hG;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/hG;->b:Lcom/google/googlenav/ui/wizard/hP;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/hP;->l:Lat/B;

    if-eqz v1, :cond_261

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hI;->a:Lcom/google/googlenav/ui/wizard/hG;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/hG;->b:Lcom/google/googlenav/ui/wizard/hP;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/hP;->l:Lat/B;

    invoke-virtual {v1}, Lat/B;->toString()Ljava/lang/String;

    move-result-object v1

    .line 854
    :goto_ec
    sget-object v9, Lcom/google/googlenav/ui/aV;->bt:Lcom/google/googlenav/ui/aV;

    invoke-static {v1, v9}, Lcom/google/googlenav/ui/bn;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 856
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 858
    new-instance v1, Lcom/google/googlenav/ui/wizard/hJ;

    invoke-direct {v1, p0, v2}, Lcom/google/googlenav/ui/wizard/hJ;-><init>(Lcom/google/googlenav/ui/wizard/hI;Landroid/widget/EditText;)V

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 867
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hI;->a:Lcom/google/googlenav/ui/wizard/hG;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/hG;->b:Lcom/google/googlenav/ui/wizard/hP;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/hP;->m:Lcom/google/googlenav/ui/e;

    if-nez v1, :cond_114

    .line 868
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hI;->a:Lcom/google/googlenav/ui/wizard/hG;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/hG;->b:Lcom/google/googlenav/ui/wizard/hP;

    new-instance v3, Lcom/google/googlenav/ui/e;

    const/4 v9, 0x0

    invoke-direct {v3, v9}, Lcom/google/googlenav/ui/e;-><init>(Z)V

    iput-object v3, v1, Lcom/google/googlenav/ui/wizard/hP;->m:Lcom/google/googlenav/ui/e;

    .line 870
    :cond_114
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hI;->a:Lcom/google/googlenav/ui/wizard/hG;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/hG;->b:Lcom/google/googlenav/ui/wizard/hP;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/hP;->m:Lcom/google/googlenav/ui/e;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/e;->a()Z

    move-result v1

    invoke-virtual {v5, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 871
    new-instance v1, Lcom/google/googlenav/ui/wizard/hK;

    invoke-direct {v1, p0, v5}, Lcom/google/googlenav/ui/wizard/hK;-><init>(Lcom/google/googlenav/ui/wizard/hI;Landroid/widget/CheckBox;)V

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 879
    const/16 v1, 0x44b

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/google/googlenav/ui/aV;->t:Lcom/google/googlenav/ui/aV;

    invoke-static {v1, v3}, Lcom/google/googlenav/ui/bn;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 882
    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 883
    const/16 v1, 0x454

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/google/googlenav/ui/aV;->Y:Lcom/google/googlenav/ui/aV;

    invoke-static {v1, v3}, Lcom/google/googlenav/ui/bn;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 886
    const/16 v1, 0x20

    invoke-virtual {v8, v1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 887
    const/16 v1, 0x455

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/google/googlenav/ui/aV;->Z:Lcom/google/googlenav/ui/aV;

    invoke-static {v1, v3}, Lcom/google/googlenav/ui/bn;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 890
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 891
    new-instance v1, Lcom/google/googlenav/ui/wizard/hL;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/hL;-><init>(Lcom/google/googlenav/ui/wizard/hI;)V

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 907
    :goto_169
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hI;->a:Lcom/google/googlenav/ui/wizard/hG;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/hG;->a(Lcom/google/googlenav/ui/wizard/hG;)Z

    move-result v1

    if-eqz v1, :cond_295

    .line 909
    const v1, 0x7f1003e8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 910
    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/hI;->a:Lcom/google/googlenav/ui/wizard/hG;

    iget-object v3, v3, Lcom/google/googlenav/ui/wizard/hG;->b:Lcom/google/googlenav/ui/wizard/hP;

    iget-object v3, v3, Lcom/google/googlenav/ui/wizard/hP;->k:Lcom/google/googlenav/ui/e;

    if-nez v3, :cond_18e

    .line 911
    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/hI;->a:Lcom/google/googlenav/ui/wizard/hG;

    iget-object v3, v3, Lcom/google/googlenav/ui/wizard/hG;->b:Lcom/google/googlenav/ui/wizard/hP;

    new-instance v4, Lcom/google/googlenav/ui/e;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/google/googlenav/ui/e;-><init>(Z)V

    iput-object v4, v3, Lcom/google/googlenav/ui/wizard/hP;->k:Lcom/google/googlenav/ui/e;

    .line 913
    :cond_18e
    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/hI;->a:Lcom/google/googlenav/ui/wizard/hG;

    iget-object v3, v3, Lcom/google/googlenav/ui/wizard/hG;->b:Lcom/google/googlenav/ui/wizard/hP;

    iget-object v3, v3, Lcom/google/googlenav/ui/wizard/hP;->k:Lcom/google/googlenav/ui/e;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/e;->a()Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 916
    const v3, 0x7f1003e9

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 917
    invoke-static {}, Lcom/google/googlenav/ui/wizard/hG;->z()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/google/googlenav/ui/aV;->t:Lcom/google/googlenav/ui/aV;

    invoke-static {v4, v5}, Lcom/google/googlenav/ui/bn;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 920
    const v3, 0x7f1003eb

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 922
    const/16 v4, 0x44d

    invoke-static {v4}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/google/googlenav/ui/aV;->Y:Lcom/google/googlenav/ui/aV;

    invoke-static {v4, v5}, Lcom/google/googlenav/ui/bn;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 925
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_28e

    .line 926
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 932
    :goto_1d3
    const v4, 0x7f1003e7

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 933
    new-instance v5, Lcom/google/googlenav/ui/wizard/hM;

    invoke-direct {v5, p0, v1, v3}, Lcom/google/googlenav/ui/wizard/hM;-><init>(Lcom/google/googlenav/ui/wizard/hI;Landroid/widget/CheckBox;Landroid/widget/TextView;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 953
    :goto_1e4
    const v1, 0x7f10002e

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 954
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 957
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v1

    if-eqz v1, :cond_2bb

    const v1, 0x7f100031

    .line 958
    :goto_1fa
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v3

    if-eqz v3, :cond_2c0

    const v3, 0x7f100030

    .line 960
    :goto_203
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 961
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 962
    iget-object v4, p0, Lcom/google/googlenav/ui/wizard/hI;->a:Lcom/google/googlenav/ui/wizard/hG;

    invoke-static {v4}, Lcom/google/googlenav/ui/wizard/hG;->a(Lcom/google/googlenav/ui/wizard/hG;)Z

    move-result v4

    if-eqz v4, :cond_2c5

    .line 963
    const/16 v4, 0x457

    invoke-static {v4}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 967
    :goto_21e
    new-instance v4, Lcom/google/googlenav/ui/wizard/hN;

    invoke-direct {v4, p0, v2}, Lcom/google/googlenav/ui/wizard/hN;-><init>(Lcom/google/googlenav/ui/wizard/hI;Landroid/widget/EditText;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 976
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 977
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 978
    const/16 v2, 0x6c

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 979
    new-instance v2, Lcom/google/googlenav/ui/wizard/hO;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/wizard/hO;-><init>(Lcom/google/googlenav/ui/wizard/hI;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 986
    return-object v0

    .line 810
    :cond_242
    const v0, 0x7f040172

    goto/16 :goto_11

    .line 827
    :cond_247
    const/16 v8, 0x445

    goto/16 :goto_7d

    .line 834
    :cond_24b
    iget-object v13, p0, Lcom/google/googlenav/ui/wizard/hI;->a:Lcom/google/googlenav/ui/wizard/hG;

    iget-object v13, v13, Lcom/google/googlenav/ui/wizard/hG;->h:Lcom/google/googlenav/ui/view/android/bb;

    invoke-static {v8}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v13, v8}, Lcom/google/googlenav/ui/view/android/bb;->setTitle(Ljava/lang/CharSequence;)V

    .line 835
    const/16 v8, 0x8

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_9a

    .line 840
    :cond_25d
    const/16 v1, 0x440

    goto/16 :goto_b1

    .line 851
    :cond_261
    const/16 v1, 0x451

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_ec

    .line 898
    :cond_269
    const/16 v1, 0x8

    invoke-virtual {v9, v1}, Landroid/view/View;->setVisibility(I)V

    .line 899
    const/16 v1, 0x8

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 900
    const/16 v1, 0x8

    invoke-virtual {v10, v1}, Landroid/view/View;->setVisibility(I)V

    .line 901
    const/16 v1, 0x8

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 902
    const/16 v1, 0x8

    invoke-virtual {v11, v1}, Landroid/view/View;->setVisibility(I)V

    .line 903
    const/16 v1, 0x8

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 904
    const/16 v1, 0x8

    invoke-virtual {v12, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_169

    .line 928
    :cond_28e
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1d3

    .line 948
    :cond_295
    const v1, 0x7f1003e7

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 949
    const v1, 0x7f1003ea

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 950
    const v1, 0x7f1003eb

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1e4

    .line 957
    :cond_2bb
    const v1, 0x7f100030

    goto/16 :goto_1fa

    .line 958
    :cond_2c0
    const v3, 0x7f100031

    goto/16 :goto_203

    .line 965
    :cond_2c5
    const/16 v4, 0xdb

    invoke-static {v4}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_21e
.end method

.method protected d()V
    .registers 3

    .prologue
    .line 802
    invoke-super {p0}, Lcom/google/googlenav/ui/view/android/V;->d()V

    .line 805
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/hI;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 806
    return-void
.end method

.method protected e()Z
    .registers 2

    .prologue
    .line 791
    const/4 v0, 0x0

    return v0
.end method
