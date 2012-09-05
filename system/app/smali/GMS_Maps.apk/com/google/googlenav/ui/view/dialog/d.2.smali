.class public Lcom/google/googlenav/ui/view/dialog/d;
.super Lcom/google/googlenav/ui/view/android/ap;


# instance fields
.field private final a:[LaD/h;

.field private final b:Lcom/google/googlenav/ui/view/dialog/p;

.field private final c:Lcom/google/googlenav/ui/view/dialog/o;

.field private final d:LaD/i;

.field private k:Landroid/view/View;

.field private l:Landroid/support/v4/view/ViewPager;

.field private m:[Landroid/view/View;

.field private n:Landroid/view/View;

.field private o:Landroid/view/View;


# direct methods
.method public constructor <init>(LaD/i;Lcom/google/googlenav/ui/view/dialog/o;)V
    .registers 6

    const v0, 0x7f0d001a

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/ap;-><init>(I)V

    const/4 v0, 0x3

    new-array v0, v0, [LaD/h;

    const/4 v1, 0x0

    sget-object v2, LaD/h;->a:LaD/h;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, LaD/h;->b:LaD/h;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, LaD/h;->c:LaD/h;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/d;->a:[LaD/h;

    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/d;->d:LaD/i;

    iput-object p2, p0, Lcom/google/googlenav/ui/view/dialog/d;->c:Lcom/google/googlenav/ui/view/dialog/o;

    new-instance v0, Lcom/google/googlenav/ui/view/dialog/p;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/googlenav/ui/view/dialog/p;-><init>(Lcom/google/googlenav/ui/view/dialog/e;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/d;->b:Lcom/google/googlenav/ui/view/dialog/p;

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/dialog/d;I)LaD/d;
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/dialog/d;->e(I)LaD/d;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/dialog/d;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/d;->n:Landroid/view/View;

    return-object v0
.end method

.method private a(I)V
    .registers 5

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/dialog/d;->a(Z)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/d;->a:[LaD/h;

    aget-object v0, v0, p1

    new-instance v1, LaD/a;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/d;->d:LaD/i;

    invoke-direct {v1, v2}, LaD/a;-><init>(LaD/i;)V

    invoke-virtual {v1, v0}, LaD/a;->a(LaD/h;)LaD/a;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x32

    invoke-virtual {v0, v1, v2}, LaD/a;->a(II)LaD/a;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/view/dialog/i;

    invoke-direct {v1, p0, p1}, Lcom/google/googlenav/ui/view/dialog/i;-><init>(Lcom/google/googlenav/ui/view/dialog/d;I)V

    invoke-virtual {v0, v1}, LaD/a;->a(LaD/c;)LaD/a;

    move-result-object v0

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lat/h;->c(Lat/g;)V

    return-void
.end method

.method private a(ILjava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/d;->m:[Landroid/view/View;

    aget-object v0, v0, p1

    const v1, 0x7f0f0059

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/dialog/d;ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/view/dialog/d;->a(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/dialog/d;Ljava/util/List;LaD/j;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/view/dialog/d;->a(Ljava/util/List;LaD/j;)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/dialog/d;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/dialog/d;->a(Z)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/d;->d:LaD/i;

    invoke-virtual {v0}, LaD/i;->a()LaD/j;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ui/view/dialog/d;->a(Ljava/util/List;LaD/j;)V

    new-instance v1, Lcom/google/googlenav/ui/view/dialog/j;

    invoke-direct {v1, p0, p1}, Lcom/google/googlenav/ui/view/dialog/j;-><init>(Lcom/google/googlenav/ui/view/dialog/d;Ljava/util/List;)V

    invoke-virtual {v0, v1}, LaD/j;->a(Lay/q;)I

    return-void
.end method

.method private a(Ljava/util/List;LaD/j;)V
    .registers 6

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaD/f;

    invoke-virtual {v0}, LaD/f;->h()LaD/m;

    move-result-object v0

    invoke-virtual {v0}, LaD/m;->e()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/d;->d:LaD/i;

    invoke-virtual {v2, v0}, LaD/i;->b(LaD/m;)Lah/f;

    move-result-object v2

    if-eqz v2, :cond_26

    invoke-virtual {v0, v2}, LaD/m;->a(Lah/f;)V

    goto :goto_4

    :cond_26
    if-eqz p2, :cond_4

    invoke-virtual {p2, v0}, LaD/j;->a(LaD/m;)V

    goto :goto_4

    :cond_2c
    return-void
.end method

.method private a(Ljava/util/List;Landroid/widget/ListView;)V
    .registers 9

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x12c

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_11
    if-ge v1, v2, :cond_25

    new-instance v3, Lcom/google/googlenav/ui/view/dialog/l;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaD/f;

    invoke-direct {v3, v0}, Lcom/google/googlenav/ui/view/dialog/l;-><init>(LaD/f;)V

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_11

    :cond_25
    new-instance v0, Lcom/google/googlenav/ui/view/dialog/k;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/d;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/ui/view/dialog/d;->f:Lcom/google/googlenav/ui/p;

    const/4 v5, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/view/dialog/k;-><init>(Lcom/google/googlenav/ui/view/dialog/d;Landroid/content/Context;Lcom/google/googlenav/ui/p;Ljava/util/List;I)V

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method private a(Z)V
    .registers 6

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/d;->b:Lcom/google/googlenav/ui/view/dialog/p;

    iget-boolean v0, v0, Lcom/google/googlenav/ui/view/dialog/p;->a:Z

    if-ne v0, p1, :cond_7

    :cond_6
    return-void

    :cond_7
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/d;->b:Lcom/google/googlenav/ui/view/dialog/p;

    iput-boolean p1, v0, Lcom/google/googlenav/ui/view/dialog/p;->a:Z

    const/4 v0, 0x0

    move v1, v0

    :goto_d
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/d;->m:[Landroid/view/View;

    array-length v0, v0

    if-ge v1, v0, :cond_6

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/d;->m:[Landroid/view/View;

    aget-object v0, v0, v1

    const v2, 0x7f0f005b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/ModalOverlay;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/d;->b:Lcom/google/googlenav/ui/view/dialog/p;

    iget-boolean v2, v2, Lcom/google/googlenav/ui/view/dialog/p;->a:Z

    if-eqz v2, :cond_30

    sget-object v2, Lcom/google/googlenav/ui/view/android/bB;->a:Lcom/google/googlenav/ui/view/android/bB;

    const/16 v3, 0x22f

    invoke-virtual {v0, v2, v3}, Lcom/google/googlenav/ui/view/android/ModalOverlay;->a(Lcom/google/googlenav/ui/view/android/bB;I)V

    :goto_2c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d

    :cond_30
    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/ModalOverlay;->a()V

    goto :goto_2c
.end method

.method static synthetic b(Lcom/google/googlenav/ui/view/dialog/d;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/d;->o:Landroid/view/View;

    return-object v0
.end method

.method private b(I)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/dialog/d;->e(I)LaD/d;

    move-result-object v1

    monitor-enter v1

    :try_start_5
    invoke-virtual {v1}, LaD/d;->b()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/dialog/d;->a(Ljava/util/List;)V

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/dialog/d;->f(I)Landroid/widget/ListView;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/google/googlenav/ui/view/dialog/d;->a(Ljava/util/List;Landroid/widget/ListView;)V

    monitor-exit v1

    return-void

    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_15

    throw v0
.end method

.method static synthetic b(Lcom/google/googlenav/ui/view/dialog/d;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/dialog/d;->b(I)V

    return-void
.end method

.method static synthetic c(Lcom/google/googlenav/ui/view/dialog/d;)Lcom/google/googlenav/ui/view/dialog/o;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/d;->c:Lcom/google/googlenav/ui/view/dialog/o;

    return-object v0
.end method

.method private c(I)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/dialog/d;->f(I)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/R;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/R;->a()V

    :cond_f
    return-void
.end method

.method static synthetic c(Lcom/google/googlenav/ui/view/dialog/d;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/dialog/d;->c(I)V

    return-void
.end method

.method static synthetic d(Lcom/google/googlenav/ui/view/dialog/d;)Landroid/support/v4/view/ViewPager;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/d;->l:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method private e(I)LaD/d;
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/d;->d:LaD/i;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/d;->a:[LaD/h;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, LaD/i;->a(LaD/h;)LaD/d;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/google/googlenav/ui/view/dialog/d;)[Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/d;->m:[Landroid/view/View;

    return-object v0
.end method

.method private f(I)Landroid/widget/ListView;
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/d;->m:[Landroid/view/View;

    aget-object v0, v0, p1

    const v1, 0x7f0f005a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    return-object v0
.end method

.method private h()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/d;->k:Landroid/view/View;

    const v1, 0x7f0f0057

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/d;->n:Landroid/view/View;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/d;->k:Landroid/view/View;

    const v1, 0x7f0f0058

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/d;->o:Landroid/view/View;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/d;->n:Landroid/view/View;

    new-instance v1, Lcom/google/googlenav/ui/view/dialog/g;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/dialog/g;-><init>(Lcom/google/googlenav/ui/view/dialog/d;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/d;->o:Landroid/view/View;

    new-instance v1, Lcom/google/googlenav/ui/view/dialog/h;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/dialog/h;-><init>(Lcom/google/googlenav/ui/view/dialog/d;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private i()V
    .registers 3

    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x3

    if-ge v0, v1, :cond_a

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/dialog/d;->a(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_a
    return-void
.end method


# virtual methods
.method protected a(Landroid/app/ActionBar;)V
    .registers 4

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/d;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    const v0, 0x7f020096

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setIcon(I)V

    invoke-virtual {p1, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    return-void
.end method

.method protected a(Landroid/view/MenuItem;)Z
    .registers 4

    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_1a

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/d;->c:Lcom/google/googlenav/ui/view/dialog/o;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/d;->c:Lcom/google/googlenav/ui/view/dialog/o;

    invoke-interface {v0}, Lcom/google/googlenav/ui/view/dialog/o;->a()V

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public c()Landroid/view/View;
    .registers 8

    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/d;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030011

    invoke-virtual {v0, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/d;->k:Landroid/view/View;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/d;->k:Landroid/view/View;

    const v2, 0x7f0f0055

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/d;->l:Landroid/support/v4/view/ViewPager;

    new-array v0, v5, [Landroid/view/View;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/d;->m:[Landroid/view/View;

    move v0, v1

    :goto_22
    if-ge v0, v5, :cond_3f

    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/d;->m:[Landroid/view/View;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/d;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030012

    invoke-virtual {v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/d;->l:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lcom/google/googlenav/ui/view/dialog/d;->m:[Landroid/view/View;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_3f
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/d;->h()V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/d;->l:Landroid/support/v4/view/ViewPager;

    new-instance v2, Lcom/google/googlenav/ui/view/dialog/n;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/view/dialog/n;-><init>(Lcom/google/googlenav/ui/view/dialog/d;)V

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/d;->l:Landroid/support/v4/view/ViewPager;

    new-instance v2, Lcom/google/googlenav/ui/view/dialog/e;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/view/dialog/e;-><init>(Lcom/google/googlenav/ui/view/dialog/d;)V

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/d;->l:Landroid/support/v4/view/ViewPager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v0

    if-nez v0, :cond_8d

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/d;->k:Landroid/view/View;

    const v2, 0x7f0f0052

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0f0006

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/d;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0f0053

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/view/dialog/f;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/dialog/f;-><init>(Lcom/google/googlenav/ui/view/dialog/d;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8d
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/d;->i()V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/d;->k:Landroid/view/View;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    const/16 v0, 0x223

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/d;->c:Lcom/google/googlenav/ui/view/dialog/o;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/d;->c:Lcom/google/googlenav/ui/view/dialog/o;

    invoke-interface {v0}, Lcom/google/googlenav/ui/view/dialog/o;->a()V

    :cond_9
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/16 v0, 0x54

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    invoke-super {p0, p1, p2}, Lcom/google/googlenav/ui/view/android/ap;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_5
.end method
