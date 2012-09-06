.class public Lcom/google/googlenav/ui/view/android/aD;
.super Lcom/google/googlenav/ui/view/android/V;
.source "SourceFile"


# instance fields
.field private a:Lah/s;

.field private b:Landroid/widget/ListView;

.field private c:Lcom/google/googlenav/as;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/V;-><init>()V

    .line 57
    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/ui/g;)V
    .registers 3
    .parameter

    .prologue
    .line 61
    const v0, 0x7f0f0018

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ui/view/android/V;-><init>(Lcom/google/googlenav/ui/g;I)V

    .line 62
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/android/aD;)Landroid/widget/ListView;
    .registers 2
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aD;->b:Landroid/widget/ListView;

    return-object v0
.end method

.method private a(Lcom/google/googlenav/at;)Lcom/google/googlenav/ui/bx;
    .registers 4
    .parameter

    .prologue
    .line 305
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/google/googlenav/at;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 306
    :cond_c
    invoke-static {}, Lcom/google/googlenav/ui/view/android/aJ;->c()Lcom/google/googlenav/ui/view/android/aJ;

    move-result-object v0

    .line 308
    :goto_10
    return-object v0

    :cond_11
    new-instance v0, Lcom/google/googlenav/ui/view/android/aJ;

    invoke-virtual {p1}, Lcom/google/googlenav/at;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/googlenav/ui/view/android/aJ;-><init>(Ljava/lang/String;)V

    goto :goto_10
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/android/aD;Lcom/google/googlenav/at;)Lcom/google/googlenav/ui/bx;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/aD;->a(Lcom/google/googlenav/at;)Lcom/google/googlenav/ui/bx;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/widget/ImageView;C)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 180
    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bn;->n()LS/g;

    move-result-object v0

    .line 181
    invoke-interface {v0, p2}, LS/g;->e(C)LS/f;

    move-result-object v0

    check-cast v0, LT/f;

    invoke-virtual {v0}, LT/f;->h()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 182
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 183
    return-void
.end method

.method private a(Landroid/widget/TextView;Lcom/google/googlenav/ui/aW;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 80
    invoke-virtual {p2}, Lcom/google/googlenav/ui/aW;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 81
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 86
    :goto_f
    return-void

    .line 83
    :cond_10
    invoke-static {p1, p2}, Lcom/google/googlenav/ui/bn;->a(Landroid/widget/TextView;Lcom/google/googlenav/ui/aW;)V

    .line 84
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_f
.end method

.method private a(Lcom/google/googlenav/as;)V
    .registers 6
    .parameter

    .prologue
    .line 219
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 220
    invoke-virtual {p1}, Lcom/google/googlenav/as;->g()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_c

    .line 237
    :goto_b
    return-void

    .line 224
    :cond_c
    invoke-virtual {p1}, Lcom/google/googlenav/as;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_14
    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/at;

    .line 225
    invoke-virtual {v0}, Lcom/google/googlenav/at;->a()Lcom/google/googlenav/ar;

    move-result-object v3

    if-eqz v3, :cond_14

    .line 227
    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/aD;->a(Lcom/google/googlenav/at;)Lcom/google/googlenav/ui/bx;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 231
    :cond_2e
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aD;->a:Lah/s;

    new-instance v2, Lcom/google/googlenav/ui/view/android/aH;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/view/android/aH;-><init>(Lcom/google/googlenav/ui/view/android/aD;)V

    invoke-virtual {v0, v1, v2}, Lah/s;->a(Ljava/lang/Iterable;Lah/p;)V

    goto :goto_b
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/android/aD;Landroid/widget/TextView;Lcom/google/googlenav/ui/aW;)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/view/android/aD;->a(Landroid/widget/TextView;Lcom/google/googlenav/ui/aW;)V

    return-void
.end method

.method static synthetic b(Lcom/google/googlenav/ui/view/android/aD;)V
    .registers 1
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/aD;->m()V

    return-void
.end method

.method static synthetic c(Lcom/google/googlenav/ui/view/android/aD;)Lah/s;
    .registers 2
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aD;->a:Lah/s;

    return-object v0
.end method

.method private l()V
    .registers 6

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aD;->c:Lcom/google/googlenav/as;

    invoke-virtual {v0}, Lcom/google/googlenav/as;->f()Lcom/google/googlenav/ai;

    move-result-object v2

    .line 95
    const v0, 0x7f100193

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aD;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 96
    invoke-virtual {v2}, Lcom/google/googlenav/ai;->ak()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/google/googlenav/ui/aV;->aT:Lcom/google/googlenav/ui/aV;

    invoke-static {v1, v3}, Lcom/google/googlenav/ui/aW;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v1

    .line 97
    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/view/android/aD;->a(Landroid/widget/TextView;Lcom/google/googlenav/ui/aW;)V

    .line 99
    const v0, 0x7f10001e

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aD;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 100
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aD;->c:Lcom/google/googlenav/as;

    invoke-virtual {v1}, Lcom/google/googlenav/as;->d()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/google/googlenav/ui/aV;->aP:Lcom/google/googlenav/ui/aV;

    invoke-static {v1, v3}, Lcom/google/googlenav/ui/aW;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v1

    .line 101
    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/view/android/aD;->a(Landroid/widget/TextView;Lcom/google/googlenav/ui/aW;)V

    .line 103
    const v0, 0x7f100196

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aD;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 104
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aD;->c:Lcom/google/googlenav/as;

    invoke-virtual {v1}, Lcom/google/googlenav/as;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/google/googlenav/ui/aV;->aT:Lcom/google/googlenav/ui/aV;

    invoke-static {v1, v3}, Lcom/google/googlenav/ui/aW;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v1

    .line 105
    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/view/android/aD;->a(Landroid/widget/TextView;Lcom/google/googlenav/ui/aW;)V

    .line 107
    const v0, 0x7f100197

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aD;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 108
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aD;->c:Lcom/google/googlenav/as;

    invoke-virtual {v1}, Lcom/google/googlenav/as;->e()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/google/googlenav/ui/aV;->bI:Lcom/google/googlenav/ui/aV;

    invoke-static {v1, v3}, Lcom/google/googlenav/ui/aW;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v1

    .line 109
    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/view/android/aD;->a(Landroid/widget/TextView;Lcom/google/googlenav/ui/aW;)V

    .line 111
    const v0, 0x7f100198

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aD;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 112
    invoke-virtual {v2}, Lcom/google/googlenav/ai;->E()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/google/googlenav/ui/aV;->aT:Lcom/google/googlenav/ui/aV;

    invoke-static {v1, v3}, Lcom/google/googlenav/ui/aW;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v1

    .line 113
    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/view/android/aD;->a(Landroid/widget/TextView;Lcom/google/googlenav/ui/aW;)V

    .line 115
    const v0, 0x7f100199

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aD;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 116
    invoke-virtual {v2}, Lcom/google/googlenav/ai;->F()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/google/googlenav/ui/aV;->aT:Lcom/google/googlenav/ui/aV;

    invoke-static {v1, v3}, Lcom/google/googlenav/ui/aW;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v1

    .line 117
    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/view/android/aD;->a(Landroid/widget/TextView;Lcom/google/googlenav/ui/aW;)V

    .line 119
    const v0, 0x7f10019c

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aD;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 120
    sget-char v1, Lcom/google/googlenav/ui/bn;->aX:C

    const/16 v3, 0x50c

    const/4 v4, 0x1

    invoke-virtual {p0, v0, v1, v3, v4}, Lcom/google/googlenav/ui/view/android/aD;->a(Landroid/view/View;CII)V

    .line 123
    const v0, 0x7f10019e

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aD;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 124
    sget-char v1, Lcom/google/googlenav/ui/bn;->aW:C

    const/16 v3, 0xef

    const/16 v4, 0x25b

    invoke-virtual {p0, v0, v1, v3, v4}, Lcom/google/googlenav/ui/view/android/aD;->a(Landroid/view/View;CII)V

    .line 127
    const v0, 0x7f1001a0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aD;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 128
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 129
    const v0, 0x7f100024

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aD;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 132
    const v0, 0x7f100194

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aD;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/DistanceView;

    .line 133
    const v1, 0x7f100195

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/view/android/aD;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/ui/view/android/HeadingView;

    .line 134
    invoke-virtual {v2}, Lcom/google/googlenav/ai;->D()Lat/g;

    move-result-object v2

    invoke-interface {v2}, Lat/g;->b()Lat/B;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/view/android/aS;->a(Lcom/google/googlenav/ui/view/android/DistanceView;Lcom/google/googlenav/ui/view/android/HeadingView;Lat/B;)V

    .line 137
    const v0, 0x7f10019a

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aD;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/aD;->b:Landroid/widget/ListView;

    .line 138
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aD;->c:Lcom/google/googlenav/as;

    invoke-virtual {v0}, Lcom/google/googlenav/as;->g()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_10c

    .line 139
    new-instance v0, Lcom/google/googlenav/ui/view/android/aI;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aD;->b:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/aD;->c:Lcom/google/googlenav/as;

    invoke-virtual {v2}, Lcom/google/googlenav/as;->g()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/googlenav/ui/view/android/aI;-><init>(Lcom/google/googlenav/ui/view/android/aD;Landroid/content/Context;Ljava/util/List;)V

    .line 141
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aD;->b:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 143
    :cond_10c
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aD;->b:Landroid/widget/ListView;

    new-instance v1, Lcom/google/googlenav/ui/view/android/aE;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/android/aE;-><init>(Lcom/google/googlenav/ui/view/android/aD;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 158
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aD;->c:Lcom/google/googlenav/as;

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/aD;->a(Lcom/google/googlenav/as;)V

    .line 159
    return-void
.end method

.method private m()V
    .registers 3

    .prologue
    .line 205
    sget-object v0, Lcom/google/googlenav/ui/view/android/aD;->f:Lcom/google/googlenav/android/BaseMapsActivity;

    new-instance v1, Lcom/google/googlenav/ui/view/android/aG;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/android/aG;-><init>(Lcom/google/googlenav/ui/view/android/aD;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/android/BaseMapsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 212
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;CII)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 162
    const v0, 0x7f100022

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 163
    invoke-direct {p0, v0, p2}, Lcom/google/googlenav/ui/view/android/aD;->a(Landroid/widget/ImageView;C)V

    .line 164
    const v0, 0x7f100428

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 165
    invoke-static {p3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    new-instance v1, Lcom/google/googlenav/ui/view/android/aF;

    invoke-direct {v1, p0, p4}, Lcom/google/googlenav/ui/view/android/aF;-><init>(Lcom/google/googlenav/ui/view/android/aD;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v1

    if-nez v1, :cond_31

    .line 173
    const v1, 0x7f0201ef

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 175
    :cond_31
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 176
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 177
    return-void
.end method

.method public a(Lcom/google/googlenav/as;Lah/s;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 191
    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/aD;->a:Lah/s;

    .line 192
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/aD;->c:Lcom/google/googlenav/as;

    .line 195
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aD;->show()V

    .line 196
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/aD;->l()V

    .line 197
    return-void
.end method

.method protected c()Landroid/view/View;
    .registers 4

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aD;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f04006f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public i()Lcom/google/googlenav/as;
    .registers 2

    .prologue
    .line 316
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aD;->c:Lcom/google/googlenav/as;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2
    .parameter

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/google/googlenav/ui/view/android/V;->onCreate(Landroid/os/Bundle;)V

    .line 72
    return-void
.end method
