.class public La/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/base/w;


# instance fields
.field public final a:Li/G;

.field b:LW/a;


# direct methods
.method public constructor <init>(Li/A;Ljavax/crypto/SecretKey;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LW/a;

    sget-object v1, Lk/a;->t:LW/d;

    invoke-direct {v0, v1}, LW/a;-><init>(LW/d;)V

    iput-object v0, p0, La/o;->b:LW/a;

    new-instance v0, Li/G;

    const/4 v1, 0x1

    sget-object v2, Lk/a;->t:LW/d;

    invoke-static {p1}, La/o;->a(Li/A;)Ljava/io/File;

    move-result-object v3

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Li/G;-><init>(ILW/d;Ljava/io/File;Lcom/google/common/base/w;Li/A;Ljavax/crypto/SecretKey;)V

    iput-object v0, p0, La/o;->a:Li/G;

    return-void
.end method

.method private static a(Li/A;)Ljava/io/File;
    .registers 4

    new-instance v0, Ljava/io/File;

    invoke-interface {p0}, Li/A;->h()Ljava/io/File;

    move-result-object v1

    const-string v2, "nlp_clts"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private a(LW/a;I)Ljava/util/Date;
    .registers 6

    invoke-virtual {p1, p2}, LW/a;->h(I)Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1, p2}, LW/a;->d(I)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    :goto_f
    return-object v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private b(LW/a;I)Ljava/lang/Boolean;
    .registers 4

    invoke-virtual {p1, p2}, LW/a;->h(I)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p1, p2}, LW/a;->a(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private l()V
    .registers 5

    const/4 v3, 0x1

    invoke-virtual {p0}, La/o;->d()Ljava/util/List;

    move-result-object v0

    new-instance v1, La/p;

    invoke-direct {v1, p0}, La/p;-><init>(La/o;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_1b

    add-int/lit8 v2, v1, -0x14

    invoke-interface {v0, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    :cond_1b
    iget-object v1, p0, La/o;->b:LW/a;

    invoke-static {v1, v3}, Ll/b;->a(LW/a;I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LW/a;

    iget-object v2, p0, La/o;->b:LW/a;

    invoke-virtual {v2, v3, v0}, LW/a;->a(ILW/a;)V

    goto :goto_24

    :cond_36
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    :try_start_0
    iget-object v0, p0, La/o;->a:Li/G;

    invoke-virtual {v0}, Li/G;->a()LW/a;

    move-result-object v0

    iput-object v0, p0, La/o;->b:LW/a;

    invoke-direct {p0}, La/o;->l()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    :goto_b
    return-void

    :catch_c
    move-exception v0

    goto :goto_b
.end method

.method public a(I)V
    .registers 4

    iget-object v0, p0, La/o;->b:LW/a;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, LW/a;->g(II)V

    return-void
.end method

.method public a(J)V
    .registers 5

    iget-object v0, p0, La/o;->b:LW/a;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2}, LW/a;->b(IJ)V

    return-void
.end method

.method public a(JJI)V
    .registers 13

    const/4 v6, 0x1

    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    new-instance v4, LW/a;

    sget-object v5, Lk/a;->k:LW/d;

    invoke-direct {v4, v5}, LW/a;-><init>(LW/d;)V

    invoke-virtual {v4, v6, v0, v1}, LW/a;->b(IJ)V

    const/4 v0, 0x2

    invoke-virtual {v4, v0, v2, v3}, LW/a;->b(IJ)V

    const/4 v0, 0x4

    invoke-virtual {v4, v0, p5}, LW/a;->g(II)V

    iget-object v0, p0, La/o;->b:LW/a;

    invoke-virtual {v0, v6, v4}, LW/a;->a(ILW/a;)V

    invoke-direct {p0}, La/o;->l()V

    invoke-virtual {p0}, La/o;->k()V

    return-void
.end method

.method public a(LW/a;)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .registers 3

    check-cast p1, LW/a;

    invoke-virtual {p0, p1}, La/o;->a(LW/a;)Z

    move-result v0

    return v0
.end method

.method public b()V
    .registers 3

    iget-object v0, p0, La/o;->a:Li/G;

    iget-object v1, p0, La/o;->b:LW/a;

    invoke-virtual {v0, v1}, Li/G;->a(LW/a;)Z

    return-void
.end method

.method public b(I)V
    .registers 4

    iget-object v0, p0, La/o;->b:LW/a;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, LW/a;->g(II)V

    return-void
.end method

.method public b(J)V
    .registers 5

    iget-object v0, p0, La/o;->b:LW/a;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1, p2}, LW/a;->b(IJ)V

    return-void
.end method

.method public c()LW/a;
    .registers 4

    const/4 v2, 0x1

    iget-object v0, p0, La/o;->b:LW/a;

    invoke-virtual {v0, v2}, LW/a;->i(I)I

    move-result v0

    if-lez v0, :cond_12

    iget-object v1, p0, La/o;->b:LW/a;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v2, v0}, LW/a;->d(II)LW/a;

    move-result-object v0

    :goto_11
    return-object v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public c(J)LW/a;
    .registers 11

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    new-instance v1, LW/a;

    sget-object v0, Lk/a;->al:LW/d;

    invoke-direct {v1, v0}, LW/a;-><init>(LW/d;)V

    const/4 v0, 0x0

    :goto_b
    iget-object v2, p0, La/o;->b:LW/a;

    invoke-virtual {v2, v5}, LW/a;->i(I)I

    move-result v2

    if-ge v0, v2, :cond_44

    iget-object v2, p0, La/o;->b:LW/a;

    invoke-virtual {v2, v5, v0}, LW/a;->d(II)LW/a;

    move-result-object v2

    invoke-virtual {v2, v6}, LW/a;->h(I)Z

    move-result v3

    if-eqz v3, :cond_41

    invoke-virtual {v2, v7}, LW/a;->h(I)Z

    move-result v3

    if-eqz v3, :cond_41

    invoke-virtual {v2, v6}, LW/a;->d(I)J

    move-result-wide v3

    invoke-virtual {v2, v7}, LW/a;->c(I)I

    move-result v2

    cmp-long v3, v3, p1

    if-ltz v3, :cond_41

    new-instance v3, LW/a;

    sget-object v4, Lk/a;->S:LW/d;

    invoke-direct {v3, v4}, LW/a;-><init>(LW/d;)V

    invoke-virtual {v3, v6, v5}, LW/a;->g(II)V

    invoke-virtual {v3, v5, v2}, LW/a;->g(II)V

    invoke-virtual {v1, v5, v3}, LW/a;->a(ILW/a;)V

    :cond_41
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_44
    invoke-virtual {v1, v5}, LW/a;->i(I)I

    move-result v0

    if-nez v0, :cond_4c

    const/4 v0, 0x0

    :goto_4b
    return-object v0

    :cond_4c
    move-object v0, v1

    goto :goto_4b
.end method

.method public d()Ljava/util/List;
    .registers 5

    const/4 v3, 0x1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_7
    iget-object v2, p0, La/o;->b:LW/a;

    invoke-virtual {v2, v3}, LW/a;->i(I)I

    move-result v2

    if-ge v0, v2, :cond_1b

    iget-object v2, p0, La/o;->b:LW/a;

    invoke-virtual {v2, v3, v0}, LW/a;->d(II)LW/a;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_1b
    return-object v1
.end method

.method public e()J
    .registers 3

    const/4 v1, 0x2

    iget-object v0, p0, La/o;->b:LW/a;

    invoke-virtual {v0, v1}, LW/a;->h(I)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, La/o;->b:LW/a;

    invoke-virtual {v0, v1}, LW/a;->d(I)J

    move-result-wide v0

    :goto_f
    return-wide v0

    :cond_10
    const-wide/16 v0, 0x0

    goto :goto_f
.end method

.method public f()J
    .registers 3

    const/4 v1, 0x3

    iget-object v0, p0, La/o;->b:LW/a;

    invoke-virtual {v0, v1}, LW/a;->h(I)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, La/o;->b:LW/a;

    invoke-virtual {v0, v1}, LW/a;->d(I)J

    move-result-wide v0

    :goto_f
    return-wide v0

    :cond_10
    const-wide/16 v0, 0x0

    goto :goto_f
.end method

.method public g()I
    .registers 3

    iget-object v0, p0, La/o;->b:LW/a;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, LW/a;->c(I)I

    move-result v0

    return v0
.end method

.method public h()I
    .registers 3

    iget-object v0, p0, La/o;->b:LW/a;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, LW/a;->c(I)I

    move-result v0

    return v0
.end method

.method public i()Z
    .registers 3

    iget-object v0, p0, La/o;->b:LW/a;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, LW/a;->i(I)I

    move-result v0

    if-lez v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public j()Z
    .registers 3

    iget-object v0, p0, La/o;->b:LW/a;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, LW/a;->i(I)I

    move-result v0

    if-lez v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method k()V
    .registers 3

    iget-object v0, p0, La/o;->b:LW/a;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ll/b;->a(LW/a;I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 11

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v1, 0x0

    const/4 v7, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "NextSensorCollectionTimeSinceEpoch: %s"

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, La/o;->b:LW/a;

    invoke-direct {p0, v4, v8}, La/o;->a(LW/a;I)Ljava/util/Date;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    :goto_1d
    iget-object v3, p0, La/o;->b:LW/a;

    invoke-virtual {v3, v7}, LW/a;->i(I)I

    move-result v3

    if-ge v0, v3, :cond_55

    iget-object v3, p0, La/o;->b:LW/a;

    invoke-virtual {v3, v7, v0}, LW/a;->d(II)LW/a;

    move-result-object v3

    const-string v4, ", ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "start: %s, end: %s, success: %s"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-direct {p0, v3, v7}, La/o;->a(LW/a;I)Ljava/util/Date;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-direct {p0, v3, v8}, La/o;->a(LW/a;I)Ljava/util/Date;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-direct {p0, v3, v9}, La/o;->b(LW/a;I)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_55
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
