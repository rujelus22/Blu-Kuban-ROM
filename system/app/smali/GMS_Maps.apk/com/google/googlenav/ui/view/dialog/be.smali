.class public Lcom/google/googlenav/ui/view/dialog/be;
.super Lcom/google/googlenav/ui/view/android/V;
.source "SourceFile"


# instance fields
.field a:Lcom/google/googlenav/ui/view/dialog/aE;

.field b:Landroid/widget/TextView;

.field c:Lcom/google/googlenav/ui/android/ah;

.field private final d:LaM/bU;

.field private e:Landroid/view/View;


# direct methods
.method public constructor <init>(LaM/bU;)V
    .registers 3
    .parameter

    .prologue
    .line 72
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-eqz v0, :cond_13

    const v0, 0x7f0f001b

    :goto_d
    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ui/view/android/V;-><init>(Lcom/google/googlenav/ui/g;I)V

    .line 74
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/be;->d:LaM/bU;

    .line 75
    return-void

    .line 72
    :cond_13
    const v0, 0x7f0f0018

    goto :goto_d
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/dialog/be;)Landroid/view/View;
    .registers 2
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/be;->e:Landroid/view/View;

    return-object v0
.end method

.method static synthetic b(Lcom/google/googlenav/ui/view/dialog/be;)LaM/bU;
    .registers 2
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/be;->d:LaM/bU;

    return-object v0
.end method


# virtual methods
.method protected N_()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 211
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->as()Z

    move-result v0

    if-nez v0, :cond_f

    .line 212
    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/view/dialog/be;->requestWindowFeature(I)Z

    .line 216
    :goto_e
    return-void

    .line 214
    :cond_f
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/be;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setUiOptions(I)V

    goto :goto_e
.end method

.method a(Lcom/google/googlenav/F;)Ljava/util/List;
    .registers 9
    .parameter

    .prologue
    const/16 v6, 0xfa1

    const/4 v2, 0x0

    .line 225
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v3

    .line 226
    invoke-interface {p1}, Lcom/google/googlenav/F;->f()I

    move-result v4

    .line 227
    if-lez v4, :cond_1c

    move v1, v2

    .line 228
    :goto_e
    if-ge v1, v4, :cond_1c

    .line 229
    invoke-interface {p1, v1}, Lcom/google/googlenav/F;->b(I)Lcom/google/googlenav/E;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ai;

    .line 230
    invoke-virtual {v0}, Lcom/google/googlenav/ai;->h()Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 239
    :cond_1c
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 241
    new-instance v0, LaQ/Y;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2, v2, v6}, LaQ/Y;-><init>(Lcom/google/googlenav/ca;III)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    :cond_2b
    return-object v3

    .line 234
    :cond_2c
    check-cast v0, Lcom/google/googlenav/cq;

    .line 235
    invoke-virtual {v0}, Lcom/google/googlenav/cq;->au()Lcom/google/googlenav/ca;

    move-result-object v0

    .line 236
    new-instance v5, LaQ/Y;

    invoke-direct {v5, v0, v1, v2, v6}, LaQ/Y;-><init>(Lcom/google/googlenav/ca;III)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e
.end method

.method protected a(Landroid/app/ActionBar;)V
    .registers 8
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 189
    const v0, 0x7f020216

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setIcon(I)V

    .line 190
    const/16 v0, 0x5d7

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 192
    invoke-virtual {p1}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 194
    const v1, 0x7f0401d9

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 197
    const v0, 0x7f100474

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/ah;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/be;->c:Lcom/google/googlenav/ui/android/ah;

    .line 198
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/be;->d:LaM/bU;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/be;->c:Lcom/google/googlenav/ui/android/ah;

    iget-object v3, p0, Lcom/google/googlenav/ui/view/dialog/be;->d:LaM/bU;

    invoke-virtual {v3}, LaM/bU;->a()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, LaM/bU;->a(Lcom/google/googlenav/ui/android/ah;Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 200
    invoke-static {}, Lag/h;->a()Lag/h;

    move-result-object v0

    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    const/16 v1, 0x13

    invoke-direct {v3, v5, v5, v1}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {p1}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lag/h;->a(Landroid/app/ActionBar;Landroid/view/View;Landroid/app/ActionBar$LayoutParams;Lag/g;Landroid/content/Context;)V

    .line 204
    return-void
.end method

.method protected a(ILandroid/view/MenuItem;)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 145
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f1004ca

    if-ne v1, v2, :cond_12

    .line 146
    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/be;->d:LaM/bU;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, LaM/bU;->a(IILjava/lang/Object;)Z

    .line 149
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public a(Landroid/view/Menu;)Z
    .registers 3
    .parameter

    .prologue
    .line 180
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->ar()Z

    move-result v0

    if-nez v0, :cond_f

    .line 181
    invoke-super {p0, p1}, Lcom/google/googlenav/ui/view/android/V;->a(Landroid/view/Menu;)Z

    move-result v0

    .line 184
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x1

    goto :goto_e
.end method

.method public c()Landroid/view/View;
    .registers 11

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x5d7

    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 80
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/be;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 82
    const v1, 0x7f040111

    invoke-virtual {v0, v1, v6, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    .line 83
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/K;->as()Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 84
    invoke-static {v5}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/dialog/be;->setTitle(Ljava/lang/CharSequence;)V

    .line 126
    :goto_29
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/be;->d:LaM/bU;

    invoke-virtual {v0}, LaM/bU;->bF()Z

    move-result v5

    .line 127
    const v0, 0x7f100193

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/be;->b:Landroid/widget/TextView;

    .line 128
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/be;->n()V

    .line 129
    new-instance v0, Lcom/google/googlenav/ui/view/dialog/aE;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/be;->d:LaM/bU;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/be;->d:LaM/bU;

    invoke-virtual {v2}, LaM/bU;->bE()Lcom/google/googlenav/ui/view/K;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/be;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/be;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v6, p0, Lcom/google/googlenav/ui/view/dialog/be;->d:LaM/bU;

    invoke-virtual {v6}, LaM/bU;->bM()Lcom/google/googlenav/Y;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/google/googlenav/ui/view/dialog/be;->a(Lcom/google/googlenav/F;)Ljava/util/List;

    move-result-object v6

    const v7, 0x7f100026

    invoke-virtual {v9, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ListView;

    invoke-direct/range {v0 .. v8}, Lcom/google/googlenav/ui/view/dialog/aE;-><init>(LaM/i;Lcom/google/googlenav/ui/view/K;Landroid/view/LayoutInflater;Landroid/content/Context;ZLjava/util/List;Landroid/widget/ListView;I)V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/be;->a:Lcom/google/googlenav/ui/view/dialog/aE;

    .line 134
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/be;->m()V

    .line 135
    return-object v9

    .line 86
    :cond_6b
    const v1, 0x7f1002f1

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlenav/ui/view/dialog/be;->e:Landroid/view/View;

    .line 87
    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/be;->e:Landroid/view/View;

    const v2, 0x7f1001a8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 88
    const v1, 0x7f1001a9

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v3, 0x7f020216

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 91
    invoke-static {}, Lag/h;->a()Lag/h;

    move-result-object v1

    invoke-virtual {v1, v2, v6}, Lag/h;->a(Landroid/view/View;Lag/g;)V

    .line 92
    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/be;->e:Landroid/view/View;

    const v2, 0x7f10001e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 93
    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 94
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 95
    invoke-static {v5}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/K;->an()Z

    move-result v2

    if-eqz v2, :cond_bd

    .line 97
    const v2, 0x7f090001

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 100
    :cond_bd
    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/be;->e:Landroid/view/View;

    const v2, 0x7f1001fe

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/ui/android/ah;

    iput-object v1, p0, Lcom/google/googlenav/ui/view/dialog/be;->c:Lcom/google/googlenav/ui/android/ah;

    .line 102
    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/be;->d:LaM/bU;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/be;->c:Lcom/google/googlenav/ui/android/ah;

    new-instance v3, Lcom/google/googlenav/ui/view/dialog/bf;

    invoke-direct {v3, p0}, Lcom/google/googlenav/ui/view/dialog/bf;-><init>(Lcom/google/googlenav/ui/view/dialog/be;)V

    invoke-virtual {v1, v2, v3}, LaM/bU;->a(Lcom/google/googlenav/ui/android/ah;Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 112
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/K;->an()Z

    move-result v1

    if-nez v1, :cond_101

    .line 113
    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/be;->e:Landroid/view/View;

    const v2, 0x7f1002f2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 114
    const v2, 0x7f0401ce

    invoke-virtual {v0, v2, v1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 115
    const v1, 0x7f10044b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/view/dialog/bg;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/dialog/bg;-><init>(Lcom/google/googlenav/ui/view/dialog/be;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    :cond_101
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/be;->e:Landroid/view/View;

    const v1, 0x7f1001fa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 123
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/be;->e:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_29
.end method

.method public e()Z
    .registers 2

    .prologue
    .line 140
    const/4 v0, 0x1

    return v0
.end method

.method public i()V
    .registers 2

    .prologue
    .line 157
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->ar()Z

    move-result v0

    if-nez v0, :cond_17

    .line 158
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/be;->c:Lcom/google/googlenav/ui/android/ah;

    invoke-interface {v0}, Lcom/google/googlenav/ui/android/ah;->b()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 159
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/be;->c:Lcom/google/googlenav/ui/android/ah;

    invoke-interface {v0}, Lcom/google/googlenav/ui/android/ah;->a()V

    .line 162
    :cond_17
    return-void
.end method

.method public l()V
    .registers 4

    .prologue
    .line 219
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/be;->a:Lcom/google/googlenav/ui/view/dialog/aE;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/be;->d:LaM/bU;

    invoke-virtual {v1}, LaM/bU;->bM()Lcom/google/googlenav/Y;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/view/dialog/be;->a(Lcom/google/googlenav/F;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/be;->d:LaM/bU;

    invoke-virtual {v2}, LaM/bU;->bF()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/view/dialog/aE;->a(Ljava/util/List;Z)V

    .line 221
    return-void
.end method

.method public m()V
    .registers 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/be;->a:Lcom/google/googlenav/ui/view/dialog/aE;

    if-eqz v0, :cond_9

    .line 249
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/be;->a:Lcom/google/googlenav/ui/view/dialog/aE;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/aE;->a()V

    .line 251
    :cond_9
    return-void
.end method

.method public n()V
    .registers 6

    .prologue
    .line 254
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/be;->d:LaM/bU;

    invoke-virtual {v0}, LaM/bU;->bM()Lcom/google/googlenav/Y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/Y;->j()Ljava/lang/String;

    move-result-object v0

    .line 255
    if-eqz v0, :cond_22

    .line 256
    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/be;->b:Landroid/widget/TextView;

    const/16 v2, 0x5cd

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    :goto_21
    return-void

    .line 259
    :cond_22
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/be;->b:Landroid/widget/TextView;

    const/16 v1, 0x5ce

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_21
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter

    .prologue
    .line 166
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->as()Z

    move-result v0

    if-nez v0, :cond_f

    .line 167
    invoke-super {p0, p1}, Lcom/google/googlenav/ui/view/android/V;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 175
    :goto_e
    return v0

    .line 170
    :cond_f
    sget-object v0, Lcom/google/googlenav/ui/view/dialog/be;->f:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-virtual {v0}, Lcom/google/googlenav/android/BaseMapsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 171
    const v1, 0x7f110016

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 172
    const v0, 0x7f1004ca

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 173
    const/16 v1, 0x2b6

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 175
    const/4 v0, 0x1

    goto :goto_e
.end method
