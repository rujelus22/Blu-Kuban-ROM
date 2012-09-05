.class public Lau/s;
.super Ljava/lang/Object;


# instance fields
.field protected a:Lau/u;

.field protected b:Lau/u;

.field private final c:Lam/b;

.field private final d:[Lau/n;

.field private final e:[Lau/t;

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:Z

.field private j:I

.field private k:LaJ/B;

.field private l:Ljava/lang/String;

.field private m:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    new-instance v0, Lam/b;

    sget-object v1, LbD/aR;->n:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    invoke-direct {p0, v0}, Lau/s;-><init>(Lam/b;)V

    return-void
.end method

.method public constructor <init>(Lam/b;)V
    .registers 6

    const/16 v3, 0x15

    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lau/s;->j:I

    iput v2, p0, Lau/s;->j:I

    iput-object p1, p0, Lau/s;->c:Lam/b;

    invoke-direct {p0}, Lau/s;->Q()[Lau/n;

    move-result-object v0

    iput-object v0, p0, Lau/s;->d:[Lau/n;

    iget-object v0, p0, Lau/s;->c:Lam/b;

    const/16 v1, 0x6b

    invoke-virtual {v0, v1}, Lam/b;->l(I)I

    move-result v0

    new-array v0, v0, [Lau/t;

    iput-object v0, p0, Lau/s;->e:[Lau/t;

    invoke-direct {p0}, Lau/s;->R()V

    iget-object v0, p0, Lau/s;->c:Lam/b;

    const/16 v1, 0x13

    invoke-static {v0, v1}, Lam/g;->c(Lam/b;I)Lam/b;

    move-result-object v0

    invoke-static {v0}, Lau/s;->a(Lam/b;)I

    move-result v1

    iput v1, p0, Lau/s;->f:I

    invoke-static {v0}, Lau/s;->b(Lam/b;)I

    move-result v1

    iput v1, p0, Lau/s;->g:I

    const/4 v1, 0x7

    invoke-static {v0, v1, v2}, Lam/g;->c(Lam/b;II)I

    move-result v0

    iput v0, p0, Lau/s;->h:I

    iget-object v0, p0, Lau/s;->c:Lam/b;

    invoke-virtual {v0, v3}, Lam/b;->k(I)Z

    move-result v0

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lau/s;->c:Lam/b;

    invoke-virtual {v0, v3}, Lam/b;->b(I)Z

    move-result v0

    iput-boolean v0, p0, Lau/s;->i:Z

    :goto_4c
    return-void

    :cond_4d
    const/4 v0, 0x0

    iput-boolean v0, p0, Lau/s;->i:Z

    goto :goto_4c
.end method

.method private Q()[Lau/n;
    .registers 12

    const/16 v2, 0x13

    const/4 v10, 0x5

    const/4 v9, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lau/s;->c:Lam/b;

    invoke-virtual {v0, v2}, Lam/b;->k(I)Z

    move-result v0

    if-nez v0, :cond_10

    new-array v0, v1, [Lau/n;

    :goto_f
    return-object v0

    :cond_10
    iget-object v0, p0, Lau/s;->c:Lam/b;

    invoke-virtual {v0, v2}, Lam/b;->h(I)Lam/b;

    move-result-object v4

    invoke-virtual {v4, v10}, Lam/b;->l(I)I

    move-result v5

    new-array v2, v5, [Lau/n;

    move v3, v1

    :goto_1d
    if-ge v3, v5, :cond_3d

    invoke-virtual {v4, v10, v3}, Lam/b;->e(II)Lam/b;

    move-result-object v6

    invoke-virtual {v6, v9}, Lam/b;->k(I)Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-virtual {v6, v9}, Lam/b;->d(I)I

    move-result v0

    :goto_2d
    new-instance v7, Lau/n;

    const/4 v8, 0x2

    invoke-virtual {v6, v8}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v0, v6}, Lau/n;-><init>(ILjava/lang/String;)V

    aput-object v7, v2, v3

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1d

    :cond_3d
    move-object v0, v2

    goto :goto_f

    :cond_3f
    move v0, v1

    goto :goto_2d
.end method

.method private R()V
    .registers 15

    const/4 v13, 0x5

    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0}, Lau/s;->C()I

    move-result v0

    if-ne v0, v10, :cond_11

    invoke-static {p0}, Lau/u;->a(Lau/s;)Lau/u;

    move-result-object v0

    iput-object v0, p0, Lau/s;->a:Lau/u;

    :cond_11
    iget-object v6, p0, Lau/s;->a:Lau/u;

    const/4 v0, 0x0

    move v7, v0

    :goto_15
    iget-object v0, p0, Lau/s;->e:[Lau/t;

    array-length v0, v0

    if-ge v7, v0, :cond_82

    iget-object v0, p0, Lau/s;->c:Lam/b;

    const/16 v1, 0x6b

    invoke-virtual {v0, v1, v7}, Lam/b;->e(II)Lam/b;

    move-result-object v0

    invoke-virtual {v0, v11}, Lam/b;->k(I)Z

    move-result v1

    if-eqz v1, :cond_89

    invoke-virtual {v0, v11}, Lam/b;->h(I)Lam/b;

    move-result-object v1

    invoke-static {v1}, Lcom/google/googlenav/ui/bq;->e(Lam/b;)Ljava/util/Date;

    move-result-object v3

    :goto_30
    invoke-virtual {v0, v12}, Lam/b;->k(I)Z

    move-result v1

    if-eqz v1, :cond_87

    invoke-virtual {v0, v12}, Lam/b;->h(I)Lam/b;

    move-result-object v1

    invoke-static {v1}, Lcom/google/googlenav/ui/bq;->e(Lam/b;)Ljava/util/Date;

    move-result-object v4

    :goto_3e
    invoke-virtual {v0, v13}, Lam/b;->k(I)Z

    move-result v1

    if-eqz v1, :cond_85

    invoke-virtual {v0, v13}, Lam/b;->h(I)Lam/b;

    move-result-object v1

    invoke-static {v1}, LaJ/C;->c(Lam/b;)LaJ/B;

    move-result-object v5

    :goto_4c
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v10}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v1

    const/4 v9, 0x6

    invoke-virtual {v0, v9}, Lam/b;->k(I)Z

    move-result v9

    if-eqz v9, :cond_78

    const/4 v9, 0x6

    invoke-virtual {v0, v9}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    iget v6, v6, Lau/u;->b:I

    invoke-static {v0, v6}, Lau/u;->a(Lam/b;I)Lau/u;

    move-result-object v6

    iget-object v9, p0, Lau/s;->e:[Lau/t;

    new-instance v0, Lau/t;

    invoke-direct/range {v0 .. v6}, Lau/t;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;LaJ/B;Lau/u;)V

    aput-object v0, v9, v7

    invoke-static {v6}, Lau/u;->a(Lau/u;)Lau/u;

    move-result-object v6

    :goto_74
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_15

    :cond_78
    iget-object v9, p0, Lau/s;->e:[Lau/t;

    new-instance v0, Lau/t;

    invoke-direct/range {v0 .. v6}, Lau/t;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;LaJ/B;Lau/u;)V

    aput-object v0, v9, v7

    goto :goto_74

    :cond_82
    iput-object v6, p0, Lau/s;->b:Lau/u;

    return-void

    :cond_85
    move-object v5, v8

    goto :goto_4c

    :cond_87
    move-object v4, v8

    goto :goto_3e

    :cond_89
    move-object v3, v8

    goto :goto_30
.end method

.method static a(Lam/b;)I
    .registers 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_16

    invoke-virtual {p0, v2}, Lam/b;->k(I)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0, v2}, Lam/b;->d(I)I

    move-result v0

    if-ltz v0, :cond_14

    const/16 v2, 0x12

    if-lt v0, v2, :cond_15

    :cond_14
    move v0, v1

    :cond_15
    :goto_15
    return v0

    :cond_16
    move v0, v1

    goto :goto_15
.end method

.method static b(Lam/b;)I
    .registers 4

    const/4 v2, 0x2

    const/4 v1, 0x0

    if-eqz p0, :cond_15

    invoke-virtual {p0, v2}, Lam/b;->k(I)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0, v2}, Lam/b;->d(I)I

    move-result v0

    if-ltz v0, :cond_13

    const/4 v2, 0x3

    if-lt v0, v2, :cond_14

    :cond_13
    move v0, v1

    :cond_14
    :goto_14
    return v0

    :cond_15
    move v0, v1

    goto :goto_14
.end method

.method private e(I)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lau/s;->d:[Lau/n;

    array-length v1, v1

    if-ge v0, v1, :cond_18

    iget-object v1, p0, Lau/s;->d:[Lau/n;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lau/n;->a()I

    move-result v2

    if-ne v2, p1, :cond_15

    invoke-virtual {v1}, Lau/n;->b()Ljava/lang/String;

    move-result-object v0

    :goto_14
    return-object v0

    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_18
    const/4 v0, 0x0

    goto :goto_14
.end method


# virtual methods
.method public A()Z
    .registers 3

    iget-object v0, p0, Lau/s;->c:Lam/b;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lam/b;->b(I)Z

    move-result v0

    return v0
.end method

.method public B()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lau/s;->l:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lau/s;->l:Ljava/lang/String;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lau/s;->c:Lam/b;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lau/s;->e(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_33

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_33
    iput-object v0, p0, Lau/s;->l:Ljava/lang/String;

    iget-object v0, p0, Lau/s;->l:Ljava/lang/String;

    goto :goto_6
.end method

.method public C()I
    .registers 3

    iget-object v0, p0, Lau/s;->c:Lam/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lam/g;->e(Lam/b;I)I

    move-result v0

    return v0
.end method

.method public D()I
    .registers 3

    iget-object v0, p0, Lau/s;->c:Lam/b;

    const/16 v1, 0xf

    invoke-static {v0, v1}, Lam/g;->g(Lam/b;I)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public E()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lau/s;->c:Lam/b;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public F()[Lau/n;
    .registers 2

    iget-object v0, p0, Lau/s;->d:[Lau/n;

    return-object v0
.end method

.method public G()I
    .registers 4

    iget-object v0, p0, Lau/s;->c:Lam/b;

    invoke-virtual {v0}, Lam/b;->e()I

    move-result v0

    add-int/lit8 v1, v0, 0x14

    const/4 v0, 0x0

    :goto_9
    iget-object v2, p0, Lau/s;->d:[Lau/n;

    array-length v2, v2

    if-ge v0, v2, :cond_1a

    iget-object v2, p0, Lau/s;->d:[Lau/n;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lau/n;->d()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_1a
    return v1
.end method

.method public H()Z
    .registers 3

    iget-object v0, p0, Lau/s;->c:Lam/b;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lam/b;->k(I)Z

    move-result v0

    return v0
.end method

.method public I()I
    .registers 3

    iget-object v0, p0, Lau/s;->c:Lam/b;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lam/b;->d(I)I

    move-result v0

    return v0
.end method

.method public J()Z
    .registers 3

    iget-object v0, p0, Lau/s;->c:Lam/b;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Lam/b;->k(I)Z

    move-result v0

    return v0
.end method

.method public K()I
    .registers 3

    iget-object v0, p0, Lau/s;->c:Lam/b;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Lam/b;->d(I)I

    move-result v0

    return v0
.end method

.method public L()Z
    .registers 2

    iget-boolean v0, p0, Lau/s;->m:Z

    return v0
.end method

.method public M()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lau/s;->m:Z

    return-void
.end method

.method public N()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lau/s;->m:Z

    return-void
.end method

.method public O()[Lau/t;
    .registers 2

    iget-object v0, p0, Lau/s;->e:[Lau/t;

    return-object v0
.end method

.method public P()Z
    .registers 3

    iget-object v0, p0, Lau/s;->c:Lam/b;

    const/16 v1, 0x17

    invoke-static {v0, v1}, Lam/g;->h(Lam/b;I)Z

    move-result v0

    return v0
.end method

.method public a()Lau/u;
    .registers 2

    iget-object v0, p0, Lau/s;->a:Lau/u;

    return-object v0
.end method

.method public a(Lau/b;)Ljava/lang/String;
    .registers 4

    iget-boolean v0, p0, Lau/s;->i:Z

    if-nez v0, :cond_7

    const-string v0, ""

    :goto_6
    return-object v0

    :cond_7
    invoke-virtual {p0}, Lau/s;->D()I

    move-result v0

    invoke-virtual {p1, v0}, Lau/b;->j(I)Lau/d;

    move-result-object v0

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Lau/d;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Las/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_20

    invoke-virtual {v0}, Lau/d;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_20
    invoke-virtual {v0}, Lau/d;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_25
    const-string v0, ""

    goto :goto_6
.end method

.method public a(I)V
    .registers 4

    iget-object v0, p0, Lau/s;->c:Lam/b;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lam/b;->h(II)V

    return-void
.end method

.method public a(J)V
    .registers 5

    iget-object v0, p0, Lau/s;->c:Lam/b;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p1, p2}, Lam/b;->b(IJ)V

    return-void
.end method

.method public a(LaJ/B;)V
    .registers 2

    iput-object p1, p0, Lau/s;->k:LaJ/B;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lau/s;->c:Lam/b;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Lam/b;->b(ILjava/lang/String;)V

    return-void
.end method

.method public b()Lau/u;
    .registers 2

    iget-object v0, p0, Lau/s;->b:Lau/u;

    return-object v0
.end method

.method public b(I)V
    .registers 4

    iget-object v0, p0, Lau/s;->c:Lam/b;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lam/b;->h(II)V

    return-void
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lau/s;->f:I

    return v0
.end method

.method public c(I)V
    .registers 4

    iput p1, p0, Lau/s;->j:I

    iget-object v0, p0, Lau/s;->c:Lam/b;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lam/b;->h(II)V

    return-void
.end method

.method public d()I
    .registers 2

    iget v0, p0, Lau/s;->g:I

    return v0
.end method

.method public d(I)V
    .registers 4

    iget-object v0, p0, Lau/s;->c:Lam/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lam/b;->h(II)V

    return-void
.end method

.method public e()I
    .registers 2

    iget v0, p0, Lau/s;->h:I

    return v0
.end method

.method public f()Lam/b;
    .registers 2

    iget-object v0, p0, Lau/s;->c:Lam/b;

    return-object v0
.end method

.method public g()LaJ/B;
    .registers 2

    iget-object v0, p0, Lau/s;->k:LaJ/B;

    return-object v0
.end method

.method public h()Lt/y;
    .registers 3

    iget-object v0, p0, Lau/s;->c:Lam/b;

    const/16 v1, 0x19

    invoke-static {v0, v1}, Lam/g;->c(Lam/b;I)Lam/b;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-static {v0}, Lt/y;->a(Lam/b;)Lt/y;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public i()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lau/s;->c:Lam/b;

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lam/g;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()Lam/b;
    .registers 3

    iget-object v0, p0, Lau/s;->c:Lam/b;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    return-object v0
.end method

.method public k()LaJ/B;
    .registers 3

    iget-object v0, p0, Lau/s;->c:Lam/b;

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    invoke-static {v0}, LaJ/C;->c(Lam/b;)LaJ/B;

    move-result-object v0

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lau/s;->c:Lam/b;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lam/g;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lau/s;->c:Lam/b;

    const/16 v1, 0x6d

    invoke-static {v0, v1}, Lam/g;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lau/s;->c:Lam/b;

    const/16 v1, 0x6e

    invoke-static {v0, v1}, Lam/g;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public o()LaJ/B;
    .registers 3

    iget-object v0, p0, Lau/s;->c:Lam/b;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    invoke-static {v0}, LaJ/C;->c(Lam/b;)LaJ/B;

    move-result-object v0

    return-object v0
.end method

.method public p()Lam/b;
    .registers 3

    iget-object v0, p0, Lau/s;->c:Lam/b;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    return-object v0
.end method

.method public q()Z
    .registers 3

    iget-object v0, p0, Lau/s;->c:Lam/b;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lam/b;->k(I)Z

    move-result v0

    return v0
.end method

.method public r()I
    .registers 3

    iget-object v0, p0, Lau/s;->c:Lam/b;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lam/b;->d(I)I

    move-result v0

    return v0
.end method

.method public s()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lau/s;->c:Lam/b;

    const/16 v1, 0xb

    invoke-static {v0, v1}, Lam/g;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public t()I
    .registers 3

    iget-object v0, p0, Lau/s;->c:Lam/b;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lam/g;->e(Lam/b;I)I

    move-result v0

    return v0
.end method

.method public u()Z
    .registers 3

    iget-object v0, p0, Lau/s;->c:Lam/b;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lam/b;->k(I)Z

    move-result v0

    return v0
.end method

.method public v()I
    .registers 3

    iget-object v0, p0, Lau/s;->c:Lam/b;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lam/g;->e(Lam/b;I)I

    move-result v0

    return v0
.end method

.method public w()J
    .registers 3

    iget-object v0, p0, Lau/s;->c:Lam/b;

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lam/g;->f(Lam/b;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public x()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lau/s;->c:Lam/b;

    const/16 v1, 0xd

    invoke-static {v0, v1}, Lam/g;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public y()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lau/s;->c:Lam/b;

    const/16 v1, 0x1c

    invoke-static {v0, v1}, Lam/g;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public z()I
    .registers 3

    iget v0, p0, Lau/s;->j:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    iget-object v0, p0, Lau/s;->c:Lam/b;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lam/g;->e(Lam/b;I)I

    move-result v0

    iput v0, p0, Lau/s;->j:I

    :cond_e
    iget v0, p0, Lau/s;->j:I

    return v0
.end method
