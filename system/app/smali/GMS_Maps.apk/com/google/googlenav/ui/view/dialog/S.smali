.class public Lcom/google/googlenav/ui/view/dialog/s;
.super Lcom/google/googlenav/ui/view/android/V;
.source "SourceFile"


# instance fields
.field private final a:[Lam/h;

.field private final b:Lcom/google/googlenav/ui/view/dialog/E;

.field private final c:Lcom/google/googlenav/ui/view/dialog/D;

.field private final d:Lam/i;

.field private e:Landroid/view/View;

.field private m:Landroid/support/v4/view/ViewPager;

.field private n:[Landroid/view/View;

.field private o:Landroid/view/View;

.field private p:Landroid/view/View;


# direct methods
.method public constructor <init>(Lam/i;Lcom/google/googlenav/ui/view/dialog/D;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 110
    const v0, 0x7f0f0018

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/V;-><init>(I)V

    .line 75
    const/4 v0, 0x3

    new-array v0, v0, [Lam/h;

    const/4 v1, 0x0

    sget-object v2, Lam/h;->a:Lam/h;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lam/h;->b:Lam/h;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lam/h;->c:Lam/h;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/s;->a:[Lam/h;

    .line 111
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/s;->d:Lam/i;

    .line 112
    iput-object p2, p0, Lcom/google/googlenav/ui/view/dialog/s;->c:Lcom/google/googlenav/ui/view/dialog/D;

    .line 113
    new-instance v0, Lcom/google/googlenav/ui/view/dialog/E;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/googlenav/ui/view/dialog/E;-><init>(Lcom/google/googlenav/ui/view/dialog/t;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/s;->b:Lcom/google/googlenav/ui/view/dialog/E;

    .line 114
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/dialog/s;I)Lam/d;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/dialog/s;->e(I)Lam/d;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/dialog/s;)Landroid/view/View;
    .registers 2
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/s;->o:Landroid/view/View;

    return-object v0
.end method

.method private a(I)V
    .registers 5
    .parameter

    .prologue
    .line 227
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/dialog/s;->b(Z)V

    .line 232
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/s;->a:[Lam/h;

    aget-object v0, v0, p1

    .line 234
    new-instance v1, Lam/a;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/s;->d:Lam/i;

    invoke-direct {v1, v2}, Lam/a;-><init>(Lam/i;)V

    invoke-virtual {v1, v0}, Lam/a;->a(Lam/h;)Lam/a;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x32

    invoke-virtual {v0, v1, v2}, Lam/a;->a(II)Lam/a;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/aM;->a()Lcom/google/googlenav/aM;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/aM;->b()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lam/a;->a(Ljava/util/List;)Lam/a;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/view/dialog/x;

    invoke-direct {v1, p0, p1}, Lcom/google/googlenav/ui/view/dialog/x;-><init>(Lcom/google/googlenav/ui/view/dialog/s;I)V

    invoke-virtual {v0, v1}, Lam/a;->a(Lam/c;)Lam/a;

    move-result-object v0

    .line 258
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lac/h;->c(Lac/g;)V

    .line 259
    return-void
.end method

.method private a(ILjava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 262
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/s;->n:[Landroid/view/View;

    aget-object v0, v0, p1

    const v1, 0x7f100086

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/dialog/s;ILjava/lang/String;)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/view/dialog/s;->a(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/dialog/s;Ljava/util/List;Lam/j;)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/view/dialog/s;->a(Ljava/util/List;Lam/j;)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/dialog/s;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/dialog/s;->b(Z)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .registers 4
    .parameter

    .prologue
    .line 284
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/s;->d:Lam/i;

    invoke-virtual {v0}, Lam/i;->a()Lam/j;

    move-result-object v0

    .line 285
    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ui/view/dialog/s;->a(Ljava/util/List;Lam/j;)V

    .line 288
    new-instance v1, Lcom/google/googlenav/ui/view/dialog/y;

    invoke-direct {v1, p0, p1}, Lcom/google/googlenav/ui/view/dialog/y;-><init>(Lcom/google/googlenav/ui/view/dialog/s;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lam/j;->a(Lah/p;)I

    .line 298
    return-void
.end method

.method private a(Ljava/util/List;Lam/j;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 307
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/f;

    .line 308
    invoke-virtual {v0}, Lam/f;->h()Lam/m;

    move-result-object v0

    .line 309
    invoke-virtual {v0}, Lam/m;->e()Z

    move-result v2

    if-nez v2, :cond_4

    .line 310
    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/s;->d:Lam/i;

    invoke-virtual {v2, v0}, Lam/i;->b(Lam/m;)LS/f;

    move-result-object v2

    .line 311
    if-eqz v2, :cond_26

    .line 312
    invoke-virtual {v0, v2}, Lam/m;->a(LS/f;)V

    goto :goto_4

    .line 313
    :cond_26
    if-eqz p2, :cond_4

    .line 314
    invoke-virtual {p2, v0}, Lam/j;->a(Lam/m;)V

    goto :goto_4

    .line 318
    :cond_2c
    return-void
.end method

.method private a(Ljava/util/List;Landroid/widget/ListView;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 353
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x12c

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 354
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 355
    const/4 v0, 0x0

    move v1, v0

    :goto_11
    if-ge v1, v2, :cond_25

    .line 356
    new-instance v3, Lcom/google/googlenav/ui/view/dialog/A;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/f;

    invoke-direct {v3, v0}, Lcom/google/googlenav/ui/view/dialog/A;-><init>(Lam/f;)V

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_11

    .line 358
    :cond_25
    new-instance v0, Lcom/google/googlenav/ui/view/dialog/z;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/s;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/ui/view/dialog/s;->g:Lcom/google/googlenav/ui/g;

    const/4 v5, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/view/dialog/z;-><init>(Lcom/google/googlenav/ui/view/dialog/s;Landroid/content/Context;Lcom/google/googlenav/ui/g;Ljava/util/List;I)V

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 365
    return-void
.end method

.method static synthetic b(Lcom/google/googlenav/ui/view/dialog/s;)Landroid/view/View;
    .registers 2
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/s;->p:Landroid/view/View;

    return-object v0
.end method

.method private b(I)V
    .registers 5
    .parameter

    .prologue
    .line 271
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/dialog/s;->e(I)Lam/d;

    move-result-object v1

    .line 272
    monitor-enter v1

    .line 273
    :try_start_5
    invoke-virtual {v1}, Lam/d;->b()Ljava/util/List;

    move-result-object v0

    .line 274
    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/dialog/s;->a(Ljava/util/List;)V

    .line 275
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/dialog/s;->f(I)Landroid/widget/ListView;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/google/googlenav/ui/view/dialog/s;->a(Ljava/util/List;Landroid/widget/ListView;)V

    .line 276
    monitor-exit v1

    .line 277
    return-void

    .line 276
    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_15

    throw v0
.end method

.method static synthetic b(Lcom/google/googlenav/ui/view/dialog/s;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/dialog/s;->b(I)V

    return-void
.end method

.method private b(Z)V
    .registers 6
    .parameter

    .prologue
    .line 373
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/s;->b:Lcom/google/googlenav/ui/view/dialog/E;

    iget-boolean v0, v0, Lcom/google/googlenav/ui/view/dialog/E;->a:Z

    if-ne v0, p1, :cond_7

    .line 385
    :cond_6
    return-void

    .line 376
    :cond_7
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/s;->b:Lcom/google/googlenav/ui/view/dialog/E;

    iput-boolean p1, v0, Lcom/google/googlenav/ui/view/dialog/E;->a:Z

    .line 377
    const/4 v0, 0x0

    move v1, v0

    :goto_d
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/s;->n:[Landroid/view/View;

    array-length v0, v0

    if-ge v1, v0, :cond_6

    .line 378
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/s;->n:[Landroid/view/View;

    aget-object v0, v0, v1

    const v2, 0x7f100087

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/ModalOverlay;

    .line 379
    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/s;->b:Lcom/google/googlenav/ui/view/dialog/E;

    iget-boolean v2, v2, Lcom/google/googlenav/ui/view/dialog/E;->a:Z

    if-eqz v2, :cond_30

    .line 380
    sget-object v2, Lcom/google/googlenav/ui/view/android/bt;->a:Lcom/google/googlenav/ui/view/android/bt;

    const/16 v3, 0x263

    invoke-virtual {v0, v2, v3}, Lcom/google/googlenav/ui/view/android/ModalOverlay;->setState(Lcom/google/googlenav/ui/view/android/bt;I)V

    .line 377
    :goto_2c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d

    .line 382
    :cond_30
    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/ModalOverlay;->setHidden()V

    goto :goto_2c
.end method

.method static synthetic c(Lcom/google/googlenav/ui/view/dialog/s;)Lcom/google/googlenav/ui/view/dialog/D;
    .registers 2
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/s;->c:Lcom/google/googlenav/ui/view/dialog/D;

    return-object v0
.end method

.method private c(I)V
    .registers 3
    .parameter

    .prologue
    .line 324
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/dialog/s;->f(I)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/L;

    .line 326
    if-eqz v0, :cond_f

    .line 327
    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/L;->a()V

    .line 329
    :cond_f
    return-void
.end method

.method static synthetic c(Lcom/google/googlenav/ui/view/dialog/s;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/dialog/s;->c(I)V

    return-void
.end method

.method static synthetic d(Lcom/google/googlenav/ui/view/dialog/s;)Landroid/support/v4/view/ViewPager;
    .registers 2
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/s;->m:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method private e(I)Lam/d;
    .registers 4
    .parameter

    .prologue
    .line 332
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/s;->d:Lam/i;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/s;->a:[Lam/h;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Lam/i;->a(Lam/h;)Lam/d;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/google/googlenav/ui/view/dialog/s;)[Landroid/view/View;
    .registers 2
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/s;->n:[Landroid/view/View;

    return-object v0
.end method

.method private f(I)Landroid/widget/ListView;
    .registers 4
    .parameter

    .prologue
    .line 349
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/s;->n:[Landroid/view/View;

    aget-object v0, v0, p1

    const v1, 0x7f100026

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    return-object v0
.end method

.method private i()V
    .registers 3

    .prologue
    .line 197
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/s;->e:Landroid/view/View;

    const v1, 0x7f100084

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/s;->o:Landroid/view/View;

    .line 198
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/s;->e:Landroid/view/View;

    const v1, 0x7f100085

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/s;->p:Landroid/view/View;

    .line 200
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/s;->o:Landroid/view/View;

    new-instance v1, Lcom/google/googlenav/ui/view/dialog/v;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/dialog/v;-><init>(Lcom/google/googlenav/ui/view/dialog/s;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/s;->p:Landroid/view/View;

    new-instance v1, Lcom/google/googlenav/ui/view/dialog/w;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/dialog/w;-><init>(Lcom/google/googlenav/ui/view/dialog/s;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    return-void
.end method

.method private l()V
    .registers 3

    .prologue
    .line 221
    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x3

    if-ge v0, v1, :cond_a

    .line 222
    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/dialog/s;->a(I)V

    .line 221
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 224
    :cond_a
    return-void
.end method


# virtual methods
.method protected a(Landroid/app/ActionBar;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 123
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/s;->w_()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 124
    invoke-virtual {p1, v1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 126
    const v0, 0x7f0200b3

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setIcon(I)V

    .line 127
    invoke-virtual {p1, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 128
    return-void
.end method

.method public c()Landroid/view/View;
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v1, 0x0

    .line 141
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/s;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f040019

    invoke-virtual {v0, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/s;->e:Landroid/view/View;

    .line 142
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/s;->e:Landroid/view/View;

    const v2, 0x7f100081

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/s;->m:Landroid/support/v4/view/ViewPager;

    .line 144
    new-array v0, v5, [Landroid/view/View;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/s;->n:[Landroid/view/View;

    move v0, v1

    .line 145
    :goto_22
    if-ge v0, v5, :cond_3f

    .line 146
    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/s;->n:[Landroid/view/View;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/s;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f04001a

    invoke-virtual {v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v0

    .line 147
    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/s;->m:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lcom/google/googlenav/ui/view/dialog/s;->n:[Landroid/view/View;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;)V

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 150
    :cond_3f
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/s;->i()V

    .line 152
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/s;->m:Landroid/support/v4/view/ViewPager;

    new-instance v2, Lcom/google/googlenav/ui/view/dialog/C;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/view/dialog/C;-><init>(Lcom/google/googlenav/ui/view/dialog/s;)V

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/x;)V

    .line 153
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/s;->m:Landroid/support/v4/view/ViewPager;

    new-instance v2, Lcom/google/googlenav/ui/view/dialog/t;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/view/dialog/t;-><init>(Lcom/google/googlenav/ui/view/dialog/s;)V

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ai;)V

    .line 163
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/s;->m:Landroid/support/v4/view/ViewPager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 165
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-nez v0, :cond_8d

    .line 167
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/s;->e:Landroid/view/View;

    const v2, 0x7f100088

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 168
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 170
    const v0, 0x7f10001e

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/s;->w_()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    const v0, 0x7f100089

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/view/dialog/u;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/dialog/u;-><init>(Lcom/google/googlenav/ui/view/dialog/s;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    :cond_8d
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/s;->l()V

    .line 185
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/s;->e:Landroid/view/View;

    return-object v0
.end method

.method protected d()V
    .registers 3

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/s;->m:Landroid/support/v4/view/ViewPager;

    const v1, 0x7f100082

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ui/bn;->a(Landroid/view/View;)V

    .line 193
    invoke-super {p0}, Lcom/google/googlenav/ui/view/android/V;->d()V

    .line 194
    return-void
.end method

.method protected j()Z
    .registers 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/s;->c:Lcom/google/googlenav/ui/view/dialog/D;

    if-eqz v0, :cond_b

    .line 133
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/s;->c:Lcom/google/googlenav/ui/view/dialog/D;

    invoke-interface {v0}, Lcom/google/googlenav/ui/view/dialog/D;->a()V

    .line 134
    const/4 v0, 0x1

    .line 136
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 389
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/s;->c:Lcom/google/googlenav/ui/view/dialog/D;

    if-eqz v0, :cond_9

    .line 390
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/s;->c:Lcom/google/googlenav/ui/view/dialog/D;

    invoke-interface {v0}, Lcom/google/googlenav/ui/view/dialog/D;->a()V

    .line 392
    :cond_9
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 397
    const/16 v0, 0x54

    if-ne p1, v0, :cond_6

    .line 398
    const/4 v0, 0x1

    .line 400
    :goto_5
    return v0

    :cond_6
    invoke-super {p0, p1, p2}, Lcom/google/googlenav/ui/view/android/V;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_5
.end method

.method public w_()Ljava/lang/String;
    .registers 2

    .prologue
    .line 118
    const/16 v0, 0x256

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
