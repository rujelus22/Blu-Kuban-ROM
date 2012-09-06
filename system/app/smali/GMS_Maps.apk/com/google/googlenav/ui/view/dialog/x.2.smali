.class public Lcom/google/googlenav/ui/view/dialog/X;
.super Lcom/google/googlenav/ui/view/android/V;
.source "SourceFile"


# instance fields
.field a:Lcom/google/googlenav/ui/view/android/L;

.field private final b:Lcom/google/googlenav/ui/view/dialog/ah;

.field private final c:Lcom/google/googlenav/friend/history/l;

.field private d:Landroid/view/View;

.field private e:LaL/l;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/friend/history/l;Lcom/google/googlenav/ui/view/dialog/ah;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/V;-><init>()V

    .line 124
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/X;->c:Lcom/google/googlenav/friend/history/l;

    .line 125
    iput-object p2, p0, Lcom/google/googlenav/ui/view/dialog/X;->b:Lcom/google/googlenav/ui/view/dialog/ah;

    .line 126
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/X;->w_()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f100025

    const v2, 0x7f02020f

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/googlenav/ui/view/dialog/X;->a(Ljava/lang/CharSequence;II)V

    .line 127
    return-void
.end method

.method private a(Ljava/lang/String;)LaL/g;
    .registers 4
    .parameter

    .prologue
    .line 312
    new-instance v0, LaL/g;

    new-instance v1, Lcom/google/googlenav/ui/view/dialog/ad;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/dialog/ad;-><init>(Lcom/google/googlenav/ui/view/dialog/X;)V

    invoke-direct {v0, p1, v1}, LaL/g;-><init>(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/dialog/X;)Lcom/google/googlenav/friend/history/l;
    .registers 2
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/X;->c:Lcom/google/googlenav/friend/history/l;

    return-object v0
.end method

.method static synthetic b(Lcom/google/googlenav/ui/view/dialog/X;)Lcom/google/googlenav/ui/view/dialog/ah;
    .registers 2
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/X;->b:Lcom/google/googlenav/ui/view/dialog/ah;

    return-object v0
.end method

.method static synthetic c(Lcom/google/googlenav/ui/view/dialog/X;)LaL/l;
    .registers 2
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/X;->e:LaL/l;

    return-object v0
.end method

.method private l()Ljava/util/List;
    .registers 6

    .prologue
    .line 258
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/X;->c:Lcom/google/googlenav/friend/history/l;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/history/l;->o()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    if-nez v0, :cond_d

    .line 260
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 308
    :goto_c
    return-object v0

    .line 263
    :cond_d
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 264
    new-instance v1, LaQ/bv;

    const/4 v2, 0x0

    const v3, 0x7f0400dd

    const/16 v4, 0xd9

    invoke-static {v4}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, LaQ/bv;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/X;->c:Lcom/google/googlenav/friend/history/l;

    invoke-virtual {v1}, Lcom/google/googlenav/friend/history/l;->k()Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 270
    new-instance v1, LaL/k;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/X;->c:Lcom/google/googlenav/friend/history/l;

    invoke-virtual {v2}, Lcom/google/googlenav/friend/history/l;->o()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-direct {v1, v2}, LaL/k;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    const/16 v1, 0x14b

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/view/dialog/X;->a(Ljava/lang/String;)LaL/g;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 273
    :cond_4b
    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/X;->c:Lcom/google/googlenav/friend/history/l;

    invoke-virtual {v1}, Lcom/google/googlenav/friend/history/l;->l()Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 274
    new-instance v1, LaL/E;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/X;->c:Lcom/google/googlenav/friend/history/l;

    invoke-virtual {v2}, Lcom/google/googlenav/friend/history/l;->o()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-direct {v1, v2}, LaL/E;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    const/16 v1, 0x14d

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/view/dialog/X;->a(Ljava/lang/String;)LaL/g;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 278
    :cond_6f
    new-instance v1, LaL/j;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/X;->c:Lcom/google/googlenav/friend/history/l;

    invoke-virtual {v2}, Lcom/google/googlenav/friend/history/l;->o()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-direct {v1, v2}, LaL/j;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    new-instance v1, LaL/g;

    const/16 v2, 0x28b

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/google/googlenav/ui/view/dialog/aa;

    invoke-direct {v3, p0}, Lcom/google/googlenav/ui/view/dialog/aa;-><init>(Lcom/google/googlenav/ui/view/dialog/X;)V

    invoke-direct {v1, v2, v3}, LaL/g;-><init>(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    new-instance v1, LaL/g;

    const/16 v2, 0x293

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/google/googlenav/ui/view/dialog/ab;

    invoke-direct {v3, p0}, Lcom/google/googlenav/ui/view/dialog/ab;-><init>(Lcom/google/googlenav/ui/view/dialog/X;)V

    invoke-direct {v1, v2, v3}, LaL/g;-><init>(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    new-instance v1, LaL/g;

    const/16 v2, 0x28f

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/google/googlenav/ui/view/dialog/ac;

    invoke-direct {v3, p0}, Lcom/google/googlenav/ui/view/dialog/ac;-><init>(Lcom/google/googlenav/ui/view/dialog/X;)V

    invoke-direct {v1, v2, v3}, LaL/g;-><init>(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c
.end method

.method private m()Ljava/util/List;
    .registers 6

    .prologue
    .line 324
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 325
    new-instance v1, LaL/r;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/X;->c:Lcom/google/googlenav/friend/history/l;

    invoke-virtual {v2}, Lcom/google/googlenav/friend/history/l;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, LaL/r;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    new-instance v1, LaQ/bv;

    const/4 v2, 0x0

    const v3, 0x7f0400dd

    const/16 v4, 0x27c

    invoke-static {v4}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, LaQ/bv;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    new-instance v1, LaL/d;

    const/16 v2, 0x28d

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0201f9

    new-instance v4, Lcom/google/googlenav/ui/view/dialog/ae;

    invoke-direct {v4, p0}, Lcom/google/googlenav/ui/view/dialog/ae;-><init>(Lcom/google/googlenav/ui/view/dialog/X;)V

    invoke-direct {v1, v2, v3, v4}, LaL/d;-><init>(Ljava/lang/String;ILandroid/view/View$OnClickListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 339
    return-object v0
.end method

.method private n()Ljava/util/List;
    .registers 12

    .prologue
    const v6, 0x7f0400dd

    const/4 v10, 0x7

    const/4 v1, 0x0

    .line 346
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/X;->c:Lcom/google/googlenav/friend/history/l;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/history/l;->o()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 348
    if-nez v2, :cond_12

    .line 349
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/X;->m()Ljava/util/List;

    move-result-object v0

    .line 388
    :goto_11
    return-object v0

    .line 352
    :cond_12
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 353
    new-instance v3, LaQ/bv;

    const/16 v4, 0x283

    invoke-static {v4}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v6, v4}, LaQ/bv;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    new-instance v3, LaL/D;

    invoke-direct {v3, v2}, LaL/D;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 360
    new-instance v3, LaL/a;

    const/16 v4, 0x282

    invoke-static {v4}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/google/googlenav/ui/view/dialog/af;

    invoke-direct {v5, p0}, Lcom/google/googlenav/ui/view/dialog/af;-><init>(Lcom/google/googlenav/ui/view/dialog/X;)V

    invoke-direct {v3, v4, v5}, LaL/a;-><init>(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 369
    new-instance v3, LaQ/bv;

    const/16 v4, 0x28f

    invoke-static {v4}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v6, v4}, LaQ/bv;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 372
    iget-object v3, p0, Lcom/google/googlenav/ui/view/dialog/X;->c:Lcom/google/googlenav/friend/history/l;

    invoke-virtual {v3}, Lcom/google/googlenav/friend/history/l;->p()[Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    array-length v4, v3

    :goto_5c
    if-ge v1, v4, :cond_77

    aget-object v5, v3, v1

    .line 373
    invoke-virtual {v5, v10}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v2, v10}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-eqz v6, :cond_74

    .line 375
    new-instance v6, LaL/x;

    invoke-direct {v6, v5}, LaL/x;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 372
    :cond_74
    add-int/lit8 v1, v1, 0x1

    goto :goto_5c

    .line 379
    :cond_77
    new-instance v1, LaL/d;

    const/16 v2, 0x28c

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0201f9

    new-instance v4, Lcom/google/googlenav/ui/view/dialog/ag;

    invoke-direct {v4, p0}, Lcom/google/googlenav/ui/view/dialog/ag;-><init>(Lcom/google/googlenav/ui/view/dialog/X;)V

    invoke-direct {v1, v2, v3, v4}, LaL/d;-><init>(Ljava/lang/String;ILandroid/view/View$OnClickListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11
.end method


# virtual methods
.method protected a(Landroid/app/ActionBar;)V
    .registers 4
    .parameter

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/X;->d:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 142
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 143
    return-void
.end method

.method public b(Z)V
    .registers 5
    .parameter

    .prologue
    .line 232
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/X;->a:Lcom/google/googlenav/ui/view/android/L;

    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/view/dialog/X;->c(Z)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/L;->a(Ljava/util/List;)V

    .line 233
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/X;->e:LaL/l;

    if-eqz v0, :cond_15

    .line 234
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/X;->a:Lcom/google/googlenav/ui/view/android/L;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/X;->e:LaL/l;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/view/android/L;->insert(Ljava/lang/Object;I)V

    .line 236
    :cond_15
    return-void
.end method

.method protected c()Landroid/view/View;
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 163
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/X;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040025

    invoke-virtual {v0, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 164
    const v0, 0x7f100025

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/X;->d:Landroid/view/View;

    .line 166
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v2

    .line 167
    new-instance v0, Lcom/google/googlenav/friend/history/L;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/X;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/google/googlenav/friend/history/L;-><init>(Landroid/content/Context;)V

    .line 168
    new-instance v3, LaL/l;

    iget-object v4, p0, Lcom/google/googlenav/ui/view/dialog/X;->c:Lcom/google/googlenav/friend/history/l;

    invoke-virtual {v4}, Lcom/google/googlenav/friend/history/l;->q()Lcom/google/googlenav/friend/history/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/googlenav/friend/history/b;->d()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/googlenav/ui/view/dialog/X;->c:Lcom/google/googlenav/friend/history/l;

    invoke-virtual {v5}, Lcom/google/googlenav/friend/history/l;->i()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v0}, Lcom/google/googlenav/friend/history/L;->a()Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v3, v4, v5, v6, v0}, LaL/l;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v3, p0, Lcom/google/googlenav/ui/view/dialog/X;->e:LaL/l;

    .line 173
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/X;->e:LaL/l;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/X;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 176
    new-instance v0, Lcom/google/googlenav/ui/view/android/L;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/X;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x7

    invoke-direct {v0, v3, v7, v2, v4}, Lcom/google/googlenav/ui/view/android/L;-><init>(Landroid/content/Context;Lcom/google/googlenav/ui/g;Ljava/util/List;I)V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/X;->a:Lcom/google/googlenav/ui/view/android/L;

    .line 179
    const v0, 0x7f100026

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 180
    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/X;->a:Lcom/google/googlenav/ui/view/android/L;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 181
    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 182
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 183
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 185
    new-instance v2, Lcom/google/googlenav/ui/view/dialog/Y;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/view/dialog/Y;-><init>(Lcom/google/googlenav/ui/view/dialog/X;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 215
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/X;->b:Lcom/google/googlenav/ui/view/dialog/ah;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/X;->c:Lcom/google/googlenav/friend/history/l;

    invoke-virtual {v2}, Lcom/google/googlenav/friend/history/l;->r()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/google/googlenav/ui/view/dialog/Z;

    invoke-direct {v3, p0}, Lcom/google/googlenav/ui/view/dialog/Z;-><init>(Lcom/google/googlenav/ui/view/dialog/X;)V

    invoke-interface {v0, v2, v3}, Lcom/google/googlenav/ui/view/dialog/ah;->a(Ljava/lang/String;Lcom/google/googlenav/ui/wizard/bi;)V

    .line 223
    return-object v1
.end method

.method c(Z)Ljava/util/List;
    .registers 3
    .parameter

    .prologue
    .line 247
    if-eqz p1, :cond_7

    .line 248
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/X;->l()Ljava/util/List;

    move-result-object v0

    .line 250
    :goto_6
    return-object v0

    :cond_7
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/X;->n()Ljava/util/List;

    move-result-object v0

    goto :goto_6
.end method

.method public e()Z
    .registers 2

    .prologue
    .line 136
    const/4 v0, 0x1

    return v0
.end method

.method i()Ljava/util/List;
    .registers 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/X;->c:Lcom/google/googlenav/friend/history/l;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/history/l;->m()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/dialog/X;->c(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected j()Z
    .registers 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/X;->b:Lcom/google/googlenav/ui/view/dialog/ah;

    if-eqz v0, :cond_b

    .line 148
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/X;->b:Lcom/google/googlenav/ui/view/dialog/ah;

    invoke-interface {v0}, Lcom/google/googlenav/ui/view/dialog/ah;->a()V

    .line 149
    const/4 v0, 0x1

    .line 151
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/X;->b:Lcom/google/googlenav/ui/view/dialog/ah;

    if-eqz v0, :cond_9

    .line 157
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/X;->b:Lcom/google/googlenav/ui/view/dialog/ah;

    invoke-interface {v0}, Lcom/google/googlenav/ui/view/dialog/ah;->a()V

    .line 159
    :cond_9
    return-void
.end method

.method public w_()Ljava/lang/String;
    .registers 2

    .prologue
    .line 131
    const/16 v0, 0xd9

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
