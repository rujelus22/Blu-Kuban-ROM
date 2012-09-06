.class public Lcom/google/googlenav/ui/wizard/hQ;
.super Lcom/google/googlenav/ui/view/android/V;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/hG;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/hG;)V
    .registers 3
    .parameter

    .prologue
    .line 994
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/hQ;->a:Lcom/google/googlenav/ui/wizard/hG;

    .line 995
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-eqz v0, :cond_13

    const v0, 0x7f0f001b

    :goto_f
    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ui/view/android/V;-><init>(Lcom/google/googlenav/ui/g;I)V

    .line 997
    return-void

    .line 995
    :cond_13
    invoke-static {}, Lcom/google/googlenav/ui/wizard/hQ;->p()I

    move-result v0

    goto :goto_f
.end method


# virtual methods
.method public O_()Z
    .registers 2

    .prologue
    .line 1007
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
    .registers 10

    .prologue
    const v4, 0x7f100030

    const/16 v3, 0x456

    const/16 v8, 0x8

    const/4 v7, 0x0

    const/16 v6, 0xa

    .line 1012
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/hQ;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040175

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1015
    const v1, 0x7f10001e

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1016
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/K;->an()Z

    move-result v2

    if-eqz v2, :cond_219

    .line 1017
    :cond_31
    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/aV;->aN:Lcom/google/googlenav/ui/aV;

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/bn;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1024
    :goto_3e
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1027
    const/16 v1, 0x47b

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/google/googlenav/ui/aV;->t:Lcom/google/googlenav/ui/aV;

    invoke-static {v1, v3}, Lcom/google/googlenav/ui/bn;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1029
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hQ;->a:Lcom/google/googlenav/ui/wizard/hG;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/hG;->b:Lcom/google/googlenav/ui/wizard/hP;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/hP;->h:Ljava/lang/String;

    invoke-static {v1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_70

    .line 1030
    invoke-virtual {v2, v6}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 1031
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hQ;->a:Lcom/google/googlenav/ui/wizard/hG;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/hG;->b:Lcom/google/googlenav/ui/wizard/hP;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/hP;->h:Ljava/lang/String;

    sget-object v3, Lcom/google/googlenav/ui/aV;->J:Lcom/google/googlenav/ui/aV;

    invoke-static {v1, v3}, Lcom/google/googlenav/ui/bn;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1033
    :cond_70
    const v1, 0x7f1003ec

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1034
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1035
    new-instance v3, Lcom/google/googlenav/ui/wizard/hR;

    invoke-direct {v3, p0}, Lcom/google/googlenav/ui/wizard/hR;-><init>(Lcom/google/googlenav/ui/wizard/hQ;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1043
    const v1, 0x7f1003ed

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1044
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1045
    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/hQ;->a:Lcom/google/googlenav/ui/wizard/hG;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/wizard/hG;->e()Z

    move-result v3

    if-eqz v3, :cond_229

    .line 1047
    const/16 v3, 0x45c

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/google/googlenav/ui/aV;->t:Lcom/google/googlenav/ui/aV;

    invoke-static {v3, v5}, Lcom/google/googlenav/ui/bn;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1049
    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/hQ;->a:Lcom/google/googlenav/ui/wizard/hG;

    iget-object v3, v3, Lcom/google/googlenav/ui/wizard/hG;->b:Lcom/google/googlenav/ui/wizard/hP;

    iget-object v3, v3, Lcom/google/googlenav/ui/wizard/hP;->i:Ljava/lang/String;

    invoke-static {v3}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c5

    .line 1050
    invoke-virtual {v2, v6}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 1051
    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/hQ;->a:Lcom/google/googlenav/ui/wizard/hG;

    iget-object v3, v3, Lcom/google/googlenav/ui/wizard/hG;->b:Lcom/google/googlenav/ui/wizard/hP;

    iget-object v3, v3, Lcom/google/googlenav/ui/wizard/hP;->i:Ljava/lang/String;

    sget-object v5, Lcom/google/googlenav/ui/aV;->J:Lcom/google/googlenav/ui/aV;

    invoke-static {v3, v5}, Lcom/google/googlenav/ui/bn;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1053
    :cond_c5
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1054
    new-instance v3, Lcom/google/googlenav/ui/wizard/hS;

    invoke-direct {v3, p0}, Lcom/google/googlenav/ui/wizard/hS;-><init>(Lcom/google/googlenav/ui/wizard/hQ;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1086
    :goto_d0
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1087
    const/16 v1, 0x442

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/google/googlenav/ui/aV;->t:Lcom/google/googlenav/ui/aV;

    invoke-static {v1, v3}, Lcom/google/googlenav/ui/bn;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1089
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hQ;->a:Lcom/google/googlenav/ui/wizard/hG;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/hG;->b:Lcom/google/googlenav/ui/wizard/hP;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/hP;->j:Ljava/lang/String;

    invoke-static {v1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_108

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hQ;->a:Lcom/google/googlenav/ui/wizard/hG;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/hG;->b:Lcom/google/googlenav/ui/wizard/hP;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/hP;->l:Lat/B;

    if-nez v1, :cond_108

    .line 1090
    invoke-virtual {v2, v6}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 1091
    const/16 v1, 0x444

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/google/googlenav/ui/aV;->J:Lcom/google/googlenav/ui/aV;

    invoke-static {v1, v3}, Lcom/google/googlenav/ui/bn;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1094
    :cond_108
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hQ;->a:Lcom/google/googlenav/ui/wizard/hG;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/hG;->b:Lcom/google/googlenav/ui/wizard/hP;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/hP;->j:Ljava/lang/String;

    invoke-static {v1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_126

    .line 1095
    invoke-virtual {v2, v6}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 1096
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hQ;->a:Lcom/google/googlenav/ui/wizard/hG;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/hG;->b:Lcom/google/googlenav/ui/wizard/hP;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/hP;->j:Ljava/lang/String;

    sget-object v3, Lcom/google/googlenav/ui/aV;->J:Lcom/google/googlenav/ui/aV;

    invoke-static {v1, v3}, Lcom/google/googlenav/ui/bn;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1098
    :cond_126
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hQ;->a:Lcom/google/googlenav/ui/wizard/hG;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/hG;->b:Lcom/google/googlenav/ui/wizard/hP;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/hP;->l:Lat/B;

    if-eqz v1, :cond_144

    .line 1099
    invoke-virtual {v2, v6}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 1100
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hQ;->a:Lcom/google/googlenav/ui/wizard/hG;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/hG;->b:Lcom/google/googlenav/ui/wizard/hP;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/hP;->l:Lat/B;

    invoke-virtual {v1}, Lat/B;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/google/googlenav/ui/aV;->J:Lcom/google/googlenav/ui/aV;

    invoke-static {v1, v3}, Lcom/google/googlenav/ui/bn;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1103
    :cond_144
    const v1, 0x7f100191

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1104
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1105
    new-instance v2, Lcom/google/googlenav/ui/wizard/hU;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/wizard/hU;-><init>(Lcom/google/googlenav/ui/wizard/hQ;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1113
    const v1, 0x7f1003e8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 1114
    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/hQ;->a:Lcom/google/googlenav/ui/wizard/hG;

    iget-object v2, v2, Lcom/google/googlenav/ui/wizard/hG;->b:Lcom/google/googlenav/ui/wizard/hP;

    iget-object v2, v2, Lcom/google/googlenav/ui/wizard/hP;->k:Lcom/google/googlenav/ui/e;

    if-nez v2, :cond_174

    .line 1115
    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/hQ;->a:Lcom/google/googlenav/ui/wizard/hG;

    iget-object v2, v2, Lcom/google/googlenav/ui/wizard/hG;->b:Lcom/google/googlenav/ui/wizard/hP;

    new-instance v3, Lcom/google/googlenav/ui/e;

    invoke-direct {v3, v7}, Lcom/google/googlenav/ui/e;-><init>(Z)V

    iput-object v3, v2, Lcom/google/googlenav/ui/wizard/hP;->k:Lcom/google/googlenav/ui/e;

    .line 1117
    :cond_174
    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/hQ;->a:Lcom/google/googlenav/ui/wizard/hG;

    iget-object v2, v2, Lcom/google/googlenav/ui/wizard/hG;->b:Lcom/google/googlenav/ui/wizard/hP;

    iget-object v2, v2, Lcom/google/googlenav/ui/wizard/hP;->k:Lcom/google/googlenav/ui/e;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/e;->a()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1120
    const v2, 0x7f1003e9

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1121
    invoke-static {}, Lcom/google/googlenav/ui/wizard/hG;->z()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/google/googlenav/ui/aV;->t:Lcom/google/googlenav/ui/aV;

    invoke-static {v3, v5}, Lcom/google/googlenav/ui/bn;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1124
    const v2, 0x7f1003eb

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1125
    const/16 v3, 0x44d

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/google/googlenav/ui/aV;->Y:Lcom/google/googlenav/ui/aV;

    invoke-static {v3, v5}, Lcom/google/googlenav/ui/bn;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1128
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_283

    .line 1129
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1135
    :goto_1b8
    const v3, 0x7f1003e7

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 1136
    new-instance v5, Lcom/google/googlenav/ui/wizard/hV;

    invoke-direct {v5, p0, v1, v2}, Lcom/google/googlenav/ui/wizard/hV;-><init>(Lcom/google/googlenav/ui/wizard/hQ;Landroid/widget/CheckBox;Landroid/widget/TextView;)V

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1152
    const v1, 0x7f10002e

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 1153
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1156
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v1

    if-eqz v1, :cond_288

    const v1, 0x7f100031

    .line 1157
    :goto_1de
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v2

    if-eqz v2, :cond_28b

    .line 1159
    :goto_1e4
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1160
    invoke-virtual {v1, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 1161
    const/16 v2, 0x457

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1162
    new-instance v2, Lcom/google/googlenav/ui/wizard/hW;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/wizard/hW;-><init>(Lcom/google/googlenav/ui/wizard/hQ;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1169
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1170
    invoke-virtual {v1, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 1171
    const/16 v2, 0x6c

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1172
    new-instance v2, Lcom/google/googlenav/ui/wizard/hX;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/wizard/hX;-><init>(Lcom/google/googlenav/ui/wizard/hQ;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1179
    return-object v0

    .line 1020
    :cond_219
    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/hQ;->a:Lcom/google/googlenav/ui/wizard/hG;

    iget-object v2, v2, Lcom/google/googlenav/ui/wizard/hG;->h:Lcom/google/googlenav/ui/view/android/bb;

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/googlenav/ui/view/android/bb;->setTitle(Ljava/lang/CharSequence;)V

    .line 1021
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3e

    .line 1062
    :cond_229
    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/hQ;->a:Lcom/google/googlenav/ui/wizard/hG;

    iget-object v3, v3, Lcom/google/googlenav/ui/wizard/hG;->b:Lcom/google/googlenav/ui/wizard/hP;

    iget v3, v3, Lcom/google/googlenav/ui/wizard/hP;->g:I

    const/4 v5, 0x5

    if-eq v3, v5, :cond_244

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/hQ;->a:Lcom/google/googlenav/ui/wizard/hG;

    iget-object v3, v3, Lcom/google/googlenav/ui/wizard/hG;->b:Lcom/google/googlenav/ui/wizard/hP;

    iget v3, v3, Lcom/google/googlenav/ui/wizard/hP;->g:I

    const/4 v5, 0x6

    if-eq v3, v5, :cond_244

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/hQ;->a:Lcom/google/googlenav/ui/wizard/hG;

    iget-object v3, v3, Lcom/google/googlenav/ui/wizard/hG;->b:Lcom/google/googlenav/ui/wizard/hP;

    iget v3, v3, Lcom/google/googlenav/ui/wizard/hP;->g:I

    const/4 v5, 0x7

    if-ne v3, v5, :cond_27e

    .line 1066
    :cond_244
    const/16 v3, 0x449

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/google/googlenav/ui/aV;->t:Lcom/google/googlenav/ui/aV;

    invoke-static {v3, v5}, Lcom/google/googlenav/ui/bn;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1068
    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/hQ;->a:Lcom/google/googlenav/ui/wizard/hG;

    iget-object v3, v3, Lcom/google/googlenav/ui/wizard/hG;->b:Lcom/google/googlenav/ui/wizard/hP;

    iget-object v3, v3, Lcom/google/googlenav/ui/wizard/hP;->o:Ljava/lang/String;

    invoke-static {v3}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_271

    .line 1069
    invoke-virtual {v2, v6}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 1070
    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/hQ;->a:Lcom/google/googlenav/ui/wizard/hG;

    iget-object v3, v3, Lcom/google/googlenav/ui/wizard/hG;->b:Lcom/google/googlenav/ui/wizard/hP;

    iget-object v3, v3, Lcom/google/googlenav/ui/wizard/hP;->o:Ljava/lang/String;

    sget-object v5, Lcom/google/googlenav/ui/aV;->J:Lcom/google/googlenav/ui/aV;

    invoke-static {v3, v5}, Lcom/google/googlenav/ui/bn;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1072
    :cond_271
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1073
    new-instance v3, Lcom/google/googlenav/ui/wizard/hT;

    invoke-direct {v3, p0}, Lcom/google/googlenav/ui/wizard/hT;-><init>(Lcom/google/googlenav/ui/wizard/hQ;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_d0

    .line 1081
    :cond_27e
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_d0

    .line 1131
    :cond_283
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1b8

    :cond_288
    move v1, v4

    .line 1156
    goto/16 :goto_1de

    .line 1157
    :cond_28b
    const v4, 0x7f100031

    goto/16 :goto_1e4
.end method

.method protected e()Z
    .registers 2

    .prologue
    .line 1001
    const/4 v0, 0x0

    return v0
.end method
