.class public Lcom/google/googlenav/ui/wizard/bz;
.super Lcom/google/googlenav/ui/view/android/V;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/bw;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/bw;)V
    .registers 3
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/bz;->a:Lcom/google/googlenav/ui/wizard/bw;

    .line 106
    invoke-static {}, Lcom/google/googlenav/ui/wizard/bz;->p()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ui/view/android/V;-><init>(Lcom/google/googlenav/ui/g;I)V

    .line 107
    return-void
.end method

.method private i()Lcom/google/googlenav/ui/view/android/L;
    .registers 8

    .prologue
    .line 143
    new-instance v1, Lcom/google/googlenav/ui/view/android/L;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bz;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Lcom/google/googlenav/ui/view/android/L;-><init>(Landroid/content/Context;I)V

    .line 145
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 146
    const/4 v0, 0x0

    :goto_10
    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/bz;->a:Lcom/google/googlenav/ui/wizard/bw;

    iget-object v3, v3, Lcom/google/googlenav/ui/wizard/bw;->b:Lcom/google/googlenav/ca;

    invoke-virtual {v3}, Lcom/google/googlenav/ca;->k()I

    move-result v3

    if-ge v0, v3, :cond_7e

    .line 147
    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/bz;->a:Lcom/google/googlenav/ui/wizard/bw;

    iget-object v3, v3, Lcom/google/googlenav/ui/wizard/bw;->b:Lcom/google/googlenav/ca;

    invoke-virtual {v3, v0}, Lcom/google/googlenav/ca;->a(I)Lcom/google/googlenav/cn;

    move-result-object v3

    .line 149
    invoke-virtual {v3}, Lcom/google/googlenav/cn;->n()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7b

    .line 152
    new-instance v4, Lcom/google/googlenav/ui/wizard/bF;

    invoke-virtual {v3}, Lcom/google/googlenav/cn;->n()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/googlenav/ui/wizard/bF;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/google/googlenav/ui/view/android/L;->add(Ljava/lang/Object;)V

    .line 155
    invoke-virtual {v3}, Lcom/google/googlenav/cn;->o()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_57

    .line 156
    new-instance v4, Lcom/google/googlenav/ui/wizard/bx;

    invoke-virtual {v3}, Lcom/google/googlenav/cn;->o()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Laa/b;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/google/googlenav/ui/wizard/bB;

    invoke-direct {v6, p0, v3}, Lcom/google/googlenav/ui/wizard/bB;-><init>(Lcom/google/googlenav/ui/wizard/bz;Lcom/google/googlenav/cn;)V

    invoke-direct {v4, v5, v6}, Lcom/google/googlenav/ui/wizard/bx;-><init>(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v4}, Lcom/google/googlenav/ui/view/android/L;->add(Ljava/lang/Object;)V

    .line 167
    :cond_57
    invoke-virtual {v3}, Lcom/google/googlenav/cn;->p()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_74

    .line 168
    new-instance v4, Lcom/google/googlenav/ui/wizard/bx;

    const/16 v5, 0x5ca

    invoke-static {v5}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/google/googlenav/ui/wizard/bC;

    invoke-direct {v6, p0, v3}, Lcom/google/googlenav/ui/wizard/bC;-><init>(Lcom/google/googlenav/ui/wizard/bz;Lcom/google/googlenav/cn;)V

    invoke-direct {v4, v5, v6}, Lcom/google/googlenav/ui/wizard/bx;-><init>(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v4}, Lcom/google/googlenav/ui/view/android/L;->add(Ljava/lang/Object;)V

    .line 176
    :cond_74
    invoke-virtual {v3}, Lcom/google/googlenav/cn;->n()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 146
    :cond_7b
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 180
    :cond_7e
    return-object v1
.end method

.method private l()Lcom/google/googlenav/ui/view/android/L;
    .registers 11

    .prologue
    const/4 v2, 0x0

    .line 184
    new-instance v3, Lcom/google/googlenav/ui/view/android/L;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bz;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {v3, v0, v1}, Lcom/google/googlenav/ui/view/android/L;-><init>(Landroid/content/Context;I)V

    .line 186
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    move v1, v2

    .line 187
    :goto_11
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bz;->a:Lcom/google/googlenav/ui/wizard/bw;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/bw;->a:Lad/b;

    invoke-virtual {v0}, Lad/b;->ae()I

    move-result v0

    if-ge v1, v0, :cond_dd

    .line 188
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bz;->a:Lcom/google/googlenav/ui/wizard/bw;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/bw;->a:Lad/b;

    invoke-virtual {v0, v1}, Lad/b;->n(I)Lad/t;

    move-result-object v0

    invoke-virtual {v0}, Lad/t;->D()I

    move-result v5

    .line 189
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bz;->a:Lcom/google/googlenav/ui/wizard/bw;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/bw;->a:Lad/b;

    invoke-virtual {v0, v5}, Lad/b;->j(I)Lad/d;

    move-result-object v6

    .line 190
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c4

    if-eqz v6, :cond_c4

    .line 193
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bz;->a:Lcom/google/googlenav/ui/wizard/bw;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/bw;->e:Lcom/google/googlenav/ui/bn;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bn;->S()Lcom/google/googlenav/ui/p;

    move-result-object v0

    iget-object v7, p0, Lcom/google/googlenav/ui/wizard/bz;->a:Lcom/google/googlenav/ui/wizard/bw;

    iget-object v7, v7, Lcom/google/googlenav/ui/wizard/bw;->e:Lcom/google/googlenav/ui/bn;

    invoke-virtual {v7}, Lcom/google/googlenav/ui/bn;->S()Lcom/google/googlenav/ui/p;

    move-result-object v7

    iget-object v8, p0, Lcom/google/googlenav/ui/wizard/bz;->a:Lcom/google/googlenav/ui/wizard/bw;

    iget-object v8, v8, Lcom/google/googlenav/ui/wizard/bw;->a:Lad/b;

    invoke-virtual {v8, v1}, Lad/b;->n(I)Lad/t;

    move-result-object v8

    invoke-virtual {v8}, Lad/t;->w()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/google/googlenav/ui/p;->a(J)C

    move-result v7

    invoke-virtual {v0, v7}, Lcom/google/googlenav/ui/p;->e(C)LS/f;

    move-result-object v0

    check-cast v0, LT/f;

    .line 195
    new-instance v7, Lcom/google/googlenav/ui/wizard/bF;

    invoke-virtual {v6}, Lad/d;->a()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v0}, Lcom/google/googlenav/ui/wizard/bF;-><init>(Ljava/lang/String;LT/f;)V

    invoke-virtual {v3, v7}, Lcom/google/googlenav/ui/view/android/L;->add(Ljava/lang/Object;)V

    .line 198
    invoke-virtual {v6}, Lad/d;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a5

    .line 199
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bz;->a:Lcom/google/googlenav/ui/wizard/bw;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/bw;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->F()Lcom/google/googlenav/aA;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/aA;->e()Z

    move-result v0

    if-eqz v0, :cond_d0

    .line 200
    new-instance v0, Lcom/google/googlenav/ui/wizard/bx;

    const/16 v7, 0x69

    invoke-static {v7}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    invoke-virtual {v6}, Lad/d;->c()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-static {v7, v8}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/google/googlenav/ui/wizard/bD;

    invoke-direct {v8, p0, v6}, Lcom/google/googlenav/ui/wizard/bD;-><init>(Lcom/google/googlenav/ui/wizard/bz;Lad/d;)V

    invoke-direct {v0, v7, v8}, Lcom/google/googlenav/ui/wizard/bx;-><init>(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3, v0}, Lcom/google/googlenav/ui/view/android/L;->add(Ljava/lang/Object;)V

    .line 217
    :cond_a5
    :goto_a5
    invoke-virtual {v6}, Lad/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c4

    .line 218
    new-instance v0, Lcom/google/googlenav/ui/wizard/bx;

    invoke-virtual {v6}, Lad/d;->b()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Laa/b;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/google/googlenav/ui/wizard/bE;

    invoke-direct {v8, p0, v6}, Lcom/google/googlenav/ui/wizard/bE;-><init>(Lcom/google/googlenav/ui/wizard/bz;Lad/d;)V

    invoke-direct {v0, v7, v8}, Lcom/google/googlenav/ui/wizard/bx;-><init>(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3, v0}, Lcom/google/googlenav/ui/view/android/L;->add(Ljava/lang/Object;)V

    .line 229
    :cond_c4
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 187
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_11

    .line 212
    :cond_d0
    new-instance v0, Lcom/google/googlenav/ui/wizard/bx;

    invoke-virtual {v6}, Lad/d;->c()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/google/googlenav/ui/wizard/bx;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lcom/google/googlenav/ui/view/android/L;->add(Ljava/lang/Object;)V

    goto :goto_a5

    .line 232
    :cond_dd
    return-object v3
.end method


# virtual methods
.method protected c()Landroid/view/View;
    .registers 4

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bz;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04005b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 112
    const v0, 0x7f100026

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 115
    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/bz;->a:Lcom/google/googlenav/ui/wizard/bw;

    iget-object v2, v2, Lcom/google/googlenav/ui/wizard/bw;->a:Lad/b;

    if-eqz v2, :cond_33

    .line 116
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/bz;->l()Lcom/google/googlenav/ui/view/android/L;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 120
    :goto_22
    new-instance v2, Lcom/google/googlenav/ui/wizard/bA;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/wizard/bA;-><init>(Lcom/google/googlenav/ui/wizard/bz;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 137
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 138
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 139
    return-object v1

    .line 118
    :cond_33
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/bz;->i()Lcom/google/googlenav/ui/view/android/L;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_22
.end method
