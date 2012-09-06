.class public LaM/az;
.super LaM/i;
.source "SourceFile"


# instance fields
.field private A:Lcom/google/googlenav/ui/android/M;

.field private u:Z

.field private v:[Lcom/google/googlenav/ui/aH;

.field private w:Ljava/util/List;

.field private x:I

.field private y:Lcom/google/googlenav/ui/view/d;

.field private z:Lcom/google/googlenav/ui/view/d;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/v;Lat/p;Lat/u;Lcom/google/googlenav/ui/ac;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 102
    new-instance v5, Lcom/google/googlenav/n;

    new-instance v0, LaM/aD;

    invoke-direct {v0}, LaM/aD;-><init>()V

    new-instance v1, LaM/aD;

    invoke-direct {v1}, LaM/aD;-><init>()V

    invoke-direct {v5, v0, v1}, Lcom/google/googlenav/n;-><init>(Lcom/google/googlenav/F;Lcom/google/googlenav/F;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, LaM/i;-><init>(Lcom/google/googlenav/ui/v;Lat/p;Lat/u;Lcom/google/googlenav/ui/ac;Lcom/google/googlenav/F;)V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, LaM/az;->u:Z

    .line 104
    invoke-direct {p0}, LaM/az;->bd()V

    .line 105
    invoke-direct {p0}, LaM/az;->be()V

    .line 106
    return-void
.end method

.method static synthetic a(LaM/az;)V
    .registers 1
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, LaM/az;->be()V

    return-void
.end method

.method private a(Lat/B;Lat/B;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 240
    if-nez p1, :cond_27

    .line 241
    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 248
    :goto_6
    iget-object v1, p0, LaM/az;->w:Ljava/util/List;

    .line 250
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 252
    new-instance v3, Lae/b;

    new-instance v4, LaM/aC;

    invoke-direct {v4, p0, v2, v1}, LaM/aC;-><init>(LaM/az;ILjava/util/List;)V

    invoke-direct {v3, v0, v4}, Lae/b;-><init>(Ljava/util/List;Lae/c;)V

    .line 282
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v0

    invoke-virtual {v0, v3}, Lac/h;->c(Lac/g;)V

    .line 283
    return-void

    .line 243
    :cond_27
    invoke-static {p1, p2}, Lae/d;->a(Lat/B;Lat/B;)Ljava/util/List;

    move-result-object v0

    goto :goto_6
.end method

.method static synthetic b(LaM/az;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, LaM/az;->w:Ljava/util/List;

    return-object v0
.end method

.method private bd()V
    .registers 2

    .prologue
    .line 109
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, LaM/az;->w:Ljava/util/List;

    .line 110
    const/4 v0, 0x0

    iput v0, p0, LaM/az;->x:I

    .line 111
    return-void
.end method

.method private be()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 118
    iget-boolean v0, p0, LaM/az;->u:Z

    if-eqz v0, :cond_1a

    .line 119
    invoke-direct {p0}, LaM/az;->bf()V

    .line 121
    invoke-static {}, Lcom/google/googlenav/ui/view/e;->a()Lcom/google/googlenav/ui/view/e;

    move-result-object v0

    const/16 v1, 0xa

    new-instance v2, LaM/aA;

    invoke-direct {v2, p0}, LaM/aA;-><init>(LaM/az;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/googlenav/ui/view/e;->a(ILcom/google/googlenav/ui/view/c;Ljava/lang/String;)Lcom/google/googlenav/ui/view/d;

    move-result-object v0

    iput-object v0, p0, LaM/az;->z:Lcom/google/googlenav/ui/view/d;

    .line 150
    :goto_19
    return-void

    .line 133
    :cond_1a
    invoke-direct {p0}, LaM/az;->bg()V

    .line 135
    invoke-static {}, Lcom/google/googlenav/ui/view/e;->a()Lcom/google/googlenav/ui/view/e;

    move-result-object v0

    const/16 v1, 0x9

    new-instance v2, LaM/aB;

    invoke-direct {v2, p0}, LaM/aB;-><init>(LaM/az;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/googlenav/ui/view/e;->a(ILcom/google/googlenav/ui/view/c;Ljava/lang/String;)Lcom/google/googlenav/ui/view/d;

    move-result-object v0

    iput-object v0, p0, LaM/az;->y:Lcom/google/googlenav/ui/view/d;

    goto :goto_19
.end method

.method private bf()V
    .registers 2

    .prologue
    .line 153
    iget-object v0, p0, LaM/az;->y:Lcom/google/googlenav/ui/view/d;

    if-eqz v0, :cond_c

    .line 154
    iget-object v0, p0, LaM/az;->y:Lcom/google/googlenav/ui/view/d;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/d;->c()V

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, LaM/az;->y:Lcom/google/googlenav/ui/view/d;

    .line 157
    :cond_c
    return-void
.end method

.method private bg()V
    .registers 2

    .prologue
    .line 160
    iget-object v0, p0, LaM/az;->z:Lcom/google/googlenav/ui/view/d;

    if-eqz v0, :cond_c

    .line 161
    iget-object v0, p0, LaM/az;->z:Lcom/google/googlenav/ui/view/d;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/d;->c()V

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, LaM/az;->z:Lcom/google/googlenav/ui/view/d;

    .line 164
    :cond_c
    return-void
.end method

.method private bh()V
    .registers 2

    .prologue
    .line 167
    iget-object v0, p0, LaM/az;->A:Lcom/google/googlenav/ui/android/M;

    if-eqz v0, :cond_11

    .line 168
    iget-object v0, p0, LaM/az;->A:Lcom/google/googlenav/ui/android/M;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/M;->c()V

    .line 169
    iget-object v0, p0, LaM/az;->A:Lcom/google/googlenav/ui/android/M;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/M;->a()V

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, LaM/az;->A:Lcom/google/googlenav/ui/android/M;

    .line 172
    :cond_11
    return-void
.end method

.method private bi()V
    .registers 3

    .prologue
    .line 289
    invoke-virtual {p0}, LaM/az;->b()LaM/aD;

    move-result-object v0

    invoke-virtual {v0}, LaM/aD;->f()I

    move-result v0

    .line 290
    if-nez v0, :cond_b

    .line 299
    :goto_a
    return-void

    .line 292
    :cond_b
    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    .line 294
    invoke-direct {p0}, LaM/az;->bk()V

    goto :goto_a

    .line 297
    :cond_12
    invoke-direct {p0}, LaM/az;->bj()V

    goto :goto_a
.end method

.method private bj()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 305
    invoke-virtual {p0}, LaM/az;->f()I

    move-result v0

    .line 306
    if-gtz v0, :cond_9

    .line 351
    :goto_8
    return-void

    .line 310
    :cond_9
    invoke-static {v0, v7}, Lcom/google/googlenav/ui/o;->b(II)Ljava/lang/String;

    move-result-object v2

    .line 312
    iget-object v0, p0, LaM/az;->A:Lcom/google/googlenav/ui/android/M;

    if-nez v0, :cond_23

    .line 313
    new-instance v0, Lcom/google/googlenav/ui/android/M;

    invoke-static {}, Lcom/google/googlenav/ui/view/e;->a()Lcom/google/googlenav/ui/view/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/e;->d()Lcom/google/googlenav/ui/android/ButtonContainer;

    move-result-object v1

    const v3, 0x7f100062

    invoke-direct {v0, v1, v3}, Lcom/google/googlenav/ui/android/M;-><init>(Lcom/google/googlenav/ui/android/ButtonContainer;I)V

    iput-object v0, p0, LaM/az;->A:Lcom/google/googlenav/ui/android/M;

    .line 323
    :cond_23
    iget v0, p0, LaM/az;->x:I

    invoke-virtual {p0}, LaM/az;->b()LaM/aD;

    move-result-object v1

    invoke-virtual {v1}, LaM/aD;->f()I

    move-result v1

    if-ne v0, v1, :cond_88

    .line 324
    iget-object v0, p0, LaM/az;->w:Ljava/util/List;

    invoke-static {v0}, Lae/d;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 325
    invoke-static {v0}, Lae/d;->e(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 326
    invoke-static {v1}, Lae/d;->f(Ljava/util/List;)D

    move-result-wide v3

    double-to-int v1, v3

    invoke-static {v1, v7}, Lcom/google/googlenav/ui/o;->c(II)Ljava/lang/String;

    move-result-object v1

    .line 328
    invoke-static {v0}, Lae/d;->c(Ljava/util/List;)Lae/a;

    move-result-object v3

    .line 329
    invoke-virtual {v3}, Lae/a;->b()D

    move-result-wide v4

    double-to-int v0, v4

    invoke-static {v0, v7}, Lcom/google/googlenav/ui/o;->c(II)Ljava/lang/String;

    move-result-object v0

    .line 332
    iget-object v4, p0, LaM/az;->A:Lcom/google/googlenav/ui/android/M;

    iget-object v5, p0, LaM/az;->w:Ljava/util/List;

    invoke-virtual {v4, v5, v8}, Lcom/google/googlenav/ui/android/M;->a(Ljava/util/List;Z)V

    .line 334
    invoke-virtual {p0}, LaM/az;->c()LaM/aD;

    move-result-object v4

    .line 335
    invoke-virtual {v4}, LaM/aD;->a()V

    .line 337
    new-instance v5, LaM/aE;

    invoke-virtual {v3}, Lae/a;->a()Lat/B;

    move-result-object v3

    const/16 v6, 0x16

    invoke-direct {v5, v3, v6, v8}, LaM/aE;-><init>(Lat/B;BI)V

    invoke-virtual {v4, v5}, LaM/aD;->a(LaM/aE;)V

    .line 339
    invoke-virtual {p0}, LaM/az;->R()V

    .line 344
    :goto_6e
    iget-object v3, p0, LaM/az;->A:Lcom/google/googlenav/ui/android/M;

    const/16 v4, 0x2b8

    invoke-static {v4}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    aput-object v2, v5, v7

    aput-object v1, v5, v8

    const/4 v1, 0x2

    aput-object v0, v5, v1

    invoke-static {v4, v5}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/googlenav/ui/android/M;->a(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 341
    :cond_88
    const-string v1, "--"

    .line 342
    const-string v0, "--"

    goto :goto_6e
.end method

.method private bk()V
    .registers 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 357
    iget-object v0, p0, LaM/az;->A:Lcom/google/googlenav/ui/android/M;

    if-nez v0, :cond_18

    .line 358
    new-instance v0, Lcom/google/googlenav/ui/android/M;

    invoke-static {}, Lcom/google/googlenav/ui/view/e;->a()Lcom/google/googlenav/ui/view/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/e;->d()Lcom/google/googlenav/ui/android/ButtonContainer;

    move-result-object v1

    const v2, 0x7f100062

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/ui/android/M;-><init>(Lcom/google/googlenav/ui/android/ButtonContainer;I)V

    iput-object v0, p0, LaM/az;->A:Lcom/google/googlenav/ui/android/M;

    .line 363
    :cond_18
    iget v0, p0, LaM/az;->x:I

    if-ne v0, v3, :cond_45

    .line 364
    iget-object v0, p0, LaM/az;->w:Ljava/util/List;

    invoke-static {v0}, Lae/d;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 365
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/a;

    invoke-virtual {v0}, Lae/a;->b()D

    move-result-wide v0

    double-to-int v0, v0

    invoke-static {v0, v4}, Lcom/google/googlenav/ui/o;->c(II)Ljava/lang/String;

    move-result-object v0

    .line 370
    :goto_31
    iget-object v1, p0, LaM/az;->A:Lcom/google/googlenav/ui/android/M;

    const/16 v2, 0x112

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/String;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/android/M;->a(Ljava/lang/CharSequence;)V

    .line 372
    return-void

    .line 368
    :cond_45
    const-string v0, "--"

    goto :goto_31
.end method

.method private bl()V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 431
    invoke-virtual {p0}, LaM/az;->b()LaM/aD;

    move-result-object v0

    invoke-virtual {v0}, LaM/aD;->f()I

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_10

    .line 432
    const/4 v0, 0x0

    iput-object v0, p0, LaM/az;->v:[Lcom/google/googlenav/ui/aH;

    .line 443
    :goto_f
    return-void

    .line 436
    :cond_10
    invoke-virtual {p0}, LaM/az;->b()LaM/aD;

    move-result-object v0

    invoke-virtual {v0}, LaM/aD;->f()I

    move-result v0

    new-array v2, v0, [Lat/B;

    move v0, v1

    .line 437
    :goto_1b
    array-length v3, v2

    if-ge v0, v3, :cond_2f

    .line 438
    invoke-virtual {p0}, LaM/az;->b()LaM/aD;

    move-result-object v3

    invoke-virtual {v3, v0}, LaM/aD;->d(I)LaM/aE;

    move-result-object v3

    invoke-virtual {v3}, LaM/aE;->a()Lat/B;

    move-result-object v3

    aput-object v3, v2, v0

    .line 437
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 441
    :cond_2f
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/googlenav/ui/aH;

    new-instance v3, Lat/M;

    const v4, -0xd5ba98

    const/4 v5, 0x5

    invoke-direct {v3, v2, v4, v5}, Lat/M;-><init>([Lat/B;II)V

    aput-object v3, v0, v1

    iput-object v0, p0, LaM/az;->v:[Lcom/google/googlenav/ui/aH;

    .line 442
    iget-object v0, p0, LaM/az;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v0

    invoke-virtual {v0, p0}, LaM/am;->m(LaM/i;)V

    goto :goto_f
.end method

.method static synthetic c(LaM/az;)I
    .registers 3
    .parameter

    .prologue
    .line 50
    iget v0, p0, LaM/az;->x:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, LaM/az;->x:I

    return v0
.end method

.method static synthetic d(LaM/az;)V
    .registers 1
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, LaM/az;->bi()V

    return-void
.end method


# virtual methods
.method protected O()Z
    .registers 2

    .prologue
    .line 477
    const/4 v0, 0x0

    return v0
.end method

.method protected P()Z
    .registers 2

    .prologue
    .line 482
    const/4 v0, 0x0

    return v0
.end method

.method protected X()Z
    .registers 2

    .prologue
    .line 465
    invoke-super {p0}, LaM/i;->X()Z

    .line 467
    const/4 v0, 0x1

    return v0
.end method

.method protected a(Lcom/google/googlenav/F;)V
    .registers 3
    .parameter

    .prologue
    .line 497
    iput-object p1, p0, LaM/az;->f:Lcom/google/googlenav/F;

    .line 498
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, LaM/az;->b(I)V

    .line 499
    return-void
.end method

.method public a(Z)V
    .registers 3
    .parameter

    .prologue
    .line 523
    const/4 v0, 0x0

    iput-object v0, p0, LaM/az;->v:[Lcom/google/googlenav/ui/aH;

    .line 524
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 114
    iget-boolean v0, p0, LaM/az;->u:Z

    return v0
.end method

.method protected a(LZ/b;Z)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 176
    iget-boolean v0, p0, LaM/az;->u:Z

    if-eqz v0, :cond_25

    iget-object v0, p0, LaM/az;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->C()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-virtual {p1}, LZ/b;->h()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 180
    iget-object v0, p0, LaM/az;->c:Lat/p;

    invoke-virtual {p1}, LZ/b;->k()I

    move-result v1

    invoke-virtual {p1}, LZ/b;->l()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lat/p;->b(II)Lat/B;

    move-result-object v0

    invoke-virtual {p0, v0}, LaM/az;->d(Lat/B;)Z

    move-result v0

    .line 182
    :goto_24
    return v0

    :cond_25
    const/4 v0, 0x0

    goto :goto_24
.end method

.method public aC()Z
    .registers 2

    .prologue
    .line 472
    const/4 v0, 0x0

    return v0
.end method

.method public aU()V
    .registers 1

    .prologue
    .line 452
    invoke-super {p0}, LaM/i;->aU()V

    .line 453
    invoke-direct {p0}, LaM/az;->bg()V

    .line 454
    invoke-direct {p0}, LaM/az;->bf()V

    .line 455
    invoke-direct {p0}, LaM/az;->bh()V

    .line 456
    return-void
.end method

.method protected ap()V
    .registers 1

    .prologue
    .line 519
    return-void
.end method

.method protected aq()V
    .registers 1

    .prologue
    .line 514
    return-void
.end method

.method public av()I
    .registers 2

    .prologue
    .line 508
    const/16 v0, 0x13

    return v0
.end method

.method public b(Lcom/google/googlenav/E;)I
    .registers 3
    .parameter

    .prologue
    .line 487
    const/4 v0, 0x0

    return v0
.end method

.method public b()LaM/aD;
    .registers 2

    .prologue
    .line 375
    invoke-virtual {p0}, LaM/az;->ar()Lcom/google/googlenav/F;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/n;

    invoke-virtual {v0}, Lcom/google/googlenav/n;->b()Lcom/google/googlenav/F;

    move-result-object v0

    check-cast v0, LaM/aD;

    return-object v0
.end method

.method public c(Lcom/google/googlenav/E;)I
    .registers 3
    .parameter

    .prologue
    .line 492
    const/4 v0, 0x0

    return v0
.end method

.method public c()LaM/aD;
    .registers 2

    .prologue
    .line 379
    invoke-virtual {p0}, LaM/az;->ar()Lcom/google/googlenav/F;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/n;

    invoke-virtual {v0}, Lcom/google/googlenav/n;->a()Lcom/google/googlenav/F;

    move-result-object v0

    check-cast v0, LaM/aD;

    return-object v0
.end method

.method public d(Lat/B;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 193
    iget-boolean v1, p0, LaM/az;->u:Z

    if-eqz v1, :cond_17

    .line 194
    iget-object v1, p0, LaM/az;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v1

    invoke-virtual {v1}, LaM/am;->I()LaM/i;

    move-result-object v1

    .line 195
    if-eqz v1, :cond_19

    invoke-virtual {v1}, LaM/i;->aj()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 231
    :cond_17
    const/4 v0, 0x0

    :goto_18
    return v0

    .line 201
    :cond_19
    invoke-virtual {p0}, LaM/az;->b()LaM/aD;

    move-result-object v1

    new-instance v2, LaM/aE;

    invoke-direct {v2, p1}, LaM/aE;-><init>(Lat/B;)V

    invoke-virtual {v1, v2}, LaM/aD;->a(LaM/aE;)V

    .line 203
    invoke-virtual {p0}, LaM/az;->b()LaM/aD;

    move-result-object v1

    invoke-virtual {v1}, LaM/aD;->f()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_50

    .line 205
    const/16 v1, 0x47

    const-string v2, "u-add"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lak/h;->a:Lak/h;

    invoke-virtual {v4}, Lak/h;->d()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 210
    :cond_50
    invoke-direct {p0}, LaM/az;->bl()V

    .line 212
    invoke-virtual {p0}, LaM/az;->R()V

    .line 213
    invoke-direct {p0}, LaM/az;->bi()V

    .line 216
    invoke-virtual {p0}, LaM/az;->b()LaM/aD;

    move-result-object v1

    invoke-virtual {v1}, LaM/aD;->f()I

    move-result v1

    if-ne v1, v0, :cond_68

    .line 218
    const/4 v1, 0x0

    invoke-direct {p0, v1, p1}, LaM/az;->a(Lat/B;Lat/B;)V

    goto :goto_18

    .line 221
    :cond_68
    invoke-virtual {p0}, LaM/az;->b()LaM/aD;

    move-result-object v1

    invoke-virtual {p0}, LaM/az;->b()LaM/aD;

    move-result-object v2

    invoke-virtual {v2}, LaM/aD;->f()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v1, v2}, LaM/aD;->b(I)Lcom/google/googlenav/E;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlenav/E;->a()Lat/B;

    move-result-object v1

    invoke-direct {p0, v1, p1}, LaM/az;->a(Lat/B;Lat/B;)V

    goto :goto_18
.end method

.method public d()[Lcom/google/googlenav/ui/aH;
    .registers 2

    .prologue
    .line 447
    iget-object v0, p0, LaM/az;->v:[Lcom/google/googlenav/ui/aH;

    return-object v0
.end method

.method protected e()V
    .registers 5

    .prologue
    .line 383
    const/4 v0, 0x1

    iput-boolean v0, p0, LaM/az;->u:Z

    .line 387
    const/16 v0, 0x47

    const-string v1, "u-start"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lak/h;->a:Lak/h;

    invoke-virtual {v3}, Lak/h;->d()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 389
    return-void
.end method

.method public f()I
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 412
    .line 414
    invoke-virtual {p0}, LaM/az;->b()LaM/aD;

    move-result-object v1

    invoke-virtual {v1}, LaM/aD;->f()I

    move-result v1

    if-le v1, v0, :cond_39

    .line 415
    invoke-virtual {p0}, LaM/az;->b()LaM/aD;

    move-result-object v1

    invoke-virtual {v1, v2}, LaM/aD;->d(I)LaM/aE;

    move-result-object v1

    invoke-virtual {v1}, LaM/aE;->a()Lat/B;

    move-result-object v1

    move v3, v2

    .line 416
    :goto_19
    invoke-virtual {p0}, LaM/az;->b()LaM/aD;

    move-result-object v2

    invoke-virtual {v2}, LaM/aD;->f()I

    move-result v2

    if-ge v0, v2, :cond_3a

    .line 417
    invoke-virtual {p0}, LaM/az;->b()LaM/aD;

    move-result-object v2

    invoke-virtual {v2, v0}, LaM/aD;->d(I)LaM/aE;

    move-result-object v2

    invoke-virtual {v2}, LaM/aE;->a()Lat/B;

    move-result-object v2

    .line 418
    invoke-static {v1, v2}, Lcom/google/googlenav/ui/o;->a(Lat/B;Lat/B;)I

    move-result v1

    add-int/2addr v1, v3

    .line 416
    add-int/lit8 v0, v0, 0x1

    move v3, v1

    move-object v1, v2

    goto :goto_19

    :cond_39
    move v3, v2

    .line 423
    :cond_3a
    return v3
.end method

.method protected f(LZ/a;)Z
    .registers 3
    .parameter

    .prologue
    .line 503
    const/4 v0, 0x0

    return v0
.end method

.method protected i()LaO/a;
    .registers 2

    .prologue
    .line 460
    new-instance v0, LaO/f;

    invoke-direct {v0, p0}, LaO/f;-><init>(LaM/i;)V

    return-object v0
.end method

.method protected k(Z)V
    .registers 6
    .parameter

    .prologue
    .line 392
    const/4 v0, 0x0

    iput-boolean v0, p0, LaM/az;->u:Z

    .line 395
    if-eqz p1, :cond_3e

    .line 396
    const/16 v0, 0x47

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "u-stop"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, LaM/az;->b()LaM/aD;

    move-result-object v2

    invoke-virtual {v2}, LaM/aD;->f()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lak/h;->a:Lak/h;

    invoke-virtual {v3}, Lak/h;->d()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 401
    :cond_3e
    invoke-virtual {p0}, LaM/az;->b()LaM/aD;

    move-result-object v0

    invoke-virtual {v0}, LaM/aD;->a()V

    .line 402
    invoke-virtual {p0}, LaM/az;->c()LaM/aD;

    move-result-object v0

    invoke-virtual {v0}, LaM/aD;->a()V

    .line 403
    invoke-direct {p0}, LaM/az;->bd()V

    .line 404
    invoke-virtual {p0}, LaM/az;->R()V

    .line 405
    const/4 v0, 0x0

    iput-object v0, p0, LaM/az;->v:[Lcom/google/googlenav/ui/aH;

    .line 406
    iget-object v0, p0, LaM/az;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v0

    invoke-virtual {v0, p0}, LaM/am;->m(LaM/i;)V

    .line 407
    invoke-direct {p0}, LaM/az;->bh()V

    .line 408
    invoke-direct {p0}, LaM/az;->be()V

    .line 409
    return-void
.end method
