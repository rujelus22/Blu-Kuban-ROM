.class public Lcom/google/googlenav/ui/view/dialog/bh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Lcom/google/googlenav/ca;

.field private final c:Landroid/widget/ListView;

.field private d:F


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ca;LaM/i;Lcom/google/googlenav/ui/view/android/bE;Landroid/view/ViewGroup;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/bh;->b:Lcom/google/googlenav/ca;

    .line 65
    const v0, 0x7f1003d9

    invoke-virtual {p4, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bh;->a:Landroid/view/View;

    .line 66
    const v0, 0x7f100026

    invoke-virtual {p4, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bh;->c:Landroid/widget/ListView;

    .line 67
    new-instance v0, Lcom/google/googlenav/ui/view/dialog/bi;

    invoke-direct {v0, p0, p3, p4, p2}, Lcom/google/googlenav/ui/view/dialog/bi;-><init>(Lcom/google/googlenav/ui/view/dialog/bh;Lcom/google/googlenav/ui/view/android/bE;Landroid/view/ViewGroup;LaM/i;)V

    invoke-virtual {p1, v0}, Lcom/google/googlenav/ca;->a(Lcom/google/googlenav/cj;)V

    .line 88
    const/16 v0, 0x54

    const-string v1, "ts"

    invoke-virtual {p1}, Lcom/google/googlenav/ca;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public static a(J)Landroid/graphics/Bitmap;
    .registers 3
    .parameter

    .prologue
    .line 194
    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bn;->T()Lcom/google/googlenav/ui/bm;

    move-result-object v0

    .line 195
    invoke-virtual {v0, p0, p1}, Lcom/google/googlenav/ui/bm;->b(J)LS/f;

    move-result-object v0

    check-cast v0, LT/f;

    .line 196
    if-eqz v0, :cond_15

    invoke-virtual {v0}, LT/f;->h()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_14
    return-object v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/dialog/bh;)Lcom/google/googlenav/ca;
    .registers 2
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bh;->b:Lcom/google/googlenav/ca;

    return-object v0
.end method

.method static synthetic b(Lcom/google/googlenav/ui/view/dialog/bh;)Lcom/google/googlenav/android/c;
    .registers 2
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/bh;->d()Lcom/google/googlenav/android/c;

    move-result-object v0

    return-object v0
.end method

.method private c(Ljava/util/List;)V
    .registers 7
    .parameter

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bh;->b:Lcom/google/googlenav/ca;

    invoke-virtual {v0}, Lcom/google/googlenav/ca;->l()I

    move-result v0

    if-nez v0, :cond_9

    .line 129
    :goto_8
    return-void

    .line 122
    :cond_9
    new-instance v0, LaQ/ab;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/bh;->b:Lcom/google/googlenav/ca;

    new-instance v2, Lcom/google/googlenav/ui/view/dialog/bl;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/view/dialog/bl;-><init>(Lcom/google/googlenav/ui/view/dialog/bh;)V

    const/16 v3, 0x20

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, LaQ/ab;-><init>(Lcom/google/googlenav/ca;LaQ/af;II)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8
.end method

.method private d()Lcom/google/googlenav/android/c;
    .registers 2

    .prologue
    .line 132
    invoke-static {}, Lcom/google/googlenav/ui/bn;->e()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/android/AndroidGmmApplication;

    .line 134
    invoke-virtual {v0}, Lcom/google/googlenav/android/AndroidGmmApplication;->a()Lcom/google/googlenav/android/b;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/android/c;

    return-object v0
.end method

.method private d(Ljava/util/List;)V
    .registers 10
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 138
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bh;->b:Lcom/google/googlenav/ca;

    invoke-virtual {v0}, Lcom/google/googlenav/ca;->k()I

    move-result v3

    .line 139
    if-nez v3, :cond_14

    .line 140
    new-instance v0, LaQ/v;

    const/16 v1, 0x23

    invoke-direct {v0, v1}, LaQ/v;-><init>(I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    :cond_13
    return-void

    :cond_14
    move v2, v1

    .line 143
    :goto_15
    if-ge v2, v3, :cond_13

    .line 144
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bh;->b:Lcom/google/googlenav/ca;

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ca;->a(I)Lcom/google/googlenav/cn;

    move-result-object v4

    .line 146
    if-nez v2, :cond_3a

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bh;->b:Lcom/google/googlenav/ca;

    invoke-virtual {v0}, Lcom/google/googlenav/ca;->l()I

    move-result v0

    if-nez v0, :cond_3a

    const/4 v0, 0x1

    .line 147
    :goto_28
    new-instance v5, LaQ/ag;

    const/16 v6, 0x1f

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v5, v4, v0, v6, v7}, LaQ/ag;-><init>(Lcom/google/googlenav/cn;ZII)V

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_15

    :cond_3a
    move v0, v1

    .line 146
    goto :goto_28
.end method

.method private e(Ljava/util/List;)V
    .registers 8
    .parameter

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bh;->b:Lcom/google/googlenav/ca;

    invoke-virtual {v0}, Lcom/google/googlenav/ca;->n()I

    move-result v1

    .line 156
    if-lez v1, :cond_2e

    .line 157
    new-instance v0, LaQ/V;

    const/16 v2, 0x302

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, LaQ/V;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    const/4 v0, 0x0

    :goto_17
    if-ge v0, v1, :cond_2e

    .line 160
    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/bh;->b:Lcom/google/googlenav/ca;

    invoke-virtual {v2, v0}, Lcom/google/googlenav/ca;->c(I)Lcom/google/googlenav/ca;

    move-result-object v2

    .line 161
    new-instance v3, LaQ/Y;

    const/16 v4, 0x21

    const/16 v5, 0xfa5

    invoke-direct {v3, v2, v0, v4, v5}, LaQ/Y;-><init>(Lcom/google/googlenav/ca;III)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 166
    :cond_2e
    return-void
.end method

.method private static f(Ljava/util/List;)Z
    .registers 4
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 182
    move v1, v2

    :goto_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1d

    .line 183
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, LaQ/ag;

    if-eqz v0, :cond_1e

    .line 184
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaQ/ag;

    .line 185
    invoke-virtual {v0}, LaQ/ag;->d()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 186
    const/4 v2, 0x1

    .line 190
    :cond_1d
    return v2

    .line 182
    :cond_1e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method


# virtual methods
.method public a(Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/dialog/bh;->c(Ljava/util/List;)V

    .line 110
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/dialog/bh;->d(Ljava/util/List;)V

    .line 111
    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/view/dialog/bh;->b(Ljava/util/List;)V

    .line 113
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/dialog/bh;->e(Ljava/util/List;)V

    .line 115
    return-object p1
.end method

.method public a()V
    .registers 3

    .prologue
    .line 94
    invoke-static {}, Lcom/google/googlenav/android/c;->a()Lcom/google/googlenav/android/c;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-static {}, Lcom/google/googlenav/android/c;->a()Lcom/google/googlenav/android/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/c;->c()Lcom/google/googlenav/android/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/i;->i()Lcom/google/googlenav/ui/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->Z()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 96
    sget-object v0, Lcom/google/googlenav/z;->e:Lcom/google/googlenav/z;

    new-instance v1, Lcom/google/googlenav/ui/view/dialog/bk;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/dialog/bk;-><init>(Lcom/google/googlenav/ui/view/dialog/bh;)V

    invoke-static {v0, v1}, Lcom/google/googlenav/u;->a(Lcom/google/googlenav/z;Lcom/google/googlenav/x;)V

    .line 106
    :goto_22
    return-void

    .line 104
    :cond_23
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bh;->b:Lcom/google/googlenav/ca;

    invoke-virtual {v0}, Lcom/google/googlenav/ca;->g()V

    goto :goto_22
.end method

.method public b()V
    .registers 3

    .prologue
    .line 200
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bh;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 201
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bh;->b:Lcom/google/googlenav/ca;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ca;->a(Lcom/google/googlenav/cj;)V

    .line 202
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bh;->c:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 203
    iget v1, p0, Lcom/google/googlenav/ui/view/dialog/bh;->d:F

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 204
    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/bh;->c:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    return-void
.end method

.method public b(Ljava/util/List;)V
    .registers 4
    .parameter

    .prologue
    .line 172
    invoke-static {p1}, Lcom/google/googlenav/ui/view/dialog/bh;->f(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 173
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bh;->a:Landroid/view/View;

    const v1, 0x7f1003db

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 174
    const/16 v1, 0x4c1

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bh;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 179
    :goto_20
    return-void

    .line 177
    :cond_21
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bh;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_20
.end method

.method public c()V
    .registers 3

    .prologue
    .line 211
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bh;->c:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 212
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iput v1, p0, Lcom/google/googlenav/ui/view/dialog/bh;->d:F

    .line 213
    const/high16 v1, 0x3f80

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 214
    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/bh;->c:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    return-void
.end method
