.class public Lcom/google/googlenav/T;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/F;


# static fields
.field private static final v:Ljava/util/Comparator;


# instance fields
.field private a:Lat/o;

.field private final b:Lat/p;

.field private final c:Lat/u;

.field private final d:Lcom/google/googlenav/layer/m;

.field private e:Ljava/lang/String;

.field private f:B

.field private g:B

.field private h:Ljava/util/Vector;

.field private i:I

.field private final j:Ljava/util/Hashtable;

.field private final k:Ljava/util/Hashtable;

.field private final l:Ljava/util/Hashtable;

.field private m:Lcom/google/googlenav/W;

.field private n:Lat/P;

.field private o:Lat/n;

.field private p:Lat/H;

.field private q:[Lat/P;

.field private r:Lcom/google/googlenav/V;

.field private s:I

.field private t:[Lcom/google/googlenav/W;

.field private u:LaM/k;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 116
    new-instance v0, Lcom/google/googlenav/U;

    invoke-direct {v0}, Lcom/google/googlenav/U;-><init>()V

    sput-object v0, Lcom/google/googlenav/T;->v:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/layer/m;Lat/o;Lat/p;Lat/u;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput v1, p0, Lcom/google/googlenav/T;->i:I

    .line 66
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/T;->j:Ljava/util/Hashtable;

    .line 136
    iput-object p2, p0, Lcom/google/googlenav/T;->a:Lat/o;

    .line 137
    iput-object p3, p0, Lcom/google/googlenav/T;->b:Lat/p;

    .line 138
    iput-object p4, p0, Lcom/google/googlenav/T;->c:Lat/u;

    .line 140
    iput-object p1, p0, Lcom/google/googlenav/T;->d:Lcom/google/googlenav/layer/m;

    .line 141
    invoke-virtual {p1}, Lcom/google/googlenav/layer/m;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/T;->e:Ljava/lang/String;

    .line 142
    invoke-virtual {p1}, Lcom/google/googlenav/layer/m;->f()B

    move-result v0

    iput-byte v0, p0, Lcom/google/googlenav/T;->f:B

    .line 144
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/T;->h:Ljava/util/Vector;

    .line 145
    iput v1, p0, Lcom/google/googlenav/T;->i:I

    .line 147
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/T;->k:Ljava/util/Hashtable;

    .line 148
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/T;->l:Ljava/util/Hashtable;

    .line 150
    invoke-virtual {p4}, Lat/u;->f()Lat/H;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/T;->p:Lat/H;

    .line 151
    invoke-virtual {p3}, Lat/p;->g()[Lat/P;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/T;->q:[Lat/P;

    .line 152
    return-void
.end method

.method private a(Ljava/util/Vector;)V
    .registers 6
    .parameter

    .prologue
    .line 699
    iget-object v0, p0, Lcom/google/googlenav/T;->l:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 700
    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 701
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 702
    iget-object v2, p0, Lcom/google/googlenav/T;->j:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 703
    iget-object v2, p0, Lcom/google/googlenav/T;->l:Ljava/util/Hashtable;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 706
    :cond_22
    return-void
.end method

.method private b(Lcom/google/googlenav/W;)Z
    .registers 4
    .parameter

    .prologue
    .line 365
    iget-object v0, p0, Lcom/google/googlenav/T;->m:Lcom/google/googlenav/W;

    invoke-virtual {v0}, Lcom/google/googlenav/W;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/W;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/google/googlenav/T;->m:Lcom/google/googlenav/W;

    invoke-virtual {v0}, Lcom/google/googlenav/W;->D()Lat/g;

    move-result-object v0

    invoke-interface {v0}, Lat/g;->b()Lat/B;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/W;->D()Lat/g;

    move-result-object v1

    invoke-interface {v1}, Lat/g;->b()Lat/B;

    move-result-object v1

    invoke-virtual {v0, v1}, Lat/B;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    const/4 v0, 0x1

    :goto_29
    return v0

    :cond_2a
    const/4 v0, 0x0

    goto :goto_29
.end method

.method private i()B
    .registers 3

    .prologue
    .line 374
    const/16 v0, 0x8

    .line 375
    iget-object v1, p0, Lcom/google/googlenav/T;->d:Lcom/google/googlenav/layer/m;

    invoke-virtual {v1}, Lcom/google/googlenav/layer/m;->m()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 376
    iget-object v0, p0, Lcom/google/googlenav/T;->b:Lat/p;

    invoke-virtual {v0}, Lat/p;->k()B

    move-result v0

    .line 378
    :cond_10
    return v0
.end method

.method private j()Ljava/util/Vector;
    .registers 7

    .prologue
    .line 388
    iget-object v0, p0, Lcom/google/googlenav/T;->b:Lat/p;

    invoke-virtual {v0}, Lat/p;->g()[Lat/P;

    move-result-object v1

    .line 391
    invoke-direct {p0}, Lcom/google/googlenav/T;->i()B

    move-result v2

    .line 394
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 396
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    :goto_12
    if-ltz v0, :cond_2e

    .line 397
    iget-object v4, p0, Lcom/google/googlenav/T;->a:Lat/o;

    aget-object v5, v1, v0

    invoke-static {v2, v5}, Lat/P;->a(BLat/P;)Lat/P;

    move-result-object v5

    invoke-interface {v4, v5}, Lat/o;->a(Lat/P;)Lat/n;

    move-result-object v4

    .line 398
    if-eqz v4, :cond_2b

    invoke-virtual {v4}, Lat/n;->e()Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 399
    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 396
    :cond_2b
    add-int/lit8 v0, v0, -0x1

    goto :goto_12

    .line 403
    :cond_2e
    return-object v3
.end method

.method private k()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 414
    iget-object v0, p0, Lcom/google/googlenav/T;->r:Lcom/google/googlenav/V;

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/google/googlenav/T;->p:Lat/H;

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/google/googlenav/T;->q:[Lat/P;

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/google/googlenav/T;->p:Lat/H;

    invoke-virtual {v0}, Lat/H;->a()Lat/B;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/T;->c:Lat/u;

    invoke-virtual {v1}, Lat/u;->c()Lat/B;

    move-result-object v1

    invoke-virtual {v0, v1}, Lat/B;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/google/googlenav/T;->p:Lat/H;

    invoke-virtual {v0}, Lat/H;->b()Lat/Y;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/T;->c:Lat/u;

    invoke-virtual {v1}, Lat/u;->d()Lat/Y;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 418
    invoke-direct {p0}, Lcom/google/googlenav/T;->l()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 419
    iget-object v0, p0, Lcom/google/googlenav/T;->r:Lcom/google/googlenav/V;

    invoke-direct {p0}, Lcom/google/googlenav/T;->m()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/V;->a(Z)V

    .line 423
    iput-object v2, p0, Lcom/google/googlenav/T;->r:Lcom/google/googlenav/V;

    .line 424
    iput-object v2, p0, Lcom/google/googlenav/T;->p:Lat/H;

    .line 425
    iput-object v2, p0, Lcom/google/googlenav/T;->q:[Lat/P;

    .line 428
    :cond_46
    return-void
.end method

.method private l()Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 436
    iget-object v1, p0, Lcom/google/googlenav/T;->q:[Lat/P;

    if-nez v1, :cond_6

    .line 461
    :cond_5
    :goto_5
    return v0

    .line 440
    :cond_6
    invoke-direct {p0}, Lcom/google/googlenav/T;->i()B

    move-result v2

    .line 443
    iget-object v1, p0, Lcom/google/googlenav/T;->q:[Lat/P;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_f
    if-ltz v1, :cond_39

    .line 444
    iget-object v3, p0, Lcom/google/googlenav/T;->q:[Lat/P;

    aget-object v3, v3, v1

    .line 447
    invoke-virtual {v3}, Lat/P;->j()Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 443
    :cond_1b
    add-int/lit8 v1, v1, -0x1

    goto :goto_f

    .line 452
    :cond_1e
    iget-object v4, p0, Lcom/google/googlenav/T;->b:Lat/p;

    invoke-virtual {v4, v3}, Lat/p;->a(Lat/P;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 456
    iget-object v4, p0, Lcom/google/googlenav/T;->a:Lat/o;

    invoke-static {v2, v3}, Lat/P;->a(BLat/P;)Lat/P;

    move-result-object v3

    invoke-interface {v4, v3}, Lat/o;->a(Lat/P;)Lat/n;

    move-result-object v3

    .line 457
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lat/n;->e()Z

    move-result v3

    if-nez v3, :cond_1b

    goto :goto_5

    .line 461
    :cond_39
    const/4 v0, 0x1

    goto :goto_5
.end method

.method private m()Z
    .registers 11

    .prologue
    .line 465
    invoke-direct {p0}, Lcom/google/googlenav/T;->j()Ljava/util/Vector;

    move-result-object v2

    .line 466
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v3

    .line 467
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_17
    if-ltz v1, :cond_54

    .line 469
    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lat/n;

    iget-object v5, p0, Lcom/google/googlenav/T;->e:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v6, v3

    int-to-long v8, v1

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    invoke-virtual {v0, v5, v6, v7}, Lat/n;->a(Ljava/lang/String;J)Ljava/util/Hashtable;

    move-result-object v0

    .line 471
    if-eqz v0, :cond_50

    .line 472
    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v5

    .line 473
    :cond_36
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 474
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/W;

    .line 475
    iget-object v6, p0, Lcom/google/googlenav/T;->c:Lat/u;

    invoke-virtual {v0}, Lcom/google/googlenav/W;->a()Lat/B;

    move-result-object v0

    invoke-virtual {v6, v0}, Lat/u;->d(Lat/B;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 476
    const/4 v0, 0x1

    .line 481
    :goto_4f
    return v0

    .line 467
    :cond_50
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_17

    .line 481
    :cond_54
    const/4 v0, 0x0

    goto :goto_4f
.end method

.method private n()V
    .registers 4

    .prologue
    .line 586
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/T;->s:I

    .line 587
    iget-object v0, p0, Lcom/google/googlenav/T;->t:[Lcom/google/googlenav/W;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/google/googlenav/T;->m:Lcom/google/googlenav/W;

    if-eqz v0, :cond_2a

    .line 588
    const/4 v0, 0x0

    :goto_c
    iget-object v1, p0, Lcom/google/googlenav/T;->t:[Lcom/google/googlenav/W;

    array-length v1, v1

    if-ge v0, v1, :cond_2a

    .line 589
    iget-object v1, p0, Lcom/google/googlenav/T;->t:[Lcom/google/googlenav/W;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/google/googlenav/W;->j()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/T;->m:Lcom/google/googlenav/W;

    invoke-virtual {v2}, Lcom/google/googlenav/W;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 590
    iput v0, p0, Lcom/google/googlenav/T;->s:I

    .line 588
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 594
    :cond_2a
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .registers 3
    .parameter

    .prologue
    .line 528
    iget-object v0, p0, Lcom/google/googlenav/T;->j:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/googlenav/T;->j:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_14
    return v0

    :cond_15
    const/4 v0, -0x1

    goto :goto_14
.end method

.method public a(Lat/B;)Ljava/util/Enumeration;
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 495
    invoke-direct {p0}, Lcom/google/googlenav/T;->i()B

    move-result v1

    iget-object v2, p0, Lcom/google/googlenav/T;->c:Lat/u;

    invoke-virtual {v2}, Lat/u;->d()Lat/Y;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lat/P;->a(BLat/B;Lat/Y;)Lat/P;

    move-result-object v1

    .line 499
    iget-object v2, p0, Lcom/google/googlenav/T;->n:Lat/P;

    invoke-virtual {v1, v2}, Lat/P;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 500
    iput-object v1, p0, Lcom/google/googlenav/T;->n:Lat/P;

    .line 501
    iput-object v0, p0, Lcom/google/googlenav/T;->o:Lat/n;

    .line 506
    :cond_1b
    iget-object v1, p0, Lcom/google/googlenav/T;->o:Lat/n;

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/google/googlenav/T;->o:Lat/n;

    invoke-virtual {v1}, Lat/n;->e()Z

    move-result v1

    if-nez v1, :cond_36

    .line 507
    :cond_27
    iget-object v1, p0, Lcom/google/googlenav/T;->a:Lat/o;

    iget-object v2, p0, Lcom/google/googlenav/T;->n:Lat/P;

    invoke-interface {v1, v2}, Lat/o;->a(Lat/P;)Lat/n;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlenav/T;->o:Lat/n;

    .line 508
    iget-object v1, p0, Lcom/google/googlenav/T;->o:Lat/n;

    if-nez v1, :cond_36

    .line 518
    :cond_35
    :goto_35
    return-object v0

    .line 515
    :cond_36
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v1

    .line 516
    iget-object v3, p0, Lcom/google/googlenav/T;->o:Lat/n;

    iget-object v4, p0, Lcom/google/googlenav/T;->e:Ljava/lang/String;

    invoke-virtual {v3, v4, v1, v2}, Lat/n;->a(Ljava/lang/String;J)Ljava/util/Hashtable;

    move-result-object v1

    .line 518
    if-eqz v1, :cond_35

    invoke-virtual {v1}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    goto :goto_35
.end method

.method public a()V
    .registers 12

    .prologue
    .line 252
    invoke-direct {p0}, Lcom/google/googlenav/T;->k()V

    .line 256
    iget-object v0, p0, Lcom/google/googlenav/T;->d:Lcom/google/googlenav/layer/m;

    invoke-virtual {v0}, Lcom/google/googlenav/layer/m;->a()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/google/googlenav/T;->d:Lcom/google/googlenav/layer/m;

    iget-object v1, p0, Lcom/google/googlenav/T;->c:Lat/u;

    invoke-virtual {v1}, Lat/u;->d()Lat/Y;

    move-result-object v1

    invoke-virtual {v1}, Lat/Y;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/layer/m;->b(I)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 258
    :cond_1d
    iget-object v0, p0, Lcom/google/googlenav/T;->h:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 259
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/T;->i:I

    .line 260
    iget-object v0, p0, Lcom/google/googlenav/T;->l:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 338
    :cond_2a
    :goto_2a
    return-void

    .line 265
    :cond_2b
    invoke-direct {p0}, Lcom/google/googlenav/T;->j()Ljava/util/Vector;

    move-result-object v3

    .line 268
    iget-object v0, p0, Lcom/google/googlenav/T;->j:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 271
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 272
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v5

    .line 273
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_4c
    if-ltz v2, :cond_df

    .line 275
    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lat/n;

    iget-object v1, p0, Lcom/google/googlenav/T;->e:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v7

    int-to-long v7, v7

    add-long/2addr v7, v5

    int-to-long v9, v2

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x1

    sub-long/2addr v7, v9

    invoke-virtual {v0, v1, v7, v8}, Lat/n;->a(Ljava/lang/String;J)Ljava/util/Hashtable;

    move-result-object v0

    .line 277
    if-eqz v0, :cond_da

    .line 278
    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v7

    .line 279
    :cond_6b
    :goto_6b
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_da

    .line 282
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/W;

    .line 283
    iget-object v1, p0, Lcom/google/googlenav/T;->k:Ljava/util/Hashtable;

    invoke-virtual {v0}, Lcom/google/googlenav/W;->j()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/W;

    .line 284
    if-eqz v1, :cond_f6

    .line 286
    invoke-virtual {v0}, Lcom/google/googlenav/W;->l()I

    move-result v8

    invoke-virtual {v1, v8}, Lcom/google/googlenav/W;->a(I)V

    .line 287
    invoke-virtual {v0}, Lcom/google/googlenav/W;->m()I

    move-result v8

    invoke-virtual {v1, v8}, Lcom/google/googlenav/W;->b(I)V

    .line 288
    invoke-virtual {v0}, Lcom/google/googlenav/W;->n()I

    move-result v8

    invoke-virtual {v1, v8}, Lcom/google/googlenav/W;->c(I)V

    .line 296
    invoke-virtual {v0}, Lcom/google/googlenav/W;->D()Lat/g;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/W;->c(Lat/g;)V

    .line 303
    :goto_a1
    iget-object v0, p0, Lcom/google/googlenav/T;->j:Ljava/util/Hashtable;

    invoke-virtual {v1}, Lcom/google/googlenav/W;->j()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c6

    .line 306
    iget-byte v0, p0, Lcom/google/googlenav/T;->f:B

    invoke-virtual {v1, v0}, Lcom/google/googlenav/W;->a(B)V

    .line 309
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v0

    .line 310
    iget-object v8, p0, Lcom/google/googlenav/T;->j:Ljava/util/Hashtable;

    invoke-virtual {v1}, Lcom/google/googlenav/W;->j()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    invoke-virtual {v4, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 317
    :cond_c6
    iget-object v0, p0, Lcom/google/googlenav/T;->m:Lcom/google/googlenav/W;

    if-eqz v0, :cond_6b

    .line 318
    invoke-direct {p0, v1}, Lcom/google/googlenav/T;->b(Lcom/google/googlenav/W;)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 319
    iget-object v0, p0, Lcom/google/googlenav/T;->m:Lcom/google/googlenav/W;

    invoke-virtual {v1}, Lcom/google/googlenav/W;->D()Lat/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/W;->c(Lat/g;)V

    goto :goto_6b

    .line 273
    :cond_da
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto/16 :goto_4c

    .line 327
    :cond_df
    invoke-direct {p0, v4}, Lcom/google/googlenav/T;->a(Ljava/util/Vector;)V

    .line 331
    iput-object v4, p0, Lcom/google/googlenav/T;->h:Ljava/util/Vector;

    .line 332
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/T;->i:I

    .line 334
    iget-object v0, p0, Lcom/google/googlenav/T;->u:LaM/k;

    if-eqz v0, :cond_2a

    .line 335
    const/4 v0, 0x0

    .line 336
    iget-object v1, p0, Lcom/google/googlenav/T;->u:LaM/k;

    invoke-interface {v1, v0}, LaM/k;->b(LaM/i;)V

    goto/16 :goto_2a

    :cond_f6
    move-object v1, v0

    goto :goto_a1
.end method

.method public a(B)V
    .registers 2
    .parameter

    .prologue
    .line 651
    iput-byte p1, p0, Lcom/google/googlenav/T;->g:B

    .line 652
    return-void
.end method

.method public a(I)V
    .registers 4
    .parameter

    .prologue
    .line 611
    invoke-virtual {p0}, Lcom/google/googlenav/T;->f()I

    move-result v0

    if-lt p1, v0, :cond_7

    .line 626
    :goto_6
    return-void

    .line 616
    :cond_7
    invoke-virtual {p0, p1}, Lcom/google/googlenav/T;->b(I)Lcom/google/googlenav/E;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ai;

    .line 617
    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->h()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 618
    check-cast v0, Lcom/google/googlenav/W;

    iput-object v0, p0, Lcom/google/googlenav/T;->m:Lcom/google/googlenav/W;

    .line 625
    :goto_19
    invoke-direct {p0}, Lcom/google/googlenav/T;->n()V

    goto :goto_6

    .line 620
    :cond_1d
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/T;->m:Lcom/google/googlenav/W;

    goto :goto_19
.end method

.method public a(Lcom/google/googlenav/V;)V
    .registers 2
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/google/googlenav/T;->r:Lcom/google/googlenav/V;

    .line 160
    return-void
.end method

.method public a(Lcom/google/googlenav/W;)V
    .registers 5
    .parameter

    .prologue
    .line 235
    iget-object v0, p0, Lcom/google/googlenav/T;->k:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lcom/google/googlenav/W;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    iget-object v0, p0, Lcom/google/googlenav/T;->h:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 240
    iget-object v0, p0, Lcom/google/googlenav/T;->j:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lcom/google/googlenav/W;->j()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/googlenav/T;->i:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    iget v0, p0, Lcom/google/googlenav/T;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlenav/T;->i:I

    .line 243
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/google/googlenav/W;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 177
    const/4 v1, 0x0

    .line 178
    iget-object v0, p0, Lcom/google/googlenav/T;->m:Lcom/google/googlenav/W;

    if-eqz v0, :cond_86

    iget-object v0, p0, Lcom/google/googlenav/T;->m:Lcom/google/googlenav/W;

    invoke-virtual {v0}, Lcom/google/googlenav/W;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_86

    .line 179
    iget-object v0, p0, Lcom/google/googlenav/T;->m:Lcom/google/googlenav/W;

    .line 193
    :cond_13
    :goto_13
    if-eqz v0, :cond_5b

    .line 194
    invoke-virtual {v0}, Lcom/google/googlenav/W;->l()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/google/googlenav/W;->a(I)V

    .line 195
    invoke-virtual {v0}, Lcom/google/googlenav/W;->m()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/google/googlenav/W;->b(I)V

    .line 196
    invoke-virtual {v0}, Lcom/google/googlenav/W;->n()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/google/googlenav/W;->c(I)V

    .line 197
    invoke-virtual {v0}, Lcom/google/googlenav/W;->o()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/google/googlenav/W;->d(I)V

    .line 198
    invoke-virtual {v0}, Lcom/google/googlenav/W;->p()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/google/googlenav/W;->e(I)V

    .line 199
    invoke-virtual {v0}, Lcom/google/googlenav/W;->ak()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/google/googlenav/W;->g(Ljava/lang/String;)V

    .line 200
    invoke-virtual {v0}, Lcom/google/googlenav/W;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/google/googlenav/W;->a(Ljava/lang/String;)V

    .line 201
    invoke-virtual {v0}, Lcom/google/googlenav/W;->b()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/google/googlenav/W;->a(Ljava/util/List;)V

    .line 204
    invoke-virtual {p2}, Lcom/google/googlenav/W;->D()Lat/g;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/google/googlenav/W;->b(Lat/g;)V

    .line 205
    invoke-virtual {v0}, Lcom/google/googlenav/W;->D()Lat/g;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/googlenav/W;->c(Lat/g;)V

    .line 210
    :cond_5b
    iget-object v0, p0, Lcom/google/googlenav/T;->m:Lcom/google/googlenav/W;

    if-eqz v0, :cond_6d

    iget-object v0, p0, Lcom/google/googlenav/T;->m:Lcom/google/googlenav/W;

    invoke-virtual {v0}, Lcom/google/googlenav/W;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 211
    iput-object p2, p0, Lcom/google/googlenav/T;->m:Lcom/google/googlenav/W;

    .line 213
    :cond_6d
    iget-object v0, p0, Lcom/google/googlenav/T;->k:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    :try_start_72
    iget-object v0, p0, Lcom/google/googlenav/T;->j:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 220
    if-eqz v0, :cond_85

    .line 221
    iget-object v1, p0, Lcom/google/googlenav/T;->h:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, p2, v0}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V
    :try_end_85
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_72 .. :try_end_85} :catch_a6

    .line 229
    :cond_85
    :goto_85
    return-void

    .line 184
    :cond_86
    iget-object v0, p0, Lcom/google/googlenav/T;->h:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    .line 185
    const/4 v0, 0x0

    move v2, v0

    :goto_8e
    if-ge v2, v3, :cond_a8

    .line 186
    iget-object v0, p0, Lcom/google/googlenav/T;->h:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/W;

    .line 187
    invoke-virtual {v0}, Lcom/google/googlenav/W;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 185
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_8e

    .line 223
    :catch_a6
    move-exception v0

    goto :goto_85

    :cond_a8
    move-object v0, v1

    goto/16 :goto_13
.end method

.method public b(I)Lcom/google/googlenav/E;
    .registers 3
    .parameter

    .prologue
    .line 657
    :try_start_0
    iget-object v0, p0, Lcom/google/googlenav/T;->h:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/E;
    :try_end_8
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_8} :catch_9

    .line 659
    :goto_8
    return-object v0

    .line 658
    :catch_9
    move-exception v0

    .line 659
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public b()V
    .registers 4

    .prologue
    .line 346
    iget-object v0, p0, Lcom/google/googlenav/T;->m:Lcom/google/googlenav/W;

    if-nez v0, :cond_5

    .line 362
    :cond_4
    :goto_4
    return-void

    .line 350
    :cond_5
    iget-object v0, p0, Lcom/google/googlenav/T;->m:Lcom/google/googlenav/W;

    invoke-virtual {v0}, Lcom/google/googlenav/W;->D()Lat/g;

    move-result-object v0

    invoke-interface {v0}, Lat/g;->b()Lat/B;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/T;->a(Lat/B;)Ljava/util/Enumeration;

    move-result-object v1

    .line 351
    if-eqz v1, :cond_4

    .line 355
    :cond_15
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 356
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/W;

    .line 357
    invoke-direct {p0, v0}, Lcom/google/googlenav/T;->b(Lcom/google/googlenav/W;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 358
    iget-object v1, p0, Lcom/google/googlenav/T;->m:Lcom/google/googlenav/W;

    invoke-virtual {v0}, Lcom/google/googlenav/W;->D()Lat/g;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/W;->c(Lat/g;)V

    goto :goto_4
.end method

.method public b(Lat/B;)V
    .registers 6
    .parameter

    .prologue
    .line 560
    if-nez p1, :cond_9

    .line 561
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/T;->t:[Lcom/google/googlenav/W;

    .line 562
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/T;->s:I

    .line 577
    :goto_8
    return-void

    .line 566
    :cond_9
    iget-object v0, p0, Lcom/google/googlenav/T;->h:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/googlenav/W;

    iput-object v0, p0, Lcom/google/googlenav/T;->t:[Lcom/google/googlenav/W;

    .line 568
    const/4 v0, 0x0

    move v1, v0

    :goto_15
    iget-object v0, p0, Lcom/google/googlenav/T;->t:[Lcom/google/googlenav/W;

    array-length v0, v0

    if-ge v1, v0, :cond_35

    .line 569
    iget-object v0, p0, Lcom/google/googlenav/T;->h:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/W;

    .line 570
    invoke-virtual {v0}, Lcom/google/googlenav/W;->a()Lat/B;

    move-result-object v2

    invoke-virtual {v2, p1}, Lat/B;->a(Lat/B;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/googlenav/W;->b(J)V

    .line 571
    iget-object v2, p0, Lcom/google/googlenav/T;->t:[Lcom/google/googlenav/W;

    aput-object v0, v2, v1

    .line 568
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_15

    .line 574
    :cond_35
    iget-object v0, p0, Lcom/google/googlenav/T;->t:[Lcom/google/googlenav/W;

    sget-object v1, Lcom/google/googlenav/T;->v:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 576
    invoke-direct {p0}, Lcom/google/googlenav/T;->n()V

    goto :goto_8
.end method

.method public c()I
    .registers 2

    .prologue
    .line 640
    iget-object v0, p0, Lcom/google/googlenav/T;->m:Lcom/google/googlenav/W;

    if-nez v0, :cond_6

    const/4 v0, -0x1

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/google/googlenav/T;->m:Lcom/google/googlenav/W;

    invoke-virtual {v0}, Lcom/google/googlenav/W;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/T;->a(Ljava/lang/String;)I

    move-result v0

    goto :goto_5
.end method

.method public c(I)I
    .registers 2
    .parameter

    .prologue
    .line 665
    return p1
.end method

.method public d()B
    .registers 2

    .prologue
    .line 646
    iget-byte v0, p0, Lcom/google/googlenav/T;->g:B

    return v0
.end method

.method public e()Lcom/google/googlenav/E;
    .registers 3

    .prologue
    .line 671
    iget-object v0, p0, Lcom/google/googlenav/T;->m:Lcom/google/googlenav/W;

    if-nez v0, :cond_6

    .line 672
    const/4 v0, 0x0

    .line 678
    :cond_5
    :goto_5
    return-object v0

    .line 677
    :cond_6
    iget-object v0, p0, Lcom/google/googlenav/T;->k:Ljava/util/Hashtable;

    iget-object v1, p0, Lcom/google/googlenav/T;->m:Lcom/google/googlenav/W;

    invoke-virtual {v1}, Lcom/google/googlenav/W;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/W;

    .line 678
    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/googlenav/T;->m:Lcom/google/googlenav/W;

    goto :goto_5
.end method

.method public f()I
    .registers 2

    .prologue
    .line 683
    iget v0, p0, Lcom/google/googlenav/T;->i:I

    return v0
.end method

.method public g()V
    .registers 2

    .prologue
    .line 533
    iget-object v0, p0, Lcom/google/googlenav/T;->k:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 534
    iget-object v0, p0, Lcom/google/googlenav/T;->l:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 535
    iget-object v0, p0, Lcom/google/googlenav/T;->h:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 536
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/T;->i:I

    .line 537
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/T;->t:[Lcom/google/googlenav/W;

    .line 538
    return-void
.end method

.method public h()[Lcom/google/googlenav/W;
    .registers 2

    .prologue
    .line 601
    iget-object v0, p0, Lcom/google/googlenav/T;->t:[Lcom/google/googlenav/W;

    return-object v0
.end method
