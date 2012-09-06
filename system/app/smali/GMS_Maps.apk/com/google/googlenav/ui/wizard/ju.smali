.class public Lcom/google/googlenav/ui/wizard/ju;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final f:LaT/h;

.field private static l:Z


# instance fields
.field protected final a:Lcom/google/googlenav/J;

.field protected final b:Lat/p;

.field protected final c:Lat/u;

.field public final d:Lcom/google/googlenav/ui/wizard/jB;

.field private final e:Lcom/google/googlenav/ui/wizard/z;

.field private final g:Lan/h;

.field private final h:Lcom/google/googlenav/android/Y;

.field private i:Z

.field private final j:Lcom/google/googlenav/aA;

.field private final k:Lcom/google/googlenav/friend/j;

.field private final m:Ljava/util/LinkedList;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 115
    new-instance v0, LaT/h;

    const-string v1, "layers open"

    const-string v2, "lo"

    const/16 v3, 0x16

    invoke-direct {v0, v1, v2, v3}, LaT/h;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/ui/wizard/ju;->f:LaT/h;

    .line 138
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/googlenav/ui/wizard/ju;->l:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/android/Y;Lat/p;Lat/u;Lan/h;Lcom/google/googlenav/aA;ZLcom/google/googlenav/ui/wizard/z;Lcom/google/googlenav/J;Lcom/google/googlenav/friend/j;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->m:Ljava/util/LinkedList;

    .line 151
    new-instance v0, Lcom/google/googlenav/ui/wizard/jB;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/jB;-><init>(Lcom/google/googlenav/ui/wizard/ju;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->d:Lcom/google/googlenav/ui/wizard/jB;

    .line 152
    iput-object p8, p0, Lcom/google/googlenav/ui/wizard/ju;->a:Lcom/google/googlenav/J;

    .line 153
    iput-object p4, p0, Lcom/google/googlenav/ui/wizard/ju;->g:Lan/h;

    .line 154
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/ju;->h:Lcom/google/googlenav/android/Y;

    .line 155
    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/ju;->b:Lat/p;

    .line 156
    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/ju;->c:Lat/u;

    .line 157
    iput-object p5, p0, Lcom/google/googlenav/ui/wizard/ju;->j:Lcom/google/googlenav/aA;

    .line 158
    iput-boolean p6, p0, Lcom/google/googlenav/ui/wizard/ju;->i:Z

    .line 159
    iput-object p7, p0, Lcom/google/googlenav/ui/wizard/ju;->e:Lcom/google/googlenav/ui/wizard/z;

    .line 160
    iput-object p9, p0, Lcom/google/googlenav/ui/wizard/ju;->k:Lcom/google/googlenav/friend/j;

    .line 164
    return-void
.end method

.method private a(Ljava/lang/String;Las/g;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 839
    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/wizard/ju;->b(Ljava/lang/String;)V

    .line 843
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v0

    invoke-virtual {v0, p2}, Las/f;->a(Las/g;)V

    .line 844
    return-void
.end method

.method private d(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 497
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->j:Lcom/google/googlenav/aA;

    invoke-interface {v0, p1}, Lcom/google/googlenav/aA;->c(Ljava/lang/String;)V

    .line 498
    return-void
.end method


# virtual methods
.method public A()Lcom/google/googlenav/android/Y;
    .registers 2

    .prologue
    .line 1536
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->h:Lcom/google/googlenav/android/Y;

    return-object v0
.end method

.method public B()Lan/h;
    .registers 2

    .prologue
    .line 1540
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->g:Lan/h;

    return-object v0
.end method

.method public C()Lcom/google/googlenav/ui/ap;
    .registers 2

    .prologue
    .line 1544
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->a:Lcom/google/googlenav/J;

    invoke-interface {v0}, Lcom/google/googlenav/J;->p()Lcom/google/googlenav/ui/ap;

    move-result-object v0

    return-object v0
.end method

.method public D()Lat/p;
    .registers 2

    .prologue
    .line 1548
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->b:Lat/p;

    return-object v0
.end method

.method public E()Lat/u;
    .registers 2

    .prologue
    .line 1552
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->c:Lat/u;

    return-object v0
.end method

.method public F()Lcom/google/googlenav/aA;
    .registers 2

    .prologue
    .line 1556
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->j:Lcom/google/googlenav/aA;

    return-object v0
.end method

.method public G()Lcom/google/googlenav/J;
    .registers 2

    .prologue
    .line 1560
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->a:Lcom/google/googlenav/J;

    return-object v0
.end method

.method public H()Lah/s;
    .registers 2

    .prologue
    .line 1568
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->a:Lcom/google/googlenav/J;

    invoke-interface {v0}, Lcom/google/googlenav/J;->k()Lah/o;

    move-result-object v0

    invoke-virtual {v0}, Lah/o;->b()Lah/s;

    move-result-object v0

    return-object v0
.end method

.method public I()Lcom/google/googlenav/friend/j;
    .registers 2

    .prologue
    .line 1572
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->k:Lcom/google/googlenav/friend/j;

    return-object v0
.end method

.method public J()V
    .registers 3

    .prologue
    .line 1587
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->d:Lcom/google/googlenav/ui/wizard/jB;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->i()Lcom/google/googlenav/ui/wizard/bZ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/bZ;->e()Lad/b;

    move-result-object v0

    .line 1588
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ju;->a:Lcom/google/googlenav/J;

    invoke-interface {v1, v0}, Lcom/google/googlenav/J;->a(Lad/k;)V

    .line 1589
    return-void
.end method

.method public K()V
    .registers 3

    .prologue
    .line 1592
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->d:Lcom/google/googlenav/ui/wizard/jB;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->e()Lcom/google/googlenav/ui/wizard/bu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/bu;->e()Lad/b;

    move-result-object v0

    .line 1593
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ju;->a:Lcom/google/googlenav/J;

    invoke-interface {v1, v0}, Lcom/google/googlenav/J;->a(Lad/k;)V

    .line 1594
    return-void
.end method

.method public L()V
    .registers 3

    .prologue
    .line 1597
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->d:Lcom/google/googlenav/ui/wizard/jB;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->e()Lcom/google/googlenav/ui/wizard/bu;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ju;->d:Lcom/google/googlenav/ui/wizard/jB;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/jB;->h()Lcom/google/googlenav/ui/wizard/bM;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/bM;->e()Lad/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/bu;->a(Lad/l;)V

    .line 1599
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/ju;->K()V

    .line 1600
    return-void
.end method

.method public M()Lcom/google/googlenav/ui/wizard/jB;
    .registers 2

    .prologue
    .line 1624
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->d:Lcom/google/googlenav/ui/wizard/jB;

    return-object v0
.end method

.method public N()V
    .registers 2

    .prologue
    .line 1636
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->d:Lcom/google/googlenav/ui/wizard/jB;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->ak()V

    .line 1637
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->m:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 1638
    return-void
.end method

.method public O()Z
    .registers 2

    .prologue
    .line 1701
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/ju;->m()Lcom/google/googlenav/ui/wizard/C;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public a(LZ/b;)I
    .registers 3
    .parameter

    .prologue
    .line 1261
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/ju;->m()Lcom/google/googlenav/ui/wizard/C;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/wizard/C;->a(LZ/b;)I

    move-result v0

    return v0
.end method

.method a()V
    .registers 3

    .prologue
    .line 219
    const/16 v0, 0xa

    const-string v1, "i"

    invoke-static {v0, v1}, LaT/k;->a(ILjava/lang/String;)V

    .line 221
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/ju;->c()V

    .line 222
    return-void
.end method

.method public a(ILZ/a;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 1576
    const/4 v0, 0x0

    .line 1577
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ju;->h:Lcom/google/googlenav/android/Y;

    new-instance v2, Lcom/google/googlenav/ui/wizard/jz;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/googlenav/ui/wizard/jz;-><init>(Lcom/google/googlenav/ui/wizard/ju;ILZ/a;)V

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/Y;->a(Ljava/lang/Runnable;Z)V

    .line 1583
    return-void
.end method

.method public a(ILcom/google/googlenav/ui/wizard/cb;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 564
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->aA()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->i()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 566
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->d:Lcom/google/googlenav/ui/wizard/jB;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->j()Lcom/google/googlenav/ui/wizard/ca;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/googlenav/ui/wizard/ca;->a(ILcom/google/googlenav/ui/wizard/cb;)V

    .line 568
    :cond_1d
    return-void
.end method

.method public a(I[LaH/f;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 489
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->c:Lat/u;

    invoke-virtual {v0}, Lat/u;->d()Lat/Y;

    move-result-object v0

    invoke-static {p1, p2, v0}, LaH/b;->a(I[LaH/f;Lat/Y;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/ju;->d(Ljava/lang/String;)V

    .line 491
    return-void
.end method

.method public a(LaM/am;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 980
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->d:Lcom/google/googlenav/ui/wizard/jB;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->J()Lcom/google/googlenav/ui/wizard/gj;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/googlenav/ui/wizard/gj;->a(LaM/am;I)V

    .line 981
    return-void
.end method

.method public a(LaM/am;Z)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 854
    sget-object v0, Lcom/google/googlenav/ui/wizard/ju;->f:LaT/h;

    invoke-virtual {v0}, LaT/h;->a()V

    .line 855
    const/16 v0, 0x43

    const-string v1, "d"

    invoke-static {v0, v1}, LaT/k;->a(ILjava/lang/String;)V

    .line 858
    if-eqz p2, :cond_13

    .line 859
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->a:Lcom/google/googlenav/J;

    invoke-interface {v0}, Lcom/google/googlenav/J;->i()V

    .line 866
    :cond_13
    invoke-static {}, Lcom/google/googlenav/layer/f;->a()Lcom/google/googlenav/layer/f;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/layer/f;->a(Z)V

    .line 868
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->d:Lcom/google/googlenav/ui/wizard/jB;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->s()Lcom/google/googlenav/ui/wizard/cM;

    move-result-object v0

    .line 871
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v1

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/wizard/cM;->b(LaM/am;)Lcom/google/googlenav/ui/ay;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/ay;->a()Las/g;

    move-result-object v2

    invoke-virtual {v1, v2}, Las/f;->e(Las/g;)V

    .line 874
    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/wizard/cM;->a(LaM/am;)V

    .line 875
    sget-object v0, Lcom/google/googlenav/ui/wizard/ju;->f:LaT/h;

    invoke-virtual {v0}, LaT/h;->b()V

    .line 876
    return-void
.end method

.method public a(Lad/b;)V
    .registers 4
    .parameter

    .prologue
    .line 261
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->d:Lcom/google/googlenav/ui/wizard/jB;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->e()Lcom/google/googlenav/ui/wizard/bu;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/wizard/bu;->a(Lad/b;)V

    .line 273
    invoke-virtual {p1}, Lad/b;->E()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p1}, Lad/b;->F()Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-virtual {p1}, Lad/b;->d()B

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_36

    .line 276
    :cond_1c
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->d:Lcom/google/googlenav/ui/wizard/jB;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->ac()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 277
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->d:Lcom/google/googlenav/ui/wizard/jB;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->i()Lcom/google/googlenav/ui/wizard/bZ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/bZ;->a()V

    .line 279
    :cond_2d
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->d:Lcom/google/googlenav/ui/wizard/jB;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->e()Lcom/google/googlenav/ui/wizard/bu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/bu;->j()V

    .line 281
    :cond_36
    return-void
.end method

.method public a(Lad/b;Lat/H;IILjava/util/List;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1078
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->d:Lcom/google/googlenav/ui/wizard/jB;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->O()Lcom/google/googlenav/ui/wizard/bU;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/googlenav/ui/wizard/bU;->a(Lad/b;Lat/H;IILjava/util/List;)V

    .line 1080
    return-void
.end method

.method public a(Lad/j;)V
    .registers 3
    .parameter

    .prologue
    .line 332
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->d:Lcom/google/googlenav/ui/wizard/jB;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->i()Lcom/google/googlenav/ui/wizard/bZ;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/wizard/bZ;->b(Lad/j;)V

    .line 333
    return-void
.end method

.method public a(Lam/i;)V
    .registers 3
    .parameter

    .prologue
    .line 787
    if-nez p1, :cond_b

    .line 788
    new-instance p1, Lam/i;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/ju;->H()Lah/s;

    move-result-object v0

    invoke-direct {p1, v0}, Lam/i;-><init>(Lah/s;)V

    .line 790
    :cond_b
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->d:Lcom/google/googlenav/ui/wizard/jB;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->c()Lcom/google/googlenav/ui/wizard/G;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/wizard/G;->a(Lam/i;)V

    .line 791
    return-void
.end method

.method public a(Lat/B;)V
    .registers 3
    .parameter

    .prologue
    .line 441
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->c:Lat/u;

    invoke-virtual {v0}, Lat/u;->d()Lat/Y;

    move-result-object v0

    invoke-static {p1, v0}, LaH/b;->a(Lat/B;Lat/Y;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/ju;->d(Ljava/lang/String;)V

    .line 443
    return-void
.end method

.method public a(Lat/B;Ln/B;Ljava/lang/String;Ljava/lang/String;Lat/H;IILcom/google/googlenav/ui/wizard/C;Z)V
    .registers 20
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1062
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->d:Lcom/google/googlenav/ui/wizard/jB;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->K()Lcom/google/googlenav/ui/wizard/bq;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move-object v7, p4

    move-object/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/google/googlenav/ui/wizard/bq;->a(Lat/B;Ln/B;Ljava/lang/String;Lat/H;IILjava/lang/String;Lcom/google/googlenav/ui/wizard/C;Z)V

    .line 1064
    return-void
.end method

.method public a(Lcom/google/googlenav/L;)V
    .registers 3
    .parameter

    .prologue
    .line 674
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->d:Lcom/google/googlenav/ui/wizard/jB;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->u()Lcom/google/googlenav/ui/wizard/ct;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/wizard/ct;->a(Lcom/google/googlenav/L;)V

    .line 675
    return-void
.end method

.method public a(Lcom/google/googlenav/aW;Lcom/google/googlenav/aY;I)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1103
    invoke-virtual {p1, p3}, Lcom/google/googlenav/aW;->g(I)Lcom/google/googlenav/aZ;

    move-result-object v1

    .line 1104
    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lcom/google/googlenav/aZ;->d()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1115
    :cond_c
    :goto_c
    return-void

    .line 1108
    :cond_d
    new-instance v0, Lcom/google/googlenav/aZ;

    const-string v2, ""

    const/4 v3, 0x0

    invoke-direct {v0, p3, v2, v3}, Lcom/google/googlenav/aZ;-><init>(ILjava/lang/String;Ljava/util/List;)V

    .line 1109
    invoke-virtual {p1}, Lcom/google/googlenav/aW;->aJ()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_37

    invoke-virtual {p1}, Lcom/google/googlenav/aW;->aJ()Ljava/util/Map;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_37

    .line 1111
    invoke-virtual {p1}, Lcom/google/googlenav/aW;->aJ()Ljava/util/Map;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/aZ;

    .line 1113
    :cond_37
    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/ju;->d:Lcom/google/googlenav/ui/wizard/jB;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/wizard/jB;->k()Lcom/google/googlenav/ui/wizard/cd;

    move-result-object v2

    invoke-virtual {v2, p1, p2, v1, v0}, Lcom/google/googlenav/ui/wizard/cd;->a(Lcom/google/googlenav/aW;Lcom/google/googlenav/aY;Lcom/google/googlenav/aZ;Lcom/google/googlenav/aZ;)V

    goto :goto_c
.end method

.method public a(Lcom/google/googlenav/aW;Lcom/google/googlenav/aY;Z)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1088
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->d:Lcom/google/googlenav/ui/wizard/jB;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->G()Lcom/google/googlenav/ui/wizard/hx;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/googlenav/ui/wizard/hx;->a(Lcom/google/googlenav/aW;Lcom/google/googlenav/aY;Z)V

    .line 1090
    return-void
.end method

.method public a(Lcom/google/googlenav/ai;)V
    .registers 3
    .parameter

    .prologue
    .line 663
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->r()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 664
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->d:Lcom/google/googlenav/ui/wizard/jB;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->Q()Lcom/google/googlenav/ui/wizard/iG;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/wizard/iG;->a(Lcom/google/googlenav/ai;)V

    .line 665
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->d:Lcom/google/googlenav/ui/wizard/jB;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->Q()Lcom/google/googlenav/ui/wizard/iG;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/iG;->e()V

    .line 666
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->d:Lcom/google/googlenav/ui/wizard/jB;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->Q()Lcom/google/googlenav/ui/wizard/iG;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/iG;->j()V

    .line 668
    :cond_25
    return-void
.end method

.method public a(Lcom/google/googlenav/ai;LaM/am;ZLjava/lang/String;)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/16 v7, 0x55

    .line 956
    invoke-static {p1}, Lcom/google/googlenav/bN;->a(Lcom/google/googlenav/ai;)Ljava/lang/String;

    move-result-object v2

    .line 959
    const-string v0, "ns"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_62

    if-nez p4, :cond_13

    if-eqz v2, :cond_62

    .line 961
    :cond_13
    const-string v3, "e"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v5, 0x0

    if-nez p4, :cond_3a

    move-object v0, v1

    :goto_1c
    aput-object v0, v4, v5

    const/4 v0, 0x1

    if-eqz v2, :cond_27

    invoke-static {v2}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4e

    :cond_27
    :goto_27
    aput-object v1, v4, v0

    invoke-static {v4}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v3, v0}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 973
    :goto_30
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->d:Lcom/google/googlenav/ui/wizard/jB;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->E()Lcom/google/googlenav/ui/wizard/hg;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/googlenav/ui/wizard/hg;->a(Lcom/google/googlenav/ai;LaM/am;ZLjava/lang/String;)V

    .line 974
    return-void

    .line 961
    :cond_3a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "s="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1c

    :cond_4e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "u="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_27

    .line 969
    :cond_62
    const-string v0, "e"

    invoke-static {v7, v0}, LaT/k;->a(ILjava/lang/String;)V

    goto :goto_30
.end method

.method public a(Lcom/google/googlenav/ai;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 882
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/googlenav/ui/wizard/ju;->a(Lcom/google/googlenav/ai;Ljava/lang/String;Lcom/google/googlenav/ui/wizard/fC;)V

    .line 883
    return-void
.end method

.method public a(Lcom/google/googlenav/ai;Ljava/lang/String;Lcom/google/googlenav/ui/wizard/fC;)V
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/16 v7, 0x65

    const/4 v6, 0x0

    .line 891
    invoke-static {p1}, Lcom/google/googlenav/bN;->a(Lcom/google/googlenav/ai;)Ljava/lang/String;

    move-result-object v2

    .line 894
    const-string v0, "ns"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_62

    if-nez p2, :cond_14

    if-eqz v2, :cond_62

    .line 896
    :cond_14
    const-string v3, "e"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    if-nez p2, :cond_3a

    move-object v0, v1

    :goto_1c
    aput-object v0, v4, v6

    const/4 v0, 0x1

    if-eqz v2, :cond_27

    invoke-static {v2}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4e

    :cond_27
    :goto_27
    aput-object v1, v4, v0

    invoke-static {v4}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v3, v0}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 907
    :goto_30
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->d:Lcom/google/googlenav/ui/wizard/jB;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->I()Lcom/google/googlenav/ui/wizard/ft;

    move-result-object v0

    invoke-virtual {v0, p1, v6, p3}, Lcom/google/googlenav/ui/wizard/ft;->a(Lcom/google/googlenav/ai;ZLcom/google/googlenav/ui/wizard/fC;)V

    .line 908
    return-void

    .line 896
    :cond_3a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "s="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1c

    :cond_4e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "u="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_27

    .line 904
    :cond_62
    const-string v0, "e"

    invoke-static {v7, v0}, LaT/k;->a(ILjava/lang/String;)V

    goto :goto_30
.end method

.method public a(Lcom/google/googlenav/br;Lcom/google/googlenav/bo;Lcom/google/googlenav/ui/wizard/ji;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 577
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->d:Lcom/google/googlenav/ui/wizard/jB;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->V()Lcom/google/googlenav/ui/wizard/ja;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/googlenav/ui/wizard/ja;->a(Lcom/google/googlenav/br;Lcom/google/googlenav/bo;Lcom/google/googlenav/ui/wizard/ji;)V

    .line 578
    return-void
.end method

.method public a(Lcom/google/googlenav/ca;)V
    .registers 5
    .parameter

    .prologue
    .line 288
    const/16 v0, 0x54

    const-string v1, "ts"

    const-string v2, "c"

    invoke-static {v0, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->d:Lcom/google/googlenav/ui/wizard/jB;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->f()Lcom/google/googlenav/ui/wizard/bw;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/wizard/bw;->a(Lcom/google/googlenav/ca;)V

    .line 292
    return-void
.end method

.method public a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/ui/wizard/iS;ZLcom/google/googlenav/ui/wizard/iR;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 417
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->d:Lcom/google/googlenav/ui/wizard/jB;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->R()Lcom/google/googlenav/ui/wizard/iK;

    move-result-object v0

    invoke-virtual {v0, p4, p1, p2, p3}, Lcom/google/googlenav/ui/wizard/iK;->a(Lcom/google/googlenav/ui/wizard/iR;Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/ui/wizard/iS;Z)V

    .line 419
    return-void
.end method

.method public a(Lcom/google/googlenav/friend/history/l;Lcom/google/googlenav/ui/wizard/aZ;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 644
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->d:Lcom/google/googlenav/ui/wizard/jB;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->w()Lcom/google/googlenav/ui/wizard/aY;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/googlenav/ui/wizard/aY;->a(Lcom/google/googlenav/friend/history/l;Lcom/google/googlenav/ui/wizard/aZ;)V

    .line 645
    return-void
.end method

.method public a(Lcom/google/googlenav/ui/u;)V
    .registers 3
    .parameter

    .prologue
    .line 1399
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/ju;->m()Lcom/google/googlenav/ui/wizard/C;

    move-result-object v0

    .line 1403
    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/wizard/C;->a(Lcom/google/googlenav/ui/u;)V

    .line 1404
    return-void
.end method

.method public a(Lcom/google/googlenav/ui/v;)V
    .registers 3
    .parameter

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/ju;->m()Lcom/google/googlenav/ui/wizard/C;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 215
    :goto_6
    return-void

    .line 205
    :cond_7
    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/ju;->i:Z

    if-nez v0, :cond_1d

    .line 206
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->aj()Z

    move-result v0

    if-nez v0, :cond_19

    .line 207
    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/wizard/ju;->b(Lcom/google/googlenav/ui/v;)V

    goto :goto_6

    .line 209
    :cond_19
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/ju;->a()V

    goto :goto_6

    .line 213
    :cond_1d
    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/wizard/ju;->b(Lcom/google/googlenav/ui/v;)V

    goto :goto_6
.end method

.method public a(Lcom/google/googlenav/ui/v;Lan/s;Lcom/google/googlenav/ui/view/android/aK;ZLcom/google/googlenav/ui/wizard/ga;)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 680
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->d:Lcom/google/googlenav/ui/wizard/jB;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->D()Lcom/google/googlenav/ui/wizard/fX;

    move-result-object v6

    new-instance v0, Lcom/google/googlenav/ui/wizard/fZ;

    move-object v1, p1

    move-object v2, p5

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/wizard/fZ;-><init>(Lcom/google/googlenav/ui/v;Lcom/google/googlenav/ui/wizard/ga;Lan/s;Lcom/google/googlenav/ui/view/android/aK;Z)V

    invoke-virtual {v6, v0}, Lcom/google/googlenav/ui/wizard/fX;->a(Lcom/google/googlenav/ui/wizard/fZ;)V

    .line 683
    return-void
.end method

.method public a(Lcom/google/googlenav/ui/v;Lcom/google/googlenav/h;Ljava/lang/String;ZZZLcom/google/googlenav/ui/wizard/R;)V
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 700
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->j()Z

    move-result v0

    if-nez v0, :cond_b

    .line 733
    :goto_a
    return-void

    .line 704
    :cond_b
    new-instance v0, Lcom/google/googlenav/ui/wizard/Q;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p7

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/googlenav/ui/wizard/Q;-><init>(Lcom/google/googlenav/ui/v;Lcom/google/googlenav/h;Lcom/google/googlenav/ui/wizard/R;ZZZ)V

    .line 708
    if-eqz p3, :cond_32

    .line 712
    invoke-static {p3}, Lcom/google/googlenav/friend/af;->d(Ljava/lang/String;)V

    .line 713
    invoke-static {p2}, Lcom/google/googlenav/bN;->a(Lcom/google/googlenav/h;)Ljava/lang/String;

    move-result-object v1

    .line 714
    if-eqz v1, :cond_32

    .line 715
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 718
    const-string v3, "u"

    invoke-static {v3, v1, v2}, LaT/k;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 720
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/googlenav/friend/af;->d(Ljava/lang/String;)V

    .line 724
    :cond_32
    new-instance v1, Lcom/google/googlenav/ui/wizard/jA;

    invoke-static {}, Lcom/google/googlenav/friend/Y;->i()Lcom/google/googlenav/friend/Y;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/google/googlenav/ui/wizard/jA;-><init>(Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/friend/bk;Lcom/google/googlenav/ui/wizard/Q;Lcom/google/googlenav/ui/wizard/jv;)V

    .line 729
    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/ju;->d:Lcom/google/googlenav/ui/wizard/jB;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/wizard/jB;->o()Lcom/google/googlenav/ui/wizard/M;

    move-result-object v2

    invoke-virtual {p0, v2, v1, p1, v0}, Lcom/google/googlenav/ui/wizard/ju;->a(Lcom/google/googlenav/ui/wizard/M;Lcom/google/googlenav/friend/bf;Lcom/google/googlenav/ui/v;Lcom/google/googlenav/ui/wizard/Q;)V

    goto :goto_a
.end method

.method public a(Lcom/google/googlenav/ui/v;Ljava/lang/String;Z)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 431
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->d:Lcom/google/googlenav/ui/wizard/jB;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->B()Lcom/google/googlenav/ui/wizard/eT;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/googlenav/ui/wizard/eT;->a(Lcom/google/googlenav/J;Ljava/lang/String;Z)V

    .line 435
    return-void
.end method

.method public a(Lcom/google/googlenav/ui/view/android/bb;)V
    .registers 3
    .parameter

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->d:Lcom/google/googlenav/ui/wizard/jB;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->U()Lcom/google/googlenav/ui/wizard/ew;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/wizard/ew;->a(Lcom/google/googlenav/ui/view/android/bb;)V

    .line 1123
    return-void
.end method

.method a(Lcom/google/googlenav/ui/wizard/C;)V
    .registers 3
    .parameter

    .prologue
    .line 171
    instance-of v0, p1, Lcom/google/googlenav/ui/wizard/js;

    if-nez v0, :cond_7

    .line 172
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/ju;->j()V

    .line 177
    :cond_7
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->m:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 178
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->m:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 180
    :cond_14
    return-void
.end method

.method public a(Lcom/google/googlenav/ui/wizard/E;)V
    .registers 3
    .parameter

    .prologue
    .line 246
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->d:Lcom/google/googlenav/ui/wizard/jB;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->b()Lcom/google/googlenav/ui/wizard/D;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/wizard/D;->a(Lcom/google/googlenav/ui/wizard/E;)V

    .line 247
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->d:Lcom/google/googlenav/ui/wizard/jB;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->b()Lcom/google/googlenav/ui/wizard/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/D;->j()V

    .line 248
    return-void
.end method

.method public a(Lcom/google/googlenav/ui/wizard/F;Lcom/google/googlenav/ui/wizard/E;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 252
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->d:Lcom/google/googlenav/ui/wizard/jB;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->b()Lcom/google/googlenav/ui/wizard/D;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/googlenav/ui/wizard/D;->a(Lcom/google/googlenav/ui/wizard/F;Lcom/google/googlenav/ui/wizard/E;)V

    .line 253
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->d:Lcom/google/googlenav/ui/wizard/jB;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->b()Lcom/google/googlenav/ui/wizard/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/D;->j()V

    .line 254
    return-void
.end method

.method a(Lcom/google/googlenav/ui/wizard/M;Lcom/google/googlenav/friend/bf;Lcom/google/googlenav/ui/v;Lcom/google/googlenav/ui/wizard/Q;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 743
    invoke-static {}, Lcom/google/googlenav/friend/Y;->k()Z

    move-result v0

    if-nez v0, :cond_22

    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->l()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 749
    invoke-virtual {p3}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v0

    invoke-virtual {v0}, LaM/am;->I()LaM/i;

    move-result-object v0

    .line 750
    if-eqz v0, :cond_1e

    .line 751
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LaM/i;->a(B)V

    .line 753
    :cond_1e
    invoke-virtual {p2, p0}, Lcom/google/googlenav/friend/bf;->a(Lcom/google/googlenav/ui/wizard/ju;)V

    .line 757
    :goto_21
    return-void

    .line 755
    :cond_22
    invoke-virtual {p1, p4}, Lcom/google/googlenav/ui/wizard/M;->a(Lcom/google/googlenav/ui/wizard/Q;)V

    goto :goto_21
.end method

.method public a(Lcom/google/googlenav/ui/wizard/bn;)V
    .registers 3
    .parameter

    .prologue
    .line 1134
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->d:Lcom/google/googlenav/ui/wizard/jB;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->M()Lcom/google/googlenav/ui/wizard/ix;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/wizard/ix;->a(Lcom/google/googlenav/ui/wizard/bn;)V

    .line 1135
    return-void
.end method

.method public a(Lcom/google/googlenav/ui/wizard/cs;)V
    .registers 3
    .parameter

    .prologue
    .line 764
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->d:Lcom/google/googlenav/ui/wizard/jB;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->t()Lcom/google/googlenav/ui/wizard/cq;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/wizard/cq;->a(Lcom/google/googlenav/ui/wizard/cs;)V

    .line 765
    return-void
.end method

.method public a(Lcom/google/googlenav/ui/wizard/dO;)V
    .registers 3
    .parameter

    .prologue
    .line 653
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->d:Lcom/google/googlenav/ui/wizard/jB;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->y()Lcom/google/googlenav/ui/wizard/dp;

    move-result-object v0

    .line 654
    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/wizard/dp;->a(Lcom/google/googlenav/ui/wizard/dO;)V

    .line 655
    return-void
.end method

.method public a(Lcom/google/googlenav/ui/wizard/el;)V
    .registers 3
    .parameter

    .prologue
    .line 783
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->d:Lcom/google/googlenav/ui/wizard/jB;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->q()Lcom/google/googlenav/ui/wizard/eh;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/wizard/eh;->a(Lcom/google/googlenav/ui/wizard/el;)V

    .line 784
    return-void
.end method

.method public a(Lcom/google/googlenav/ui/wizard/ep;)V
    .registers 3
    .parameter

    .prologue
    .line 768
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->d:Lcom/google/googlenav/ui/wizard/jB;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->r()Lcom/google/googlenav/ui/wizard/em;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/wizard/em;->a(Lcom/google/googlenav/ui/wizard/ep;)V

    .line 769
    return-void
.end method

.method public a(Lcom/google/googlenav/ui/wizard/gI;)V
    .registers 3
    .parameter

    .prologue
    .line 775
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->d:Lcom/google/googlenav/ui/wizard/jB;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->p()Lcom/google/googlenav/ui/wizard/gF;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/wizard/gF;->a(Lcom/google/googlenav/ui/wizard/gI;)V

    .line 776
    return-void
.end method

.method public a(Lcom/google/googlenav/ui/wizard/iF;)V
    .registers 3
    .parameter

    .prologue
    .line 542
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->aA()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->i()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 544
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->d:Lcom/google/googlenav/ui/wizard/jB;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->P()Lcom/google/googlenav/ui/wizard/iB;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/wizard/iB;->a(Lcom/google/googlenav/ui/wizard/iF;)V

    .line 546
    :cond_1d
    return-void
.end method

.method public a(Lcom/google/googlenav/ui/wizard/x;)V
    .registers 3
    .parameter

    .prologue
    .line 401
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->d:Lcom/google/googlenav/ui/wizard/jB;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->a()Lcom/google/googlenav/ui/wizard/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/wizard/q;->a(Lcom/google/googlenav/ui/wizard/x;)V

    .line 402
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 380
    invoke-virtual {p0, v0, p1, v0}, Lcom/google/googlenav/ui/wizard/ju;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 470
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->c:Lat/u;

    invoke-virtual {v0}, Lat/u;->d()Lat/Y;

    move-result-object v0

    invoke-static {p1, p2, v0}, LaH/b;->a(Ljava/lang/String;ILat/Y;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/ju;->d(Ljava/lang/String;)V

    .line 472
    return-void
.end method

.method public a(Ljava/lang/String;Lac/d;Lcom/google/googlenav/ui/wizard/A;JZ)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1035
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/ju;->j()V

    .line 1036
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->d:Lcom/google/googlenav/ui/wizard/jB;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->Y()Lcom/google/googlenav/ui/wizard/js;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/googlenav/ui/wizard/js;->a(Ljava/lang/String;Lac/d;Lcom/google/googlenav/ui/wizard/A;JZ)V

    .line 1038
    return-void
.end method

.method public a(Ljava/lang/String;Lat/B;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 459
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->c:Lat/u;

    invoke-virtual {v0}, Lat/u;->d()Lat/Y;

    move-result-object v0

    invoke-static {p1, p2, v0}, LaH/b;->a(Ljava/lang/String;Lat/B;Lat/Y;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/ju;->d(Ljava/lang/String;)V

    .line 461
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBuf;LaM/m;Lcom/google/googlenav/ui/v;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1169
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->d:Lcom/google/googlenav/ui/wizard/jB;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->H()Lcom/google/googlenav/ui/wizard/hZ;

    move-result-object v0

    invoke-virtual {p4}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/googlenav/ui/wizard/hZ;->a(Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBuf;LaM/m;Lcom/google/googlenav/J;LaM/am;)V

    .line 1171
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/google/googlenav/ui/wizard/cG;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 586
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->d:Lcom/google/googlenav/ui/wizard/jB;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->l()Lcom/google/googlenav/ui/wizard/cD;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/googlenav/ui/wizard/cD;->a(Ljava/lang/String;Lcom/google/googlenav/ui/wizard/cG;)V

    .line 587
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/google/googlenav/ui/wizard/bn;)V
    .registers 17
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 605
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->d:Lcom/google/googlenav/ui/wizard/jB;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->d()Lcom/google/googlenav/ui/wizard/bj;

    move-result-object v0

    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/google/googlenav/ui/wizard/bj;->a(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLcom/google/googlenav/ui/wizard/bn;)V

    .line 607
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLcom/google/googlenav/ui/wizard/bn;)V
    .registers 18
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 617
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->d:Lcom/google/googlenav/ui/wizard/jB;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->d()Lcom/google/googlenav/ui/wizard/bj;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/google/googlenav/ui/wizard/bj;->a(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLcom/google/googlenav/ui/wizard/bn;)V

    .line 619
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Las/g;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 807
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->aA()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 808
    invoke-direct {p0, p2, p3}, Lcom/google/googlenav/ui/wizard/ju;->a(Ljava/lang/String;Las/g;)V

    .line 810
    :cond_d
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 396
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->j:Lcom/google/googlenav/aA;

    invoke-interface {v0, p1, p3, p2}, Lcom/google/googlenav/aA;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/google/googlenav/ui/wizard/bn;)V
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1128
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->d:Lcom/google/googlenav/ui/wizard/jB;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->L()Lcom/google/googlenav/ui/wizard/ia;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/google/googlenav/ui/wizard/ia;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/google/googlenav/ui/wizard/bn;)V

    .line 1130
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/google/googlenav/ui/wizard/bn;)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 626
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->d:Lcom/google/googlenav/ui/wizard/jB;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->d()Lcom/google/googlenav/ui/wizard/bj;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/googlenav/ui/wizard/bj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/google/googlenav/ui/wizard/bn;)V

    .line 628
    return-void
.end method

.method public a(Ljava/util/List;Lcom/google/googlenav/ui/wizard/cK;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 592
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->aA()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->i()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 594
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->d:Lcom/google/googlenav/ui/wizard/jB;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->n()Lcom/google/googlenav/ui/wizard/cH;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/googlenav/ui/wizard/cH;->a(Ljava/util/List;Lcom/google/googlenav/ui/wizard/cK;)V

    .line 596
    :cond_1d
    return-void
.end method

.method public a(Z)V
    .registers 2
    .parameter

    .prologue
    .line 225
    iput-boolean p1, p0, Lcom/google/googlenav/ui/wizard/ju;->i:Z

    .line 226
    return-void
.end method

.method public a(ZLcom/google/googlenav/ui/wizard/dk;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 649
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->d:Lcom/google/googlenav/ui/wizard/jB;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->x()Lcom/google/googlenav/ui/wizard/di;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/googlenav/ui/wizard/di;->a(ZLcom/google/googlenav/ui/wizard/dk;)V

    .line 650
    return-void
.end method

.method public a([Lcom/google/googlenav/aw;IZ)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 940
    const/16 v0, 0x65

    const-string v1, "vg"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "st="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "gt=t"

    aput-object v4, v2, v3

    invoke-static {v2}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 947
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->d:Lcom/google/googlenav/ui/wizard/jB;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->m()Lcom/google/googlenav/ui/wizard/ce;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/googlenav/ui/wizard/ce;->a(Ljava/lang/String;[Lcom/google/googlenav/aw;IZ)V

    .line 948
    return-void
.end method

.method public a(LZ/a;)Z
    .registers 4
    .parameter

    .prologue
    .line 1233
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/ju;->m()Lcom/google/googlenav/ui/wizard/C;

    move-result-object v0

    .line 1234
    if-eqz v0, :cond_25

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/C;->v()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-virtual {p1}, LZ/a;->b()I

    move-result v0

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_23

    invoke-virtual {p1}, LZ/a;->c()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_23

    invoke-virtual {p1}, LZ/a;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_25

    :cond_23
    const/4 v0, 0x1

    :goto_24
    return v0

    :cond_25
    const/4 v0, 0x0

    goto :goto_24
.end method

.method public b(LZ/a;)I
    .registers 3
    .parameter

    .prologue
    .line 1245
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/ju;->m()Lcom/google/googlenav/ui/wizard/C;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/wizard/C;->a(LZ/a;)I

    move-result v0

    return v0
.end method

.method public b(Lat/B;)I
    .registers 3
    .parameter

    .prologue
    .line 1271
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/ju;->m()Lcom/google/googlenav/ui/wizard/C;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/wizard/C;->a(Lat/B;)I

    move-result v0

    return v0
.end method

.method public b()V
    .registers 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->d:Lcom/google/googlenav/ui/wizard/jB;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->b()Lcom/google/googlenav/ui/wizard/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/D;->a()V

    .line 258
    return-void
.end method

.method public b(Lad/b;)V
    .registers 3
    .parameter

    .prologue
    .line 284
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->d:Lcom/google/googlenav/ui/wizard/jB;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->f()Lcom/google/googlenav/ui/wizard/bw;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/wizard/bw;->a(Lad/b;)V

    .line 285
    return-void
.end method

.method public b(Lad/j;)V
    .registers 4
    .parameter

    .prologue
    .line 370
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->d:Lcom/google/googlenav/ui/wizard/jB;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->i()Lcom/google/googlenav/ui/wizard/bZ;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/google/googlenav/ui/wizard/bZ;->a(Lad/j;I)V

    .line 372
    return-void
.end method

.method public b(Lcom/google/googlenav/ai;)V
    .registers 3
    .parameter

    .prologue
    .line 1083
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->d:Lcom/google/googlenav/ui/wizard/jB;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->S()Lcom/google/googlenav/ui/wizard/iT;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/wizard/iT;->a(Lcom/google/googlenav/ai;)V

    .line 1084
    return-void
.end method

.method public b(Lcom/google/googlenav/ui/u;)V
    .registers 3
    .parameter

    .prologue
    .line 1412
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/ju;->m()Lcom/google/googlenav/ui/wizard/C;

    move-result-object v0

    .line 1413
    if-eqz v0, :cond_9

    .line 1414
    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/wizard/C;->b(Lcom/google/googlenav/ui/u;)V

    .line 1416
    :cond_9
    return-void
.end method

.method public b(Lcom/google/googlenav/ui/v;)V
    .registers 3
    .parameter

    .prologue
    .line 513
    sget-boolean v0, Lcom/google/googlenav/ui/wizard/ju;->l:Z

    if-nez v0, :cond_5

    .line 522
    :cond_4
    :goto_4
    return-void

    .line 518
    :cond_5
    if-eqz p1, :cond_4

    .line 519
    const/4 v0, 0x0

    .line 520
    invoke-virtual {p1, v0}, Lcom/google/googlenav/ui/v;->e(Z)V

    goto :goto_4
.end method

.method b(Lcom/google/googlenav/ui/wizard/C;)V
    .registers 3
    .parameter

    .prologue
    .line 187
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->m:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 188
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 9
    .parameter

    .prologue
    .line 1002
    new-instance v2, Lcom/google/googlenav/ui/wizard/jw;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/wizard/jw;-><init>(Lcom/google/googlenav/ui/wizard/ju;)V

    sget-object v3, Lcom/google/googlenav/ui/wizard/z;->a:Lcom/google/googlenav/ui/wizard/A;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/google/googlenav/ui/wizard/ju;->a(Ljava/lang/String;Lac/d;Lcom/google/googlenav/ui/wizard/A;JZ)V

    .line 1019
    return-void
.end method

.method public b(Ljava/lang/String;I)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 919
    const/16 v0, 0x65

    const-string v1, "vg"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "st="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    const-string v4, "gt=m"

    aput-object v4, v2, v3

    invoke-static {v2}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 926
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->d:Lcom/google/googlenav/ui/wizard/jB;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->m()Lcom/google/googlenav/ui/wizard/ce;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2, v5}, Lcom/google/googlenav/ui/wizard/ce;->a(Ljava/lang/String;[Lcom/google/googlenav/aw;IZ)V

    .line 927
    return-void
.end method

.method public c(LZ/a;)I
    .registers 3
    .parameter

    .prologue
    .line 1253
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/ju;->m()Lcom/google/googlenav/ui/wizard/C;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/wizard/C;->b(LZ/a;)I

    move-result v0

    return v0
.end method

.method c()V
    .registers 2

    .prologue
    .line 505
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->d:Lcom/google/googlenav/ui/wizard/jB;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->W()Lcom/google/googlenav/ui/wizard/jj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jj;->j()V

    .line 506
    return-void
.end method

.method public c(Lad/b;)V
    .registers 3
    .parameter

    .prologue
    .line 352
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->d:Lcom/google/googlenav/ui/wizard/jB;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->i()Lcom/google/googlenav/ui/wizard/bZ;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/wizard/bZ;->a(Lad/b;)V

    .line 353
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 1118
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->d:Lcom/google/googlenav/ui/wizard/jB;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->T()Lcom/google/googlenav/ui/wizard/fo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/wizard/fo;->a(Ljava/lang/String;)V

    .line 1119
    return-void
.end method

.method public d()V
    .registers 2

    .prologue
    .line 526
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->aA()Z

    move-result v0

    if-nez v0, :cond_b

    .line 538
    :goto_a
    return-void

    .line 531
    :cond_b
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/ju;->e()V

    goto :goto_a
.end method

.method public d(Lad/b;)V
    .registers 3
    .parameter

    .prologue
    .line 1373
    instance-of v0, p1, Lad/w;

    if-eqz v0, :cond_10

    .line 1374
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->d:Lcom/google/googlenav/ui/wizard/jB;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->e()Lcom/google/googlenav/ui/wizard/bu;

    move-result-object v0

    .line 1377
    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/wizard/bu;->a(Lad/b;)V

    .line 1378
    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/bu;->j()V

    .line 1380
    :cond_10
    return-void
.end method

.method public e()V
    .registers 2

    .prologue
    .line 634
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->d:Lcom/google/googlenav/ui/wizard/jB;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->v()Lcom/google/googlenav/ui/wizard/cR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/cR;->j()V

    .line 635
    return-void
.end method

.method public e(Lad/b;)V
    .registers 4
    .parameter

    .prologue
    .line 1609
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->d:Lcom/google/googlenav/ui/wizard/jB;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->aa()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->d:Lcom/google/googlenav/ui/wizard/jB;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->ab()Z

    move-result v0

    if-eqz v0, :cond_2d

    :cond_10
    instance-of v0, p1, Lad/w;

    if-eqz v0, :cond_2d

    .line 1611
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->d:Lcom/google/googlenav/ui/wizard/jB;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->e()Lcom/google/googlenav/ui/wizard/bu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/bu;->f()V

    .line 1618
    :goto_1d
    invoke-virtual {p1}, Lad/b;->v()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1619
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->a:Lcom/google/googlenav/J;

    invoke-virtual {p1}, Lad/b;->B()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/J;->a(Ljava/lang/String;)V

    .line 1621
    :cond_2c
    return-void

    .line 1612
    :cond_2d
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->d:Lcom/google/googlenav/ui/wizard/jB;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->ac()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 1613
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->d:Lcom/google/googlenav/ui/wizard/jB;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->i()Lcom/google/googlenav/ui/wizard/bZ;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/wizard/bZ;->d(Lad/b;)V

    goto :goto_1d

    .line 1615
    :cond_3f
    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/wizard/ju;->c(Lad/b;)V

    goto :goto_1d
.end method

.method public f()V
    .registers 4

    .prologue
    .line 823
    const/4 v0, 0x0

    .line 824
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ju;->h:Lcom/google/googlenav/android/Y;

    new-instance v2, Lcom/google/googlenav/ui/wizard/jv;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/wizard/jv;-><init>(Lcom/google/googlenav/ui/wizard/ju;)V

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/Y;->a(Ljava/lang/Runnable;Z)V

    .line 830
    return-void
.end method

.method public g()V
    .registers 2

    .prologue
    .line 984
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->d:Lcom/google/googlenav/ui/wizard/jB;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->C()Lcom/google/googlenav/ui/wizard/fh;

    move-result-object v0

    .line 985
    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/fh;->j()V

    .line 986
    return-void
.end method

.method public h()V
    .registers 2

    .prologue
    .line 992
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->d:Lcom/google/googlenav/ui/wizard/jB;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->X()Lcom/google/googlenav/ui/wizard/eq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/eq;->j()V

    .line 993
    return-void
.end method

.method public i()V
    .registers 5

    .prologue
    .line 1138
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->d:Lcom/google/googlenav/ui/wizard/jB;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->ag()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1160
    :goto_8
    return-void

    .line 1143
    :cond_9
    new-instance v0, Lcom/google/googlenav/ui/wizard/jx;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/jx;-><init>(Lcom/google/googlenav/ui/wizard/ju;)V

    .line 1154
    invoke-static {}, Lay/a;->z()Lay/a;

    move-result-object v1

    .line 1155
    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/ju;->d:Lcom/google/googlenav/ui/wizard/jB;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/wizard/jB;->N()Lcom/google/googlenav/ui/wizard/ij;

    move-result-object v2

    invoke-virtual {v1}, Lay/a;->u()Ljava/util/EnumSet;

    move-result-object v3

    invoke-virtual {v1}, Lay/a;->t()Ljava/util/EnumSet;

    move-result-object v1

    invoke-virtual {v2, v0, v3, v1}, Lcom/google/googlenav/ui/wizard/ij;->a(Lcom/google/googlenav/ui/wizard/il;Ljava/util/EnumSet;Ljava/util/EnumSet;)V

    .line 1157
    const/16 v0, 0x61

    const-string v1, "f"

    const-string v2, "o"

    invoke-static {v0, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_8
.end method

.method public j()V
    .registers 2

    .prologue
    .line 1177
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->d:Lcom/google/googlenav/ui/wizard/jB;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->aj()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1182
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->d:Lcom/google/googlenav/ui/wizard/jB;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->Y()Lcom/google/googlenav/ui/wizard/js;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/js;->e()V

    .line 1185
    :cond_11
    return-void
.end method

.method public k()V
    .registers 2

    .prologue
    .line 1188
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->d:Lcom/google/googlenav/ui/wizard/jB;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->J()Lcom/google/googlenav/ui/wizard/gj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/gj;->j()V

    .line 1189
    return-void
.end method

.method public l()I
    .registers 3

    .prologue
    .line 1192
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->d:Lcom/google/googlenav/ui/wizard/jB;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->J()Lcom/google/googlenav/ui/wizard/gj;

    move-result-object v0

    .line 1193
    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/C;->a()V

    .line 1194
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/ju;->z()Lcom/google/googlenav/ui/wizard/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/z;->c()Lcom/google/googlenav/ui/wizard/A;

    move-result-object v0

    .line 1195
    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/A;->a()I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_21

    .line 1200
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->j:Lcom/google/googlenav/aA;

    invoke-interface {v0}, Lcom/google/googlenav/aA;->j()V

    .line 1201
    const/16 v0, 0xa

    .line 1203
    :goto_20
    return v0

    :cond_21
    const/4 v0, 0x0

    goto :goto_20
.end method

.method public m()Lcom/google/googlenav/ui/wizard/C;
    .registers 2

    .prologue
    .line 1208
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->m:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1209
    const/4 v0, 0x0

    .line 1211
    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->m:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/wizard/C;

    goto :goto_9
.end method

.method public n()Z
    .registers 3

    .prologue
    .line 1216
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->m:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/wizard/C;

    .line 1217
    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/C;->p()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1218
    const/4 v0, 0x1

    .line 1221
    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method protected o()V
    .registers 3

    .prologue
    .line 1225
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->a:Lcom/google/googlenav/J;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/googlenav/J;->b(Ljava/lang/String;)V

    .line 1226
    return-void
.end method

.method public p()Lcom/google/googlenav/ui/wizard/A;
    .registers 4

    .prologue
    .line 1280
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/ju;->m()Lcom/google/googlenav/ui/wizard/C;

    move-result-object v0

    .line 1281
    if-eqz v0, :cond_34

    .line 1282
    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/C;->a()V

    .line 1285
    instance-of v1, v0, Lcom/google/googlenav/ui/wizard/dp;

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ju;->d:Lcom/google/googlenav/ui/wizard/jB;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/jB;->y()Lcom/google/googlenav/ui/wizard/dp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/dp;->g()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_26

    .line 1288
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->d:Lcom/google/googlenav/ui/wizard/jB;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->i()Lcom/google/googlenav/ui/wizard/bZ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/bZ;->j()V

    .line 1299
    :cond_23
    :goto_23
    sget-object v0, Lcom/google/googlenav/ui/wizard/z;->a:Lcom/google/googlenav/ui/wizard/A;

    :goto_25
    return-object v0

    .line 1289
    :cond_26
    instance-of v0, v0, Lcom/google/googlenav/ui/wizard/bM;

    if-eqz v0, :cond_23

    .line 1290
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->d:Lcom/google/googlenav/ui/wizard/jB;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->e()Lcom/google/googlenav/ui/wizard/bu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/bu;->j()V

    goto :goto_23

    .line 1292
    :cond_34
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/ju;->w()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1293
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/ju;->z()Lcom/google/googlenav/ui/wizard/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/z;->d()Lcom/google/googlenav/ui/wizard/A;

    move-result-object v0

    .line 1294
    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/A;->a()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_23

    goto :goto_25
.end method

.method public q()I
    .registers 5

    .prologue
    .line 1312
    const/4 v0, 0x0

    .line 1313
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ju;->m:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_33

    .line 1314
    const/4 v1, 0x0

    .line 1320
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->m:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/wizard/C;

    .line 1321
    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/C;->p()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1328
    :goto_22
    if-nez v0, :cond_2c

    .line 1329
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->m:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/wizard/C;

    .line 1333
    :cond_2c
    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/C;->a()V

    .line 1334
    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/C;->k()I

    move-result v0

    .line 1336
    :cond_33
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/ju;->j()V

    .line 1337
    return v0

    :cond_37
    move-object v0, v1

    goto :goto_22
.end method

.method public r()V
    .registers 4

    .prologue
    .line 1353
    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bn;->S()Lcom/google/googlenav/ui/p;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/bu;->a(Lcom/google/googlenav/ui/p;)Lad/b;

    move-result-object v0

    .line 1355
    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Lad/b;->m()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 1357
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ju;->h:Lcom/google/googlenav/android/Y;

    new-instance v2, Lcom/google/googlenav/ui/wizard/jy;

    invoke-direct {v2, p0, v0}, Lcom/google/googlenav/ui/wizard/jy;-><init>(Lcom/google/googlenav/ui/wizard/ju;Lad/b;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/Y;->a(Ljava/lang/Runnable;Z)V

    .line 1364
    :cond_1f
    return-void
.end method

.method public s()Z
    .registers 2

    .prologue
    .line 1388
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/ju;->m()Lcom/google/googlenav/ui/wizard/C;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public t()Z
    .registers 2

    .prologue
    .line 1422
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/ju;->m()Lcom/google/googlenav/ui/wizard/C;

    move-result-object v0

    .line 1423
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/C;->v()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public u()Z
    .registers 2

    .prologue
    .line 1430
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/ju;->m()Lcom/google/googlenav/ui/wizard/C;

    move-result-object v0

    .line 1431
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/C;->n()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public v()I
    .registers 3

    .prologue
    .line 1491
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/ju;->m()Lcom/google/googlenav/ui/wizard/C;

    move-result-object v0

    .line 1492
    if-nez v0, :cond_8

    .line 1493
    const/4 v0, 0x0

    .line 1498
    :goto_7
    return v0

    .line 1495
    :cond_8
    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/C;->v()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1496
    const/4 v0, 0x1

    goto :goto_7

    .line 1498
    :cond_10
    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/C;->ah_()I

    move-result v0

    goto :goto_7
.end method

.method public w()Z
    .registers 2

    .prologue
    .line 1502
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/ju;->m()Lcom/google/googlenav/ui/wizard/C;

    move-result-object v0

    instance-of v0, v0, Lcom/google/googlenav/ui/wizard/bZ;

    return v0
.end method

.method public x()V
    .registers 2

    .prologue
    .line 1515
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/ju;->m()Lcom/google/googlenav/ui/wizard/C;

    move-result-object v0

    .line 1516
    if-eqz v0, :cond_9

    .line 1517
    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/C;->af_()V

    .line 1519
    :cond_9
    return-void
.end method

.method public y()V
    .registers 2

    .prologue
    .line 1525
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/ju;->m()Lcom/google/googlenav/ui/wizard/C;

    move-result-object v0

    .line 1526
    if-eqz v0, :cond_9

    .line 1527
    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/C;->m()V

    .line 1529
    :cond_9
    return-void
.end method

.method public z()Lcom/google/googlenav/ui/wizard/z;
    .registers 2

    .prologue
    .line 1532
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ju;->e:Lcom/google/googlenav/ui/wizard/z;

    return-object v0
.end method
