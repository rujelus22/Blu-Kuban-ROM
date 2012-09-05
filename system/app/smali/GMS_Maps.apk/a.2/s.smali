.class public La/s;
.super La/a;


# instance fields
.field final g:[La/a;

.field h:La/a;

.field i:Lc/p;


# direct methods
.method public constructor <init>(Li/E;Lc/m;Lc/p;La/o;La/G;La/w;Lj/a;)V
    .registers 20

    const-string v2, "NetworkCollector"

    new-instance v6, La/d;

    invoke-direct {v6, p3}, La/d;-><init>(Lc/p;)V

    sget-object v7, La/e;->a:La/e;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p5

    invoke-direct/range {v1 .. v7}, La/a;-><init>(Ljava/lang/String;Li/E;Lc/m;La/G;La/d;La/e;)V

    iput-object p3, p0, La/s;->i:Lc/p;

    new-instance v1, La/l;

    iget-object v5, p0, La/s;->e:La/d;

    invoke-static {p1}, La/l;->a(Li/E;)LW/a;

    move-result-object v6

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p4

    invoke-direct/range {v1 .. v8}, La/l;-><init>(Li/E;Lc/m;La/G;La/d;LW/a;La/w;La/o;)V

    const/4 v2, 0x5

    new-array v10, v2, [La/a;

    const/4 v2, 0x0

    new-instance v3, La/f;

    iget-object v4, p0, La/s;->e:La/d;

    move-object/from16 v0, p5

    invoke-direct {v3, p1, p2, v0, v4}, La/f;-><init>(Li/E;Lc/m;La/G;La/d;)V

    aput-object v3, v10, v2

    const/4 v2, 0x1

    aput-object v1, v10, v2

    const/4 v2, 0x2

    new-instance v3, La/j;

    iget-object v4, p0, La/s;->e:La/d;

    move-object/from16 v0, p5

    invoke-direct {v3, p1, p2, v0, v4}, La/j;-><init>(Li/E;Lc/m;La/G;La/d;)V

    aput-object v3, v10, v2

    const/4 v11, 0x3

    new-instance v2, La/A;

    iget-object v6, p0, La/s;->e:La/d;

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p5

    move-object/from16 v7, p4

    move-object v8, v1

    move-object/from16 v9, p7

    invoke-direct/range {v2 .. v9}, La/A;-><init>(Li/E;Lc/m;La/G;La/d;La/o;La/l;Lj/a;)V

    aput-object v2, v10, v11

    const/4 v7, 0x4

    new-instance v1, La/v;

    iget-object v5, p0, La/s;->e:La/d;

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p5

    move-object/from16 v6, p7

    invoke-direct/range {v1 .. v6}, La/v;-><init>(Li/E;Lc/m;La/G;La/d;Lj/a;)V

    aput-object v1, v10, v7

    iput-object v10, p0, La/s;->g:[La/a;

    iget-object v1, p0, La/s;->g:[La/a;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iput-object v1, p0, La/s;->h:La/a;

    return-void
.end method

.method private a(La/a;)V
    .registers 3

    iget-object v0, p0, La/s;->h:La/a;

    if-eq v0, p1, :cond_4

    :cond_4
    return-void
.end method


# virtual methods
.method protected a()V
    .registers 7

    const/4 v1, 0x0

    iget-object v0, p0, La/s;->h:La/a;

    invoke-virtual {v0}, La/a;->a()V

    iget-object v0, p0, La/s;->h:La/a;

    invoke-virtual {v0}, La/a;->b()Z

    move-result v0

    if-eqz v0, :cond_45

    iget-object v2, p0, La/s;->g:[La/a;

    array-length v3, v2

    move v0, v1

    :goto_12
    if-ge v0, v3, :cond_28

    aget-object v4, v2, v0

    iget-object v5, p0, La/s;->h:La/a;

    if-eq v4, v5, :cond_46

    invoke-virtual {v4}, La/a;->a()V

    invoke-virtual {v4}, La/a;->b()Z

    move-result v5

    if-nez v5, :cond_46

    invoke-direct {p0, v4}, La/s;->a(La/a;)V

    iput-object v4, p0, La/s;->h:La/a;

    :cond_28
    iget-object v0, p0, La/s;->h:La/a;

    iget-object v2, p0, La/s;->g:[La/a;

    aget-object v2, v2, v1

    if-eq v0, v2, :cond_45

    iget-object v0, p0, La/s;->h:La/a;

    invoke-virtual {v0}, La/a;->b()Z

    move-result v0

    if-eqz v0, :cond_45

    iget-object v0, p0, La/s;->g:[La/a;

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, La/s;->a(La/a;)V

    iget-object v0, p0, La/s;->g:[La/a;

    aget-object v0, v0, v1

    iput-object v0, p0, La/s;->h:La/a;

    :cond_45
    return-void

    :cond_46
    add-int/lit8 v0, v0, 0x1

    goto :goto_12
.end method

.method public a(I)V
    .registers 6

    iget-object v1, p0, La/s;->g:[La/a;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v2, :cond_e

    aget-object v3, v1, v0

    invoke-virtual {v3, p1}, La/a;->a(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_e
    invoke-virtual {p0}, La/s;->a()V

    return-void
.end method

.method public a(IIZ)V
    .registers 8

    iget-object v1, p0, La/s;->g:[La/a;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v2, :cond_e

    aget-object v3, v1, v0

    invoke-virtual {v3, p1, p2, p3}, La/a;->a(IIZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_e
    invoke-virtual {p0}, La/s;->a()V

    return-void
.end method

.method public a(LW/a;)V
    .registers 3

    iget-object v0, p0, La/s;->h:La/a;

    invoke-virtual {v0, p1}, La/a;->a(LW/a;)V

    invoke-virtual {p0}, La/s;->a()V

    return-void
.end method

.method public a(Le/L;)V
    .registers 6

    iget-object v0, p0, La/s;->i:Lc/p;

    if-eqz v0, :cond_9

    iget-object v0, p0, La/s;->i:Lc/p;

    invoke-virtual {v0, p1}, Lc/p;->a(Le/L;)V

    :cond_9
    iget-object v1, p0, La/s;->g:[La/a;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_d
    if-ge v0, v2, :cond_17

    aget-object v3, v1, v0

    invoke-virtual {v3, p1}, La/a;->a(Le/L;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_17
    invoke-virtual {p0}, La/s;->a()V

    return-void
.end method

.method public a(Le/b;)V
    .registers 6

    iget-object v1, p0, La/s;->g:[La/a;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v2, :cond_e

    aget-object v3, v1, v0

    invoke-virtual {v3, p1}, La/a;->a(Le/b;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_e
    invoke-virtual {p0}, La/s;->a()V

    return-void
.end method

.method public a(Li/B;)V
    .registers 6

    iget-object v1, p0, La/s;->g:[La/a;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v2, :cond_e

    aget-object v3, v1, v0

    invoke-virtual {v3, p1}, La/a;->a(Li/B;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_e
    invoke-virtual {p0}, La/s;->a()V

    return-void
.end method

.method public a(Li/C;)V
    .registers 6

    iget-object v1, p0, La/s;->g:[La/a;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v2, :cond_e

    aget-object v3, v1, v0

    invoke-virtual {v3, p1}, La/a;->a(Li/C;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_e
    invoke-virtual {p0}, La/s;->a()V

    return-void
.end method

.method public a(Z)V
    .registers 6

    iget-object v1, p0, La/s;->g:[La/a;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v2, :cond_e

    aget-object v3, v1, v0

    invoke-virtual {v3, p1}, La/a;->a(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_e
    invoke-virtual {p0}, La/s;->a()V

    return-void
.end method

.method public b(I)V
    .registers 6

    iget-object v1, p0, La/s;->g:[La/a;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v2, :cond_e

    aget-object v3, v1, v0

    invoke-virtual {v3, p1}, La/a;->b(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_e
    invoke-virtual {p0}, La/s;->a()V

    return-void
.end method

.method public b(Z)V
    .registers 6

    iget-object v1, p0, La/s;->g:[La/a;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v2, :cond_e

    aget-object v3, v1, v0

    invoke-virtual {v3, p1}, La/a;->b(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_e
    invoke-virtual {p0}, La/s;->a()V

    return-void
.end method

.method public b()Z
    .registers 2

    iget-object v0, p0, La/s;->h:La/a;

    invoke-virtual {v0}, La/a;->b()Z

    move-result v0

    return v0
.end method

.method public c()V
    .registers 5

    iget-object v1, p0, La/s;->g:[La/a;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v2, :cond_e

    aget-object v3, v1, v0

    invoke-virtual {v3}, La/a;->c()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_e
    invoke-virtual {p0}, La/s;->a()V

    return-void
.end method

.method public c(Z)V
    .registers 6

    iget-object v1, p0, La/s;->g:[La/a;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v2, :cond_e

    aget-object v3, v1, v0

    invoke-virtual {v3, p1}, La/a;->c(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_e
    invoke-virtual {p0}, La/s;->a()V

    return-void
.end method
