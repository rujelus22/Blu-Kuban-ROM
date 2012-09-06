.class public Lcom/google/googlenav/bT;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/bO;

.field private final b:Ljava/util/List;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/bO;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 454
    iput-object p1, p0, Lcom/google/googlenav/bT;->a:Lcom/google/googlenav/bO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 447
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/bT;->b:Ljava/util/List;

    .line 455
    iput-object p2, p0, Lcom/google/googlenav/bT;->c:Ljava/lang/String;

    .line 456
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/bT;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 441
    iget-object v0, p0, Lcom/google/googlenav/bT;->c:Ljava/lang/String;

    return-object v0
.end method

.method private a([[II)Ljava/util/List;
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 511
    invoke-virtual {p0}, Lcom/google/googlenav/bT;->c()I

    move-result v1

    .line 512
    aget-object v0, p1, v1

    aget v2, v0, p2

    .line 513
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v3

    .line 514
    const/4 v0, 0x0

    :goto_d
    array-length v4, p1

    if-ge v0, v4, :cond_27

    .line 515
    if-eq v0, v1, :cond_16

    aget-object v4, p1, v0

    if-nez v4, :cond_19

    .line 514
    :cond_16
    :goto_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 518
    :cond_19
    aget-object v4, p1, v0

    aget v4, v4, p2

    if-eq v4, v2, :cond_16

    .line 519
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 522
    :cond_27
    return-object v3
.end method

.method static synthetic b(Lcom/google/googlenav/bT;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 441
    iget-object v0, p0, Lcom/google/googlenav/bT;->b:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .registers 2

    .prologue
    .line 459
    iget-object v0, p0, Lcom/google/googlenav/bT;->b:Ljava/util/List;

    return-object v0
.end method

.method public a(Lcom/google/googlenav/bU;)V
    .registers 3
    .parameter

    .prologue
    .line 463
    iget-object v0, p0, Lcom/google/googlenav/bT;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 464
    return-void
.end method

.method public a([Lcom/google/googlenav/ui/view/android/bj;)[[Lcom/google/googlenav/bP;
    .registers 11
    .parameter

    .prologue
    const/16 v4, 0xf

    const/4 v5, 0x0

    .line 531
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v1

    .line 532
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v6

    .line 533
    iget-object v0, p0, Lcom/google/googlenav/bT;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/bU;

    .line 534
    invoke-virtual {v0}, Lcom/google/googlenav/bU;->h()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 535
    invoke-virtual {v0}, Lcom/google/googlenav/bU;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_11

    .line 537
    :cond_2c
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 538
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v4, :cond_39

    .line 539
    invoke-interface {v1, v5, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    .line 541
    :cond_39
    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 543
    iget-object v0, p0, Lcom/google/googlenav/bT;->a:Lcom/google/googlenav/bO;

    invoke-virtual {v0}, Lcom/google/googlenav/bO;->i()Lcom/google/googlenav/bU;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/bU;->j()[I

    move-result-object v2

    .line 544
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x1

    array-length v3, p1

    filled-new-array {v0, v3}, [I

    move-result-object v0

    const-class v3, Lcom/google/googlenav/bP;

    invoke-static {v3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[Lcom/google/googlenav/bP;

    .line 547
    iget-object v0, p0, Lcom/google/googlenav/bT;->a:Lcom/google/googlenav/bO;

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/google/googlenav/bO;->a(Lcom/google/googlenav/bO;Ljava/util/List;[I[Lcom/google/googlenav/ui/view/android/bj;[[Lcom/google/googlenav/bP;I)I

    move-result v1

    move v0, v5

    .line 549
    :goto_66
    array-length v3, p1

    if-ge v0, v3, :cond_77

    .line 550
    aget-object v3, v4, v1

    new-instance v7, Lcom/google/googlenav/bP;

    const-string v8, ":"

    invoke-direct {v7, v8, v5}, Lcom/google/googlenav/bP;-><init>(Ljava/lang/String;Z)V

    aput-object v7, v3, v0

    .line 549
    add-int/lit8 v0, v0, 0x1

    goto :goto_66

    .line 552
    :cond_77
    add-int/lit8 v5, v1, 0x1

    .line 553
    iget-object v0, p0, Lcom/google/googlenav/bT;->a:Lcom/google/googlenav/bO;

    move-object v1, v6

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/google/googlenav/bO;->a(Lcom/google/googlenav/bO;Ljava/util/List;[I[Lcom/google/googlenav/ui/view/android/bj;[[Lcom/google/googlenav/bP;I)I

    .line 555
    return-object v4
.end method

.method public b()[Lcom/google/googlenav/ui/view/android/bj;
    .registers 10

    .prologue
    const/4 v2, 0x0

    .line 474
    iget-object v0, p0, Lcom/google/googlenav/bT;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [[I

    move v1, v2

    .line 475
    :goto_a
    iget-object v0, p0, Lcom/google/googlenav/bT;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_24

    .line 476
    iget-object v0, p0, Lcom/google/googlenav/bT;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/bU;

    invoke-virtual {v0}, Lcom/google/googlenav/bU;->j()[I

    move-result-object v0

    aput-object v0, v3, v1

    .line 475
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a

    .line 479
    :cond_24
    invoke-virtual {p0}, Lcom/google/googlenav/bT;->c()I

    move-result v0

    aget-object v1, v3, v0

    .line 481
    array-length v0, v1

    new-array v4, v0, [Lcom/google/googlenav/ui/view/android/bj;

    .line 482
    :goto_2d
    array-length v0, v1

    if-ge v2, v0, :cond_96

    .line 483
    invoke-direct {p0, v3, v2}, Lcom/google/googlenav/bT;->a([[II)Ljava/util/List;

    move-result-object v0

    .line 485
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5a

    .line 497
    :goto_3a
    new-instance v5, Lcom/google/googlenav/ui/view/android/bj;

    iget-object v0, p0, Lcom/google/googlenav/bT;->a:Lcom/google/googlenav/bO;

    invoke-static {v0}, Lcom/google/googlenav/bO;->a(Lcom/google/googlenav/bO;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    aget v6, v1, v2

    invoke-virtual {v0, v6}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/cq;

    invoke-virtual {v0}, Lcom/google/googlenav/cq;->au()Lcom/google/googlenav/ca;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ca;->i()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/google/googlenav/ui/view/android/bj;-><init>(Ljava/lang/String;)V

    aput-object v5, v4, v2

    .line 482
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    .line 488
    :cond_5a
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v5

    .line 489
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_62
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 490
    const/4 v7, 0x0

    aput-object v7, v3, v0

    .line 491
    iget-object v7, p0, Lcom/google/googlenav/bT;->b:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/bU;

    .line 492
    new-instance v7, Lcom/google/googlenav/bR;

    invoke-virtual {v0}, Lcom/google/googlenav/bU;->e()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/google/googlenav/bU;->f()I

    move-result v0

    invoke-direct {v7, v8, v0}, Lcom/google/googlenav/bR;-><init>(Ljava/lang/String;I)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_62

    .line 495
    :cond_8e
    add-int/lit8 v0, v2, -0x1

    aget-object v0, v4, v0

    invoke-virtual {v0, v5}, Lcom/google/googlenav/ui/view/android/bj;->a(Ljava/util/List;)V

    goto :goto_3a

    .line 500
    :cond_96
    return-object v4
.end method

.method public c()I
    .registers 3

    .prologue
    .line 562
    iget-object v0, p0, Lcom/google/googlenav/bT;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/google/googlenav/bT;->a:Lcom/google/googlenav/bO;

    invoke-virtual {v1}, Lcom/google/googlenav/bO;->i()Lcom/google/googlenav/bU;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
