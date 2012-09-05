.class public Lc/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/base/w;


# instance fields
.field private final a:Lc/s;

.field private final b:Lc/q;

.field private final c:Li/E;

.field private final d:Li/C;

.field private e:J

.field private f:Z

.field private final g:Li/G;


# direct methods
.method public constructor <init>(Li/E;Li/C;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lc/s;

    invoke-direct {v0}, Lc/s;-><init>()V

    iput-object v0, p0, Lc/p;->a:Lc/s;

    new-instance v0, Lc/q;

    const/16 v1, 0x3e8

    iget-object v2, p0, Lc/p;->a:Lc/s;

    invoke-direct {v0, v1, v2}, Lc/q;-><init>(ILc/s;)V

    iput-object v0, p0, Lc/p;->b:Lc/q;

    iput-object p1, p0, Lc/p;->c:Li/E;

    iput-object p2, p0, Lc/p;->d:Li/C;

    new-instance v0, Li/G;

    const/4 v1, 0x2

    sget-object v2, Lk/a;->I:LW/d;

    invoke-static {p1}, Lc/p;->a(Li/A;)Ljava/io/File;

    move-result-object v3

    invoke-interface {p1}, Li/E;->k()Ljavax/crypto/SecretKey;

    move-result-object v6

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Li/G;-><init>(ILW/d;Ljava/io/File;Lcom/google/common/base/w;Li/A;Ljavax/crypto/SecretKey;)V

    iput-object v0, p0, Lc/p;->g:Li/G;

    invoke-direct {p0}, Lc/p;->i()V

    return-void
.end method

.method private static a(Li/A;)Ljava/io/File;
    .registers 4

    new-instance v0, Ljava/io/File;

    invoke-interface {p0}, Li/A;->f()Ljava/io/File;

    move-result-object v1

    const-string v2, "nlp_devices"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private c(LW/a;)V
    .registers 15

    const/4 v12, 0x3

    const/4 v11, 0x1

    invoke-virtual {p1, v11}, LW/a;->d(I)J

    move-result-wide v1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, LW/a;->d(I)J

    move-result-wide v3

    add-long v9, v3, v1

    iget-object v0, p0, Lc/p;->c:Li/E;

    invoke-interface {v0}, Li/E;->b()J

    move-result-wide v7

    iget-object v0, p0, Lc/p;->c:Li/E;

    invoke-interface {v0}, Li/E;->a()J

    move-result-wide v5

    sub-long v3, v7, v5

    cmp-long v0, v9, v7

    if-lez v0, :cond_53

    :goto_1f
    sub-long/2addr v7, v3

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, LW/a;->a(I)Z

    move-result v0

    invoke-virtual {p0, v7, v8, v0}, Lc/p;->a(JZ)V

    const/4 v0, 0x0

    move v7, v0

    :goto_2a
    invoke-virtual {p1, v12}, LW/a;->i(I)I

    move-result v0

    if-ge v7, v0, :cond_55

    invoke-virtual {p1, v12, v7}, LW/a;->d(II)LW/a;

    move-result-object v8

    invoke-direct {p0, v8}, Lc/p;->d(LW/a;)Z

    move-result v0

    if-eqz v0, :cond_4f

    new-instance v0, Lc/r;

    invoke-direct {v0, v8}, Lc/r;-><init>(LW/a;)V

    invoke-static/range {v0 .. v6}, Lc/r;->a(Lc/r;JJJ)V

    invoke-virtual {v8, v11}, LW/a;->d(I)J

    move-result-wide v8

    iget-object v10, p0, Lc/p;->b:Lc/q;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v10, v8, v0}, Lc/q;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4f
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_2a

    :cond_53
    move-wide v7, v9

    goto :goto_1f

    :cond_55
    return-void
.end method

.method private d(LW/a;)Z
    .registers 4

    const/4 v0, 0x1

    if-eqz p1, :cond_10

    invoke-virtual {p1}, LW/a;->c()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {p1, v0}, LW/a;->h(I)Z

    move-result v1

    if-eqz v1, :cond_10

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private h()LW/a;
    .registers 5

    new-instance v1, LW/a;

    sget-object v0, Lk/a;->I:LW/d;

    invoke-direct {v1, v0}, LW/a;-><init>(LW/d;)V

    iget-object v0, p0, Lc/p;->b:Lc/q;

    invoke-virtual {v0}, Lc/q;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    const/4 v3, 0x3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/r;

    invoke-static {v0}, Lc/r;->a(Lc/r;)LW/a;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, LW/a;->a(ILW/a;)V

    goto :goto_11

    :cond_2c
    const/4 v0, 0x1

    iget-object v2, p0, Lc/p;->c:Li/E;

    invoke-interface {v2}, Li/E;->c()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, LW/a;->b(IJ)V

    const/4 v0, 0x2

    iget-wide v2, p0, Lc/p;->e:J

    invoke-virtual {v1, v0, v2, v3}, LW/a;->b(IJ)V

    const/4 v0, 0x4

    iget-boolean v2, p0, Lc/p;->f:Z

    invoke-virtual {v1, v0, v2}, LW/a;->a(IZ)V

    return-object v1
.end method

.method private i()V
    .registers 5

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x4194997000000000L

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-long v0, v0

    iget-object v2, p0, Lc/p;->c:Li/E;

    invoke-interface {v2}, Li/E;->a()J

    move-result-wide v2

    sub-long v0, v2, v0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lc/p;->a(JZ)V

    iget-object v0, p0, Lc/p;->b:Lc/q;

    invoke-virtual {v0}, Lc/q;->clear()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Long;)F
    .registers 5

    iget-object v0, p0, Lc/p;->b:Lc/q;

    invoke-virtual {v0, p1}, Lc/q;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/r;

    iget-object v2, p0, Lc/p;->a:Lc/s;

    if-eqz v0, :cond_15

    const/4 v1, 0x1

    :goto_d
    invoke-virtual {v2, v1}, Lc/s;->a(Z)V

    if-nez v0, :cond_17

    const/high16 v0, -0x4080

    :goto_14
    return v0

    :cond_15
    const/4 v1, 0x0

    goto :goto_d

    :cond_17
    invoke-virtual {v0}, Lc/r;->d()F

    move-result v0

    goto :goto_14
.end method

.method a(JJ)Lc/r;
    .registers 8

    iget-object v0, p0, Lc/p;->b:Lc/q;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/q;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/r;

    if-nez v0, :cond_32

    new-instance v0, LW/a;

    sget-object v1, Lk/a;->r:LW/d;

    invoke-direct {v0, v1}, LW/a;-><init>(LW/d;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, LW/a;->b(IJ)V

    new-instance v1, Lc/r;

    invoke-direct {v1, v0}, Lc/r;-><init>(LW/a;)V

    iget-object v0, p0, Lc/p;->b:Lc/q;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lc/q;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/r;

    if-nez v0, :cond_31

    iget-object v0, p0, Lc/p;->a:Lc/s;

    invoke-virtual {v0}, Lc/s;->c()V

    :cond_31
    move-object v0, v1

    :cond_32
    invoke-static {v0, p3, p4}, Lc/r;->a(Lc/r;J)V

    return-object v0
.end method

.method public a()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lc/p;->g:Li/G;

    invoke-virtual {v0}, Li/G;->a()LW/a;

    move-result-object v0

    invoke-direct {p0, v0}, Lc/p;->c(LW/a;)V

    invoke-virtual {p0}, Lc/p;->g()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_d

    :goto_c
    return-void

    :catch_d
    move-exception v0

    invoke-direct {p0}, Lc/p;->i()V

    goto :goto_c
.end method

.method public a(JZ)V
    .registers 4

    iput-wide p1, p0, Lc/p;->e:J

    iput-boolean p3, p0, Lc/p;->f:Z

    return-void
.end method

.method public a(LW/a;)V
    .registers 16

    const/16 v13, 0x8

    const/4 v12, 0x4

    const/4 v11, 0x3

    invoke-static {p1}, Ll/b;->b(LW/a;)Z

    move-result v0

    if-nez v0, :cond_b

    :cond_a
    return-void

    :cond_b
    iget-object v0, p0, Lc/p;->c:Li/E;

    invoke-interface {v0}, Li/E;->a()J

    move-result-wide v4

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, LW/a;->f(I)LW/a;

    move-result-object v6

    iget-object v0, p0, Lc/p;->d:Li/C;

    invoke-virtual {v0}, Li/C;->e()I

    move-result v7

    const/4 v0, 0x0

    move v1, v0

    :goto_1e
    invoke-virtual {v6, v11}, LW/a;->i(I)I

    move-result v0

    if-ge v1, v0, :cond_a

    invoke-virtual {v6, v11, v1}, LW/a;->d(II)LW/a;

    move-result-object v8

    invoke-virtual {v8, v11}, LW/a;->h(I)Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-virtual {v8, v11}, LW/a;->f(I)LW/a;

    move-result-object v0

    invoke-virtual {v0, v13}, LW/a;->h(I)Z

    move-result v2

    if-eqz v2, :cond_61

    invoke-virtual {v0, v13}, LW/a;->d(I)J

    move-result-wide v2

    :goto_3c
    const-wide/16 v9, -0x1

    cmp-long v0, v2, v9

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lc/p;->b:Lc/q;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lc/q;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/r;

    if-eqz v0, :cond_5d

    invoke-virtual {v8, v12}, LW/a;->h(I)Z

    move-result v2

    if-eqz v2, :cond_6b

    invoke-virtual {v8, v12}, LW/a;->e(I)F

    move-result v2

    invoke-virtual {v0, v4, v5, v2, v7}, Lc/r;->a(JFI)V

    :cond_5d
    :goto_5d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1e

    :cond_61
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, LW/a;->g(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/N;->a(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_3c

    :cond_6b
    invoke-virtual {v0, v4, v5, v7}, Lc/r;->a(JI)V

    goto :goto_5d
.end method

.method public a(Le/L;)V
    .registers 7

    if-nez p1, :cond_3

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lc/p;->c:Li/E;

    invoke-interface {v0}, Li/E;->a()J

    move-result-wide v1

    const/4 v0, 0x0

    :goto_a
    invoke-virtual {p1}, Le/L;->a()I

    move-result v3

    if-ge v0, v3, :cond_2

    invoke-virtual {p1, v0}, Le/L;->a(I)Le/M;

    move-result-object v3

    iget-object v3, v3, Le/M;->a:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4, v1, v2}, Lc/p;->a(JJ)Lc/r;

    add-int/lit8 v0, v0, 0x1

    goto :goto_a
.end method

.method public synthetic a(Ljava/lang/Object;)Z
    .registers 3

    check-cast p1, LW/a;

    invoke-virtual {p0, p1}, Lc/p;->b(LW/a;)Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/Long;)J
    .registers 4

    iget-object v0, p0, Lc/p;->b:Lc/q;

    invoke-virtual {v0, p1}, Lc/q;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/r;

    if-nez v0, :cond_d

    const-wide/16 v0, -0x1

    :goto_c
    return-wide v0

    :cond_d
    invoke-virtual {v0}, Lc/r;->a()J

    move-result-wide v0

    goto :goto_c
.end method

.method public b()Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lc/p;->b:Lc/q;

    invoke-virtual {v0}, Lc/q;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public b(Le/L;)V
    .registers 7

    if-nez p1, :cond_3

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lc/p;->c:Li/E;

    invoke-interface {v0}, Li/E;->a()J

    move-result-wide v1

    const/4 v0, 0x0

    :goto_a
    invoke-virtual {p1}, Le/L;->a()I

    move-result v3

    if-ge v0, v3, :cond_2

    invoke-virtual {p1, v0}, Le/L;->a(I)Le/M;

    move-result-object v3

    iget-object v3, v3, Le/M;->a:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4, v1, v2}, Lc/p;->a(JJ)Lc/r;

    move-result-object v3

    invoke-static {v3, v1, v2}, Lc/r;->b(Lc/r;J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_a
.end method

.method public b(LW/a;)Z
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, LW/a;->h(I)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, LW/a;->h(I)Z

    move-result v1

    if-eqz v1, :cond_f

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public c()V
    .registers 3

    invoke-virtual {p0}, Lc/p;->g()V

    iget-object v0, p0, Lc/p;->g:Li/G;

    invoke-direct {p0}, Lc/p;->h()LW/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/G;->a(LW/a;)Z

    return-void
.end method

.method public d()J
    .registers 3

    iget-wide v0, p0, Lc/p;->e:J

    return-wide v0
.end method

.method public e()Z
    .registers 2

    iget-boolean v0, p0, Lc/p;->f:Z

    return v0
.end method

.method public f()LW/a;
    .registers 4

    iget-object v0, p0, Lc/p;->a:Lc/s;

    iget-object v1, p0, Lc/p;->b:Lc/q;

    invoke-static {v1}, Lc/q;->a(Lc/q;)I

    move-result v1

    iget-object v2, p0, Lc/p;->b:Lc/q;

    invoke-virtual {v2}, Lc/q;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lc/s;->a(II)LW/a;

    move-result-object v0

    return-object v0
.end method

.method public g()V
    .registers 13

    const-wide/32 v10, 0x5265c00

    const v9, 0x7fffffff

    iget-object v0, p0, Lc/p;->c:Li/E;

    invoke-interface {v0}, Li/E;->a()J

    move-result-wide v0

    const-wide/32 v2, 0xa4cb800

    sub-long v2, v0, v2

    const-wide/32 v4, 0x240c8400

    sub-long v4, v0, v4

    iget-object v0, p0, Lc/p;->b:Lc/q;

    invoke-virtual {v0}, Lc/q;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_20
    :goto_20
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/r;

    invoke-virtual {v1}, Lc/r;->c()I

    move-result v7

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/r;

    invoke-virtual {v1}, Lc/r;->e()I

    move-result v1

    if-ne v7, v9, :cond_46

    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto :goto_20

    :cond_46
    int-to-long v7, v7

    mul-long/2addr v7, v10

    cmp-long v7, v7, v4

    if-gez v7, :cond_55

    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    iget-object v0, p0, Lc/p;->a:Lc/s;

    invoke-virtual {v0}, Lc/s;->b()V

    goto :goto_20

    :cond_55
    if-eq v1, v9, :cond_20

    int-to-long v7, v1

    mul-long/2addr v7, v10

    cmp-long v1, v7, v2

    if-gez v1, :cond_20

    iget-object v1, p0, Lc/p;->a:Lc/s;

    invoke-virtual {v1}, Lc/s;->b()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/r;

    invoke-static {v0}, Lc/r;->b(Lc/r;)V

    goto :goto_20

    :cond_6c
    return-void
.end method
