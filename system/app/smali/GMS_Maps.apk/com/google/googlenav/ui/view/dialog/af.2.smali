.class public Lcom/google/googlenav/ui/view/dialog/aF;
.super Lcom/google/googlenav/ui/view/android/V;
.source "SourceFile"


# instance fields
.field a:Ljava/util/List;

.field private b:Lcom/google/googlenav/ui/view/dialog/aL;

.field private c:Lcom/google/googlenav/ui/view/dialog/aJ;

.field private d:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/view/dialog/aL;)V
    .registers 5
    .parameter

    .prologue
    .line 217
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/V;-><init>()V

    .line 202
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aF;->a:Ljava/util/List;

    .line 218
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/aF;->b:Lcom/google/googlenav/ui/view/dialog/aL;

    .line 219
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/aF;->w_()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f100025

    const v2, 0x7f02020f

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/googlenav/ui/view/dialog/aF;->a(Ljava/lang/CharSequence;II)V

    .line 220
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/dialog/aF;)Lcom/google/googlenav/ui/view/dialog/aL;
    .registers 2
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aF;->b:Lcom/google/googlenav/ui/view/dialog/aL;

    return-object v0
.end method

.method private b(Ljava/util/List;Lcom/google/googlenav/friend/history/b;Lcom/google/googlenav/friend/history/b;Lcom/google/googlenav/friend/history/b;)Ljava/util/List;
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 333
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v4

    .line 334
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aF;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 335
    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 336
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/friend/history/I;

    .line 337
    instance-of v2, v0, Lcom/google/googlenav/friend/history/u;

    if-eqz v2, :cond_b

    .line 338
    check-cast v0, Lcom/google/googlenav/friend/history/u;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 343
    :cond_21
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 344
    :cond_25
    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 345
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/friend/history/u;

    .line 349
    instance-of v2, v0, Lcom/google/googlenav/friend/history/O;

    if-eqz v2, :cond_38

    .line 350
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 354
    :cond_38
    invoke-virtual {v0}, Lcom/google/googlenav/friend/history/u;->c()Lcom/google/googlenav/friend/history/b;

    move-result-object v2

    invoke-virtual {v2, p4}, Lcom/google/googlenav/friend/history/b;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 356
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 361
    :cond_45
    invoke-virtual {v0}, Lcom/google/googlenav/friend/history/u;->c()Lcom/google/googlenav/friend/history/b;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/google/googlenav/friend/history/b;->b(Lcom/google/googlenav/friend/history/b;)I

    move-result v0

    const/16 v2, 0xe

    if-le v0, v2, :cond_25

    .line 362
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_25

    .line 368
    :cond_55
    invoke-static {p2, p3}, Lcom/google/googlenav/friend/history/b;->a(Lcom/google/googlenav/friend/history/b;Lcom/google/googlenav/friend/history/b;)Ljava/util/List;

    move-result-object v0

    .line 370
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v3

    :goto_5e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ae

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/friend/history/b;

    .line 371
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_8c

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/friend/history/J;

    invoke-virtual {v1}, Lcom/google/googlenav/friend/history/J;->b()Lcom/google/googlenav/friend/history/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/friend/history/b;->a(Lcom/google/googlenav/friend/history/b;)I

    move-result v1

    if-ltz v1, :cond_8c

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/friend/history/J;

    invoke-virtual {v1}, Lcom/google/googlenav/friend/history/J;->e()Z

    move-result v1

    if-eqz v1, :cond_97

    .line 374
    :cond_8c
    new-instance v1, Lcom/google/googlenav/friend/history/M;

    invoke-direct {v1, v0}, Lcom/google/googlenav/friend/history/M;-><init>(Lcom/google/googlenav/friend/history/b;)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v2

    :goto_95
    move v2, v0

    .line 378
    goto :goto_5e

    .line 376
    :cond_97
    new-instance v6, Lcom/google/googlenav/friend/history/g;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/aF;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/friend/history/J;

    iget-object v8, p0, Lcom/google/googlenav/ui/view/dialog/aF;->b:Lcom/google/googlenav/ui/view/dialog/aL;

    invoke-direct {v6, v0, v7, v1, v8}, Lcom/google/googlenav/friend/history/g;-><init>(Lcom/google/googlenav/friend/history/b;Landroid/content/Context;Lcom/google/googlenav/friend/history/J;Lcom/google/googlenav/ui/view/dialog/aL;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    add-int/lit8 v0, v2, 0x1

    goto :goto_95

    .line 383
    :cond_ae
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 387
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/google/googlenav/friend/history/p;

    if-nez v0, :cond_d7

    .line 388
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/friend/history/u;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/history/u;->c()Lcom/google/googlenav/friend/history/b;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/friend/history/b;->a(I)Lcom/google/googlenav/friend/history/b;

    move-result-object v0

    .line 390
    new-instance v1, Lcom/google/googlenav/friend/history/p;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/aF;->b:Lcom/google/googlenav/ui/view/dialog/aL;

    const/4 v5, -0x7

    invoke-virtual {v0, v5}, Lcom/google/googlenav/friend/history/b;->a(I)Lcom/google/googlenav/friend/history/b;

    move-result-object v5

    invoke-direct {v1, v0, v2, v5, v0}, Lcom/google/googlenav/friend/history/p;-><init>(Lcom/google/googlenav/friend/history/b;Lcom/google/googlenav/ui/view/dialog/aL;Lcom/google/googlenav/friend/history/b;Lcom/google/googlenav/friend/history/b;)V

    .line 392
    invoke-interface {v4, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 397
    :cond_d7
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/friend/history/u;

    .line 400
    instance-of v1, v0, Lcom/google/googlenav/friend/history/p;

    if-nez v1, :cond_117

    invoke-virtual {v0}, Lcom/google/googlenav/friend/history/u;->c()Lcom/google/googlenav/friend/history/b;

    move-result-object v1

    invoke-static {}, Lcom/google/googlenav/ui/view/dialog/aF;->o()Lcom/google/googlenav/friend/history/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/friend/history/b;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_117

    .line 402
    invoke-virtual {v0}, Lcom/google/googlenav/friend/history/u;->c()Lcom/google/googlenav/friend/history/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/friend/history/b;->a(I)Lcom/google/googlenav/friend/history/b;

    move-result-object v1

    .line 405
    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Lcom/google/googlenav/friend/history/b;->a(I)Lcom/google/googlenav/friend/history/b;

    move-result-object v0

    .line 406
    invoke-static {}, Lcom/google/googlenav/ui/view/dialog/aF;->o()Lcom/google/googlenav/friend/history/b;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/googlenav/friend/history/b;->a(Lcom/google/googlenav/friend/history/b;)I

    move-result v2

    if-gtz v2, :cond_118

    .line 408
    :goto_10d
    new-instance v2, Lcom/google/googlenav/friend/history/p;

    iget-object v3, p0, Lcom/google/googlenav/ui/view/dialog/aF;->b:Lcom/google/googlenav/ui/view/dialog/aL;

    invoke-direct {v2, v1, v3, v1, v0}, Lcom/google/googlenav/friend/history/p;-><init>(Lcom/google/googlenav/friend/history/b;Lcom/google/googlenav/ui/view/dialog/aL;Lcom/google/googlenav/friend/history/b;Lcom/google/googlenav/friend/history/b;)V

    .line 410
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 414
    :cond_117
    return-object v4

    .line 406
    :cond_118
    invoke-static {}, Lcom/google/googlenav/ui/view/dialog/aF;->o()Lcom/google/googlenav/friend/history/b;

    move-result-object v0

    goto :goto_10d
.end method

.method static synthetic n()Lcom/google/googlenav/friend/history/b;
    .registers 1

    .prologue
    .line 67
    invoke-static {}, Lcom/google/googlenav/ui/view/dialog/aF;->o()Lcom/google/googlenav/friend/history/b;

    move-result-object v0

    return-object v0
.end method

.method private static o()Lcom/google/googlenav/friend/history/b;
    .registers 1

    .prologue
    .line 239
    invoke-static {}, Lcom/google/googlenav/friend/history/b;->a()Lcom/google/googlenav/friend/history/b;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public I_()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 449
    const v0, 0x7f02020f

    new-instance v1, Lcom/google/googlenav/ui/view/dialog/aG;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/dialog/aG;-><init>(Lcom/google/googlenav/ui/view/dialog/aF;)V

    new-array v2, v5, [I

    const/4 v3, 0x0

    const/16 v4, 0xbc3

    aput v4, v2, v3

    invoke-virtual {p0, v5, v0, v1, v2}, Lcom/google/googlenav/ui/view/dialog/aF;->a(ZILag/f;[I)V

    .line 458
    return-void
.end method

.method protected N_()V
    .registers 2

    .prologue
    .line 600
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->as()Z

    move-result v0

    if-nez v0, :cond_e

    .line 601
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/dialog/aF;->requestWindowFeature(I)Z

    .line 603
    :cond_e
    return-void
.end method

.method protected a(Landroid/app/ActionBar;)V
    .registers 3
    .parameter

    .prologue
    .line 249
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 250
    return-void
.end method

.method public a(Lcom/google/googlenav/friend/history/b;)V
    .registers 7
    .parameter

    .prologue
    .line 427
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aF;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 430
    const/4 v0, -0x3

    invoke-virtual {p1, v0}, Lcom/google/googlenav/friend/history/b;->a(I)Lcom/google/googlenav/friend/history/b;

    move-result-object v1

    .line 431
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/google/googlenav/friend/history/b;->a(I)Lcom/google/googlenav/friend/history/b;

    move-result-object v0

    .line 434
    invoke-static {}, Lcom/google/googlenav/ui/view/dialog/aF;->o()Lcom/google/googlenav/friend/history/b;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/googlenav/friend/history/b;->a(Lcom/google/googlenav/friend/history/b;)I

    move-result v2

    if-gtz v2, :cond_29

    .line 436
    :goto_19
    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/aF;->a:Ljava/util/List;

    new-instance v3, Lcom/google/googlenav/friend/history/p;

    iget-object v4, p0, Lcom/google/googlenav/ui/view/dialog/aF;->b:Lcom/google/googlenav/ui/view/dialog/aL;

    invoke-direct {v3, p1, v4, v1, v0}, Lcom/google/googlenav/friend/history/p;-><init>(Lcom/google/googlenav/friend/history/b;Lcom/google/googlenav/ui/view/dialog/aL;Lcom/google/googlenav/friend/history/b;Lcom/google/googlenav/friend/history/b;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 439
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/aF;->i()V

    .line 440
    return-void

    .line 434
    :cond_29
    invoke-static {}, Lcom/google/googlenav/ui/view/dialog/aF;->o()Lcom/google/googlenav/friend/history/b;

    move-result-object v0

    goto :goto_19
.end method

.method public a(Ljava/util/List;Lcom/google/googlenav/friend/history/b;Lcom/google/googlenav/friend/history/b;Lcom/google/googlenav/friend/history/b;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 280
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/googlenav/ui/view/dialog/aF;->b(Ljava/util/List;Lcom/google/googlenav/friend/history/b;Lcom/google/googlenav/friend/history/b;Lcom/google/googlenav/friend/history/b;)Ljava/util/List;

    move-result-object v0

    .line 314
    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/aF;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 315
    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/aF;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 319
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/aF;->i()V

    .line 320
    return-void
.end method

.method public a(ILandroid/view/MenuItem;)Z
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 615
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-nez v0, :cond_49

    .line 620
    new-instance v0, Landroid/app/DatePickerDialog;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/aF;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/view/dialog/aI;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/view/dialog/aI;-><init>(Lcom/google/googlenav/ui/view/dialog/aF;)V

    invoke-static {}, Lcom/google/googlenav/ui/view/dialog/aF;->o()Lcom/google/googlenav/friend/history/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/friend/history/b;->i()I

    move-result v3

    invoke-static {}, Lcom/google/googlenav/ui/view/dialog/aF;->o()Lcom/google/googlenav/friend/history/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/googlenav/friend/history/b;->h()I

    move-result v4

    invoke-static {}, Lcom/google/googlenav/ui/view/dialog/aF;->o()Lcom/google/googlenav/friend/history/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/googlenav/friend/history/b;->g()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 636
    invoke-static {}, Lcom/google/googlenav/android/a;->b()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 638
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v1

    invoke-static {}, Lcom/google/googlenav/ui/view/dialog/aF;->o()Lcom/google/googlenav/friend/history/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/friend/history/b;->f()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/widget/DatePicker;->setMaxDate(J)V

    .line 641
    :cond_41
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    .line 642
    invoke-static {}, Lcom/google/googlenav/friend/history/v;->d()V

    .line 643
    const/4 v0, 0x1

    .line 645
    :goto_48
    return v0

    :cond_49
    const/4 v0, 0x0

    goto :goto_48
.end method

.method public c()Landroid/view/View;
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 462
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/aF;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400f7

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 464
    const v0, 0x7f1002ca

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aF;->d:Landroid/support/v4/view/ViewPager;

    .line 465
    new-instance v0, Lcom/google/googlenav/ui/view/dialog/aJ;

    invoke-direct {v0, p0, v2}, Lcom/google/googlenav/ui/view/dialog/aJ;-><init>(Lcom/google/googlenav/ui/view/dialog/aF;Lcom/google/googlenav/ui/view/dialog/aG;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aF;->c:Lcom/google/googlenav/ui/view/dialog/aJ;

    .line 467
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aF;->d:Landroid/support/v4/view/ViewPager;

    new-instance v2, Lcom/google/googlenav/ui/view/dialog/aH;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/view/dialog/aH;-><init>(Lcom/google/googlenav/ui/view/dialog/aF;)V

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ai;)V

    .line 484
    new-instance v0, Lcom/google/googlenav/friend/history/b;

    invoke-direct {v0}, Lcom/google/googlenav/friend/history/b;-><init>()V

    .line 485
    const/4 v2, -0x2

    invoke-virtual {v0, v2}, Lcom/google/googlenav/friend/history/b;->a(I)Lcom/google/googlenav/friend/history/b;

    move-result-object v2

    .line 486
    iget-object v3, p0, Lcom/google/googlenav/ui/view/dialog/aF;->a:Ljava/util/List;

    new-instance v4, Lcom/google/googlenav/friend/history/O;

    invoke-direct {v4, v2}, Lcom/google/googlenav/friend/history/O;-><init>(Lcom/google/googlenav/friend/history/b;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 490
    new-instance v2, Lcom/google/googlenav/friend/history/p;

    invoke-static {}, Lcom/google/googlenav/ui/view/dialog/aF;->o()Lcom/google/googlenav/friend/history/b;

    move-result-object v3

    iget-object v4, p0, Lcom/google/googlenav/ui/view/dialog/aF;->b:Lcom/google/googlenav/ui/view/dialog/aL;

    const/4 v5, -0x7

    invoke-virtual {v0, v5}, Lcom/google/googlenav/friend/history/b;->a(I)Lcom/google/googlenav/friend/history/b;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/ui/view/dialog/aF;->o()Lcom/google/googlenav/friend/history/b;

    move-result-object v5

    invoke-direct {v2, v3, v4, v0, v5}, Lcom/google/googlenav/friend/history/p;-><init>(Lcom/google/googlenav/friend/history/b;Lcom/google/googlenav/ui/view/dialog/aL;Lcom/google/googlenav/friend/history/b;Lcom/google/googlenav/friend/history/b;)V

    .line 493
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aF;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 501
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aF;->d:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/aF;->c:Lcom/google/googlenav/ui/view/dialog/aJ;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/x;)V

    .line 502
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aF;->d:Landroid/support/v4/view/ViewPager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 503
    return-object v1
.end method

.method public e()Z
    .registers 2

    .prologue
    .line 244
    const/4 v0, 0x1

    return v0
.end method

.method i()V
    .registers 2

    .prologue
    .line 444
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aF;->c:Lcom/google/googlenav/ui/view/dialog/aJ;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/aJ;->c()V

    .line 445
    return-void
.end method

.method protected j()Z
    .registers 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aF;->b:Lcom/google/googlenav/ui/view/dialog/aL;

    if-eqz v0, :cond_b

    .line 255
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aF;->b:Lcom/google/googlenav/ui/view/dialog/aL;

    invoke-interface {v0}, Lcom/google/googlenav/ui/view/dialog/aL;->a()V

    .line 256
    const/4 v0, 0x1

    .line 258
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public l()V
    .registers 6

    .prologue
    .line 652
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aF;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 653
    new-instance v0, Lcom/google/googlenav/friend/history/b;

    invoke-direct {v0}, Lcom/google/googlenav/friend/history/b;-><init>()V

    .line 654
    new-instance v1, Lcom/google/googlenav/friend/history/p;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/google/googlenav/friend/history/b;->a(I)Lcom/google/googlenav/friend/history/b;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/ui/view/dialog/aF;->b:Lcom/google/googlenav/ui/view/dialog/aL;

    const/4 v4, -0x7

    invoke-virtual {v0, v4}, Lcom/google/googlenav/friend/history/b;->a(I)Lcom/google/googlenav/friend/history/b;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/google/googlenav/friend/history/p;-><init>(Lcom/google/googlenav/friend/history/b;Lcom/google/googlenav/ui/view/dialog/aL;Lcom/google/googlenav/friend/history/b;Lcom/google/googlenav/friend/history/b;)V

    .line 656
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aF;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 657
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/aF;->i()V

    .line 658
    return-void
.end method

.method public m()V
    .registers 3

    .prologue
    .line 664
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aF;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/aF;->d:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->c()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/friend/history/I;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/history/I;->a()V

    .line 665
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 508
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aF;->b:Lcom/google/googlenav/ui/view/dialog/aL;

    if-eqz v0, :cond_9

    .line 509
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aF;->b:Lcom/google/googlenav/ui/view/dialog/aL;

    invoke-interface {v0}, Lcom/google/googlenav/ui/view/dialog/aL;->a()V

    .line 511
    :cond_9
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 607
    const/16 v0, 0x28e

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 609
    const v1, 0x7f020231

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 610
    const/4 v0, 0x1

    return v0
.end method

.method public w_()Ljava/lang/String;
    .registers 2

    .prologue
    .line 224
    const/16 v0, 0x290

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
