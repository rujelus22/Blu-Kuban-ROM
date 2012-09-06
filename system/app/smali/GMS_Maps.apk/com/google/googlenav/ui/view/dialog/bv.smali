.class public Lcom/google/googlenav/ui/view/dialog/bv;
.super Lcom/google/googlenav/ui/view/dialog/ce;
.source "SourceFile"


# direct methods
.method public constructor <init>(LaM/aI;)V
    .registers 2
    .parameter

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/dialog/ce;-><init>(LaM/bj;)V

    .line 62
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/dialog/bv;)Lcom/google/googlenav/ui/g;
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bv;->g:Lcom/google/googlenav/ui/g;

    return-object v0
.end method

.method private c(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    .line 104
    const v0, 0x7f1001fa

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 106
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/K;->ar()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 107
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/bv;->w_()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/view/dialog/bv;->setTitle(Ljava/lang/CharSequence;)V

    .line 108
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 135
    :goto_1f
    return-void

    .line 110
    :cond_20
    const v1, 0x7f1001a8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 111
    const v1, 0x7f1001a9

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v3, 0x7f020348

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 114
    invoke-static {}, Lag/h;->a()Lag/h;

    move-result-object v1

    new-instance v3, Lcom/google/googlenav/ui/view/dialog/bw;

    invoke-direct {v3, p0}, Lcom/google/googlenav/ui/view/dialog/bw;-><init>(Lcom/google/googlenav/ui/view/dialog/bv;)V

    invoke-virtual {v1, v2, v3}, Lag/h;->a(Landroid/view/View;Lag/g;)V

    .line 123
    const v1, 0x7f10001e

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 124
    const/16 v2, 0x323

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 126
    const v1, 0x7f100203

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 127
    new-instance v1, Lcom/google/googlenav/ui/view/dialog/bx;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/dialog/bx;-><init>(Lcom/google/googlenav/ui/view/dialog/bv;)V

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/view/e;->a(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    goto :goto_1f
.end method

.method private d(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    .line 211
    const v0, 0x7f100263

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 213
    const v1, 0x7f10001e

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 214
    const/16 v2, 0x32a

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/aV;->aR:Lcom/google/googlenav/ui/aV;

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/bn;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    const v1, 0x7f100023

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 218
    const/16 v2, 0x32f

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    new-instance v1, Lcom/google/googlenav/ui/view/dialog/bz;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/dialog/bz;-><init>(Lcom/google/googlenav/ui/view/dialog/bv;)V

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/view/e;->a(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 227
    return-void
.end method


# virtual methods
.method protected a(Lcom/google/googlenav/ai;IZ)LaQ/H;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 232
    const/16 v0, 0x2bc

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/googlenav/ui/view/dialog/bv;->b(Lcom/google/googlenav/ai;IZI)LaQ/H;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/google/googlenav/ai;IZI)Lcom/google/googlenav/ui/view/android/bK;
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 239
    invoke-virtual {p1}, Lcom/google/googlenav/ai;->aX()I

    move-result v0

    if-gtz v0, :cond_9

    .line 240
    const/4 v0, 0x0

    .line 258
    :cond_8
    :goto_8
    return-object v0

    .line 243
    :cond_9
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/googlenav/ui/view/dialog/ce;->a(Lcom/google/googlenav/ai;IZI)Lcom/google/googlenav/ui/view/android/bK;

    move-result-object v0

    .line 245
    const v1, 0x7f0400d3

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/bK;->c(I)Lcom/google/googlenav/ui/view/android/bK;

    .line 248
    invoke-virtual {p1}, Lcom/google/googlenav/ai;->ak()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/aV;->bJ:Lcom/google/googlenav/ui/aV;

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/view/android/bK;->a(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/view/android/bK;

    .line 251
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/googlenav/ai;->F()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/bK;->a([Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/bK;

    .line 254
    invoke-virtual {p1, v3}, Lcom/google/googlenav/ai;->h(I)Lcom/google/googlenav/ap;

    move-result-object v1

    .line 255
    if-eqz v1, :cond_8

    .line 256
    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/bK;->a(Lcom/google/googlenav/ap;)Lcom/google/googlenav/ui/view/android/bK;

    goto :goto_8
.end method

.method protected a(Lcom/google/googlenav/F;)Ljava/util/List;
    .registers 10
    .parameter

    .prologue
    const v7, 0x7f0400d8

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 184
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 185
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bv;->d:LaM/bj;

    invoke-virtual {v0}, LaM/bj;->bN()Lcom/google/googlenav/aW;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/aW;->aD()I

    move-result v2

    .line 186
    if-lez v2, :cond_2d

    .line 187
    if-ne v2, v6, :cond_5e

    const/16 v0, 0x324

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 192
    :goto_1e
    new-instance v3, LaQ/bv;

    invoke-direct {v3, v6, v7, v0}, LaQ/bv;-><init>(IILjava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    invoke-virtual {p0, p1, v5, v2, v5}, Lcom/google/googlenav/ui/view/dialog/bv;->a(Lcom/google/googlenav/F;III)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 196
    :cond_2d
    invoke-interface {p1}, Lcom/google/googlenav/F;->f()I

    move-result v0

    if-le v0, v2, :cond_4e

    .line 197
    if-lez v2, :cond_71

    const/16 v0, 0x325

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 200
    :goto_3b
    new-instance v3, LaQ/bv;

    invoke-direct {v3, v6, v7, v0}, LaQ/bv;-><init>(IILjava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    invoke-interface {p1}, Lcom/google/googlenav/F;->f()I

    move-result v0

    invoke-virtual {p0, p1, v2, v0, v5}, Lcom/google/googlenav/ui/view/dialog/bv;->a(Lcom/google/googlenav/F;III)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 205
    :cond_4e
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bv;->d:LaM/bj;

    invoke-virtual {v0}, LaM/bj;->bN()Lcom/google/googlenav/aW;

    move-result-object v0

    sget-object v2, Lcom/google/android/apps/common/offerslib/x;->a:Lcom/google/android/apps/common/offerslib/x;

    invoke-virtual {v2}, Lcom/google/android/apps/common/offerslib/x;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/googlenav/offers/i;->a(Lcom/google/googlenav/aW;Ljava/lang/String;)V

    .line 207
    return-object v1

    .line 187
    :cond_5e
    const/16 v0, 0x326

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    new-array v3, v6, [Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v0, v3}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1e

    .line 197
    :cond_71
    const/16 v0, 0x327

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3b
.end method

.method protected a(Landroid/app/ActionBar;)V
    .registers 4
    .parameter

    .prologue
    .line 139
    const v0, 0x7f020348

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setIcon(I)V

    .line 140
    invoke-static {}, Lag/h;->a()Lag/h;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/view/dialog/by;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/dialog/by;-><init>(Lcom/google/googlenav/ui/view/dialog/bv;)V

    invoke-virtual {v0, p1, v1}, Lag/h;->a(Landroid/app/ActionBar;Lag/g;)V

    .line 148
    return-void
.end method

.method protected a(ILandroid/view/MenuItem;)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 174
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f1004e2

    if-ne v0, v1, :cond_14

    .line 175
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bv;->b:LaM/m;

    const/16 v1, 0x76f

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, LaM/m;->a(IILjava/lang/Object;)Z

    .line 177
    const/4 v0, 0x1

    .line 179
    :goto_13
    return v0

    :cond_14
    invoke-super {p0, p1, p2}, Lcom/google/googlenav/ui/view/dialog/ce;->a(ILandroid/view/MenuItem;)Z

    move-result v0

    goto :goto_13
.end method

.method public a(Landroid/view/Menu;)Z
    .registers 3
    .parameter

    .prologue
    .line 168
    const/4 v0, 0x1

    return v0
.end method

.method protected c()Landroid/view/View;
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 71
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/bv;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 72
    const v1, 0x7f04011e

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 74
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bv;->d:LaM/bj;

    invoke-virtual {v0}, LaM/bj;->bN()Lcom/google/googlenav/aW;

    .line 75
    const v0, 0x7f100026

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bv;->m:Landroid/widget/ListView;

    .line 76
    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/view/dialog/bv;->c(Landroid/view/View;)V

    .line 78
    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/view/dialog/bv;->d(Landroid/view/View;)V

    .line 85
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/bv;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v2}, Lcom/google/googlenav/ui/view/dialog/bv;->a(Landroid/content/Context;I)V

    .line 86
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bv;->m:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/bv;->c:Lcom/google/googlenav/ui/view/android/L;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 87
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bv;->m:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/bv;->d:LaM/bj;

    invoke-virtual {v2}, LaM/bj;->F()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 91
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bv;->m:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 95
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bv;->m:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 97
    return-object v1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter

    .prologue
    .line 152
    sget-object v0, Lcom/google/googlenav/ui/view/dialog/bv;->f:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-virtual {v0}, Lcom/google/googlenav/android/BaseMapsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 153
    const v1, 0x7f110019

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 154
    const v0, 0x7f1004ca

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 155
    if-eqz v0, :cond_1e

    .line 157
    const/16 v1, 0x2b6

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 159
    :cond_1e
    const v0, 0x7f1004e2

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 160
    const/16 v1, 0x2e4

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 162
    const/4 v0, 0x1

    return v0
.end method

.method public w_()Ljava/lang/String;
    .registers 2

    .prologue
    .line 66
    const/16 v0, 0x323

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
