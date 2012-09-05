.class public La/A;
.super La/a;

# interfaces
.implements Ld/K;


# static fields
.field static final g:Ljava/util/Set;

.field static final h:Ljava/util/Set;

.field static i:J

.field static final j:Ljava/util/List;


# instance fields
.field k:J

.field l:J

.field m:J

.field n:Ld/J;

.field o:Z

.field p:Ld/av;

.field private final q:La/o;

.field private final r:La/w;

.field private final s:La/x;

.field private final t:La/l;

.field private final u:Lj/a;

.field private v:Z

.field private final w:J


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/16 v6, 0x10

    const/16 v5, 0xb

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-array v0, v4, [Ld/an;

    sget-object v1, Ld/an;->d:Ld/an;

    aput-object v1, v0, v3

    invoke-static {v0}, Ld/an;->a([Ld/an;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, La/A;->g:Ljava/util/Set;

    const/4 v0, 0x4

    new-array v0, v0, [Ld/an;

    sget-object v1, Ld/an;->g:Ld/an;

    aput-object v1, v0, v3

    sget-object v1, Ld/an;->a:Ld/an;

    aput-object v1, v0, v4

    const/4 v1, 0x2

    sget-object v2, Ld/an;->e:Ld/an;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Ld/an;->d:Ld/an;

    aput-object v2, v0, v1

    invoke-static {v0}, Ld/an;->a([Ld/an;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, La/A;->h:Ljava/util/Set;

    const-wide/32 v0, 0x2bf20

    sput-wide v0, La/A;->i:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, La/A;->j:Ljava/util/List;

    sget-object v0, La/A;->j:Ljava/util/List;

    new-instance v1, La/z;

    const/4 v2, 0x6

    invoke-direct {v1, v2, v3, v5, v3}, La/z;-><init>(IIII)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, La/A;->j:Ljava/util/List;

    new-instance v1, La/z;

    invoke-direct {v1, v5, v4, v6, v3}, La/z;-><init>(IIII)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, La/A;->j:Ljava/util/List;

    new-instance v1, La/z;

    const/16 v2, 0x17

    invoke-direct {v1, v6, v4, v2, v3}, La/z;-><init>(IIII)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method constructor <init>(Li/E;Lc/m;La/G;La/d;La/o;La/l;La/w;Lj/a;La/x;)V
    .registers 18

    const-string v2, "SCollector"

    sget-object v7, La/e;->b:La/e;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v7}, La/a;-><init>(Ljava/lang/String;Li/E;Lc/m;La/G;La/d;La/e;)V

    const-wide v1, 0x7fffffffffffffffL

    iput-wide v1, p0, La/A;->k:J

    const/4 v1, 0x0

    iput-boolean v1, p0, La/A;->v:Z

    const-wide/16 v1, -0x1

    iput-wide v1, p0, La/A;->l:J

    const-wide/16 v1, -0x1

    iput-wide v1, p0, La/A;->m:J

    const/4 v1, 0x0

    iput-object v1, p0, La/A;->n:Ld/J;

    const/4 v1, 0x0

    iput-boolean v1, p0, La/A;->o:Z

    new-instance v1, La/C;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, La/C;-><init>(La/A;La/B;)V

    iput-object v1, p0, La/A;->p:Ld/av;

    iput-object p5, p0, La/A;->q:La/o;

    iput-object p7, p0, La/A;->r:La/w;

    move-object/from16 v0, p8

    iput-object v0, p0, La/A;->u:Lj/a;

    move-object/from16 v0, p9

    iput-object v0, p0, La/A;->s:La/x;

    iput-object p6, p0, La/A;->t:La/l;

    invoke-interface {p1}, Li/E;->a()J

    move-result-wide v1

    iput-wide v1, p0, La/A;->w:J

    return-void
.end method

.method public constructor <init>(Li/E;Lc/m;La/G;La/d;La/o;La/l;Lj/a;)V
    .registers 18

    invoke-static {}, La/w;->a()La/w;

    move-result-object v7

    new-instance v9, La/x;

    sget-object v0, La/A;->j:Ljava/util/List;

    invoke-static {}, La/w;->a()La/w;

    move-result-object v1

    invoke-direct {v9, p1, v0, p5, v1}, La/x;-><init>(Li/E;Ljava/util/List;La/o;La/w;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v9}, La/A;-><init>(Li/E;Lc/m;La/G;La/d;La/o;La/l;La/w;Lj/a;La/x;)V

    return-void
.end method

.method private a(JJJIZ)V
    .registers 15

    iget-object v0, p0, La/A;->b:Li/E;

    invoke-interface {v0}, Li/E;->c()J

    move-result-wide v3

    add-long v1, p1, v3

    add-long/2addr v3, p5

    iget-object v0, p0, La/A;->q:La/o;

    move v5, p7

    invoke-virtual/range {v0 .. v5}, La/o;->a(JJI)V

    const-wide/16 v0, -0x1

    cmp-long v0, p3, v0

    if-eqz v0, :cond_22

    sub-long v0, p5, p3

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_22

    iget-object v2, p0, La/A;->u:Lj/a;

    invoke-virtual {v2, v0, v1}, Lj/a;->c(J)V

    :cond_22
    const/4 v0, 0x0

    iput-object v0, p0, La/A;->n:Ld/J;

    const/4 v0, 0x0

    iput-boolean v0, p0, La/A;->o:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, La/A;->l:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, La/A;->m:J

    if-eqz p8, :cond_3a

    iget-object v0, p0, La/A;->b:Li/E;

    const/4 v1, 0x6

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Li/E;->a(IJ)V

    :cond_3a
    return-void
.end method

.method static synthetic a(La/A;JJJIZ)V
    .registers 9

    invoke-direct/range {p0 .. p8}, La/A;->a(JJJIZ)V

    return-void
.end method

.method private f()I
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, La/A;->b:Li/E;

    invoke-interface {v1}, Li/E;->t()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_1e

    array-length v3, v2

    move v1, v0

    :goto_f
    if-ge v1, v3, :cond_1e

    aget-object v4, v2, v1

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1b

    add-int/lit8 v0, v0, 0x1

    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1e
    return v0
.end method

.method private i(J)Z
    .registers 8

    const/4 v0, 0x0

    iget-wide v1, p0, La/A;->k:J

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v1, v1, v3

    if-nez v1, :cond_d

    :cond_c
    :goto_c
    return v0

    :cond_d
    iget-wide v1, p0, La/A;->k:J

    const-wide/16 v3, 0x2710

    sub-long/2addr v1, v3

    cmp-long v1, v1, p1

    if-gtz v1, :cond_c

    iget-wide v1, p0, La/A;->k:J

    sget-wide v3, La/A;->i:J

    add-long/2addr v1, v3

    cmp-long v1, p1, v1

    if-gtz v1, :cond_c

    const/4 v0, 0x1

    goto :goto_c
.end method

.method private j(J)Z
    .registers 15

    const/4 v11, 0x0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sget-object v0, Ld/an;->e:Ld/an;

    iget-object v1, p0, La/A;->q:La/o;

    invoke-virtual {v1}, La/o;->g()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ld/an;->d:Ld/an;

    iget-object v1, p0, La/A;->q:La/o;

    invoke-virtual {v1}, La/o;->h()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, La/A;->b:Li/E;

    sget-object v1, La/A;->h:Ljava/util/Set;

    const-wide/32 v3, 0x493e0

    sget-object v5, Ld/x;->b:Ld/x;

    iget-object v6, p0, La/A;->b:Li/E;

    invoke-interface {v6}, Li/E;->t()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xe

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, p0, La/A;->t:La/l;

    invoke-virtual {v8}, La/l;->d()LW/a;

    move-result-object v8

    iget-object v9, p0, La/A;->p:Ld/av;

    iget-object v10, p0, La/A;->a:Ljava/lang/String;

    invoke-interface/range {v0 .. v10}, Li/E;->a(Ljava/util/Set;Ljava/util/Map;JLd/x;Ljava/lang/String;Ljava/lang/Integer;LW/a;Ld/C;Ljava/lang/String;)Ld/J;

    move-result-object v0

    iput-object v0, p0, La/A;->n:Ld/J;

    iget-object v0, p0, La/A;->n:Ld/J;

    if-eqz v0, :cond_6e

    iput-wide p1, p0, La/A;->l:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, La/A;->m:J

    iput-boolean v11, p0, La/A;->o:Z

    iget-object v0, p0, La/A;->n:Ld/J;

    sget-object v1, La/A;->g:Ljava/util/Set;

    const-wide/16 v2, 0x2710

    iget-object v4, p0, La/A;->q:La/o;

    invoke-virtual {v4}, La/o;->h()I

    move-result v4

    move-object v5, p0

    invoke-interface/range {v0 .. v5}, Ld/J;->a(Ljava/util/Set;JILd/K;)V

    iget-object v0, p0, La/A;->n:Ld/J;

    invoke-interface {v0}, Ld/J;->a()V

    :cond_6e
    iget-object v0, p0, La/A;->n:Ld/J;

    if-eqz v0, :cond_74

    const/4 v0, 0x1

    :goto_73
    return v0

    :cond_74
    move v0, v11

    goto :goto_73
.end method


# virtual methods
.method a(I)V
    .registers 2

    return-void
.end method

.method a(Z)V
    .registers 2

    iput-boolean p1, p0, La/A;->v:Z

    return-void
.end method

.method protected b(J)Z
    .registers 12

    invoke-direct {p0, p1, p2}, La/A;->i(J)Z

    move-result v0

    if-eqz v0, :cond_7f

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, La/A;->k:J

    invoke-virtual {p0}, La/A;->e()Le/v;

    move-result-object v1

    iget-object v0, v1, Le/v;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6d

    invoke-direct {p0, p1, p2}, La/A;->j(J)Z

    move-result v0

    if-eqz v0, :cond_61

    sget-object v0, La/e;->h:La/e;

    iput-object v0, p0, La/A;->f:La/e;

    :cond_25
    :goto_25
    iget-wide v0, p0, La/A;->w:J

    sub-long v0, p1, v0

    const-wide/16 v2, 0x4e20

    cmp-long v0, v0, v2

    if-gez v0, :cond_a6

    const/4 v0, 0x1

    :goto_30
    iget-object v1, p0, La/A;->f:La/e;

    sget-object v2, La/e;->h:La/e;

    if-eq v1, v2, :cond_59

    invoke-virtual {p0}, La/A;->d()Z

    move-result v1

    if-nez v1, :cond_46

    iget-wide v1, p0, La/A;->w:J

    sub-long v1, p1, v1

    const-wide/16 v3, 0x4e20

    cmp-long v1, v1, v3

    if-gez v1, :cond_a8

    :cond_46
    iget-wide v0, p0, La/A;->k:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_59

    iget-object v0, p0, La/A;->s:La/x;

    invoke-virtual {v0}, La/x;->a()J

    move-result-wide v0

    iput-wide v0, p0, La/A;->k:J

    :cond_59
    :goto_59
    iget-object v0, p0, La/A;->f:La/e;

    sget-object v1, La/e;->b:La/e;

    if-eq v0, v1, :cond_b7

    const/4 v0, 0x1

    :goto_60
    return v0

    :cond_61
    const-wide/16 v3, -0x1

    const/16 v7, 0x1d

    const/4 v8, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v5, p1

    invoke-direct/range {v0 .. v8}, La/A;->a(JJJIZ)V

    goto :goto_25

    :cond_6d
    const-wide/16 v3, -0x1

    iget-object v0, v1, Le/v;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v5, p1

    invoke-direct/range {v0 .. v8}, La/A;->a(JJJIZ)V

    goto :goto_25

    :cond_7f
    iget-wide v0, p0, La/A;->k:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-eqz v0, :cond_25

    iget-wide v0, p0, La/A;->k:J

    sget-wide v2, La/A;->i:J

    add-long/2addr v0, v2

    cmp-long v0, p1, v0

    if-lez v0, :cond_25

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, La/A;->k:J

    const-wide/16 v3, -0x1

    const/16 v7, 0x1c

    const/4 v8, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v5, p1

    invoke-direct/range {v0 .. v8}, La/A;->a(JJJIZ)V

    goto :goto_25

    :cond_a6
    const/4 v0, 0x0

    goto :goto_30

    :cond_a8
    if-nez v0, :cond_59

    iget-object v0, p0, La/A;->s:La/x;

    invoke-virtual {v0}, La/x;->b()V

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, La/A;->k:J

    goto :goto_59

    :cond_b7
    const/4 v0, 0x0

    goto :goto_60
.end method

.method public b(LW/a;)Z
    .registers 3

    new-instance v0, La/i;

    invoke-direct {v0, p1}, La/i;-><init>(LW/a;)V

    invoke-virtual {v0}, La/i;->a()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic c()V
    .registers 1

    invoke-super {p0}, La/a;->c()V

    return-void
.end method

.method d()Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, La/A;->r:La/w;

    invoke-virtual {v2}, La/w;->b()Z

    move-result v3

    iget-object v2, p0, La/A;->t:La/l;

    invoke-virtual {v2}, La/l;->d()LW/a;

    move-result-object v2

    if-eqz v2, :cond_18

    move v2, v0

    :goto_11
    if-eqz v3, :cond_1a

    if-eqz v2, :cond_1a

    :goto_15
    if-nez v0, :cond_17

    :cond_17
    return v0

    :cond_18
    move v2, v1

    goto :goto_11

    :cond_1a
    move v0, v1

    goto :goto_15
.end method

.method e()Le/v;
    .registers 10

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, La/A;->r:La/w;

    invoke-virtual {v0}, La/w;->c()Le/v;

    move-result-object v5

    iget-object v0, p0, La/A;->b:Li/E;

    invoke-interface {v0}, Li/E;->l()Z

    move-result v6

    iget-object v0, p0, La/A;->t:La/l;

    invoke-virtual {v0}, La/l;->d()LW/a;

    move-result-object v0

    if-eqz v0, :cond_5d

    move v1, v2

    :goto_17
    iget-object v0, p0, La/A;->u:Lj/a;

    const-wide/32 v7, 0x493e0

    invoke-virtual {v0, v7, v8, v2}, Lj/a;->c(JZ)Z

    move-result v7

    iget-object v0, v5, Le/v;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5f

    iget-boolean v0, p0, La/A;->v:Z

    if-eqz v0, :cond_5f

    if-eqz v6, :cond_5f

    if-eqz v1, :cond_5f

    if-eqz v7, :cond_5f

    move v4, v2

    :goto_35
    if-eqz v4, :cond_92

    invoke-direct {p0}, La/A;->f()I

    move-result v0

    const/4 v8, 0x3

    if-lt v0, v8, :cond_61

    move v0, v2

    :goto_3f
    if-eqz v4, :cond_63

    if-nez v0, :cond_63

    :goto_43
    move v3, v0

    :goto_44
    if-nez v2, :cond_90

    iget-object v0, v5, Le/v;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_65

    iget-object v0, v5, Le/v;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    :goto_54
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1, v0}, Le/v;->a(Ljava/lang/Object;Ljava/lang/Object;)Le/v;

    move-result-object v0

    return-object v0

    :cond_5d
    move v1, v3

    goto :goto_17

    :cond_5f
    move v4, v3

    goto :goto_35

    :cond_61
    move v0, v3

    goto :goto_3f

    :cond_63
    move v2, v3

    goto :goto_43

    :cond_65
    if-nez v6, :cond_6e

    const/16 v0, 0x18

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_54

    :cond_6e
    if-nez v1, :cond_77

    const/16 v0, 0x1a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_54

    :cond_77
    if-nez v7, :cond_80

    const/16 v0, 0x19

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_54

    :cond_80
    if-eqz v3, :cond_89

    const/16 v0, 0x1b

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_54

    :cond_89
    const/16 v0, 0x63

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_54

    :cond_90
    const/4 v0, 0x0

    goto :goto_54

    :cond_92
    move v2, v4

    goto :goto_44
.end method

.method protected h(J)Z
    .registers 5

    const/4 v1, 0x1

    iget-object v0, p0, La/A;->n:Ld/J;

    if-nez v0, :cond_b

    sget-object v0, La/e;->b:La/e;

    iput-object v0, p0, La/A;->f:La/e;

    move v0, v1

    :goto_a
    return v0

    :cond_b
    iget-object v0, p0, La/A;->r:La/w;

    invoke-virtual {v0}, La/w;->c()Le/v;

    move-result-object v0

    iget-object v0, v0, Le/v;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_22

    iput-boolean v1, p0, La/A;->o:Z

    iget-object v0, p0, La/A;->n:Ld/J;

    invoke-interface {v0}, Ld/J;->b()V

    :cond_22
    const/4 v0, 0x0

    goto :goto_a
.end method
