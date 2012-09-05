.class public Lc/l;
.super Ljava/lang/Object;


# instance fields
.field final a:Lc/k;

.field final b:Lc/f;

.field final c:Lc/f;


# direct methods
.method private constructor <init>(Lc/k;Lc/f;Lc/f;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/l;->a:Lc/k;

    iput-object p2, p0, Lc/l;->b:Lc/f;

    iput-object p3, p0, Lc/l;->c:Lc/f;

    return-void
.end method

.method private static a(Lc/a;Ljava/io/File;Ljavax/crypto/SecretKey;Li/A;)Lc/l;
    .registers 15

    new-instance v3, Ljava/io/File;

    const-string v0, "macs"

    invoke-direct {v3, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v0, Lc/k;

    const/16 v1, 0x190

    sget-object v2, Lc/w;->a:Lc/A;

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lc/k;-><init>(ILc/A;Ljava/io/File;Ljavax/crypto/SecretKey;Li/A;)V

    new-instance v7, Ljava/io/File;

    const-string v1, "selectors"

    invoke-direct {v7, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    invoke-interface {p3, v7}, Li/A;->a(Ljava/io/File;)V

    new-instance v1, Lc/f;

    const/4 v2, 0x2

    const/16 v3, 0x14

    new-instance v5, Le/m;

    invoke-direct {v5}, Le/m;-><init>()V

    sget-object v6, Lc/w;->b:Lc/A;

    move-object v4, p0

    move-object v8, p2

    move-object v9, p3

    invoke-direct/range {v1 .. v9}, Lc/f;-><init>(IILc/a;Le/A;Lc/A;Ljava/io/File;Ljavax/crypto/SecretKey;Li/A;)V

    new-instance v8, Ljava/io/File;

    const-string v2, "models"

    invoke-direct {v8, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    invoke-interface {p3, v8}, Li/A;->a(Ljava/io/File;)V

    new-instance v2, Lc/f;

    const/4 v3, 0x4

    const/16 v4, 0xa

    new-instance v6, Le/j;

    invoke-direct {v6}, Le/j;-><init>()V

    sget-object v7, Lc/w;->b:Lc/A;

    move-object v5, p0

    move-object v9, p2

    move-object v10, p3

    invoke-direct/range {v2 .. v10}, Lc/f;-><init>(IILc/a;Le/A;Lc/A;Ljava/io/File;Ljavax/crypto/SecretKey;Li/A;)V

    new-instance v3, Lc/l;

    invoke-direct {v3, v0, v1, v2}, Lc/l;-><init>(Lc/k;Lc/f;Lc/f;)V

    return-object v3
.end method

.method public static a(Li/E;)Lc/l;
    .registers 4

    invoke-interface {p0}, Li/E;->d()Ljava/io/File;

    move-result-object v0

    invoke-interface {p0}, Li/E;->k()Ljavax/crypto/SecretKey;

    move-result-object v1

    new-instance v2, Lc/a;

    invoke-direct {v2}, Lc/a;-><init>()V

    invoke-virtual {v2}, Lc/a;->start()V

    invoke-static {v2, v0, v1, p0}, Lc/l;->a(Lc/a;Ljava/io/File;Ljavax/crypto/SecretKey;Li/A;)Lc/l;

    move-result-object v0

    return-object v0
.end method

.method private a(Le/s;J)V
    .registers 7

    iget-object v0, p0, Lc/l;->c:Lc/f;

    invoke-virtual {p1}, Le/s;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p2, p3}, Lc/f;->a(Ljava/lang/Object;LW/a;J)V

    return-void
.end method

.method private a(Le/s;LW/a;J)V
    .registers 8

    const/4 v0, 0x3

    invoke-virtual {p2, v0}, LW/a;->f(I)LW/a;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v1, p0, Lc/l;->c:Lc/f;

    invoke-virtual {p1}, Le/s;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0, p3, p4}, Lc/f;->a(Ljava/lang/Object;LW/a;J)V

    :cond_10
    return-void
.end method

.method private a(LW/a;)Z
    .registers 6

    const/4 v3, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_11

    invoke-virtual {p1, v0}, LW/a;->c(I)I

    move-result v2

    if-nez v2, :cond_11

    invoke-virtual {p1, v3}, LW/a;->h(I)Z

    move-result v2

    if-nez v2, :cond_13

    :cond_11
    move v0, v1

    :cond_12
    :goto_12
    return v0

    :cond_13
    invoke-virtual {p1, v3}, LW/a;->f(I)LW/a;

    move-result-object v2

    invoke-virtual {v2, v0}, LW/a;->c(I)I

    move-result v3

    if-nez v3, :cond_23

    const/4 v0, 0x6

    invoke-virtual {v2, v0}, LW/a;->h(I)Z

    move-result v0

    goto :goto_12

    :cond_23
    invoke-virtual {v2, v0}, LW/a;->c(I)I

    move-result v2

    const/16 v3, 0x17

    if-eq v2, v3, :cond_12

    move v0, v1

    goto :goto_12
.end method

.method private b(LW/a;J)V
    .registers 8

    invoke-static {p1}, Le/q;->a(LW/a;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v2, p0, Lc/l;->a:Lc/k;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v3, v0, p2, p3}, Lc/k;->a(Ljava/lang/Object;Ljava/lang/Object;J)V

    goto :goto_c

    :cond_26
    return-void
.end method

.method private b(Le/s;J)V
    .registers 7

    iget-object v0, p0, Lc/l;->b:Lc/f;

    invoke-virtual {p1}, Le/s;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p2, p3}, Lc/f;->a(Ljava/lang/Object;LW/a;J)V

    return-void
.end method

.method private b(Le/s;LW/a;J)V
    .registers 8

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, LW/a;->f(I)LW/a;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v1, p0, Lc/l;->b:Lc/f;

    invoke-virtual {p1}, Le/s;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0, p3, p4}, Lc/f;->a(Ljava/lang/Object;LW/a;J)V

    :cond_10
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;J)Le/k;
    .registers 5

    iget-object v0, p0, Lc/l;->b:Lc/f;

    invoke-virtual {v0, p1, p2, p3}, Lc/f;->a(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/k;

    return-object v0
.end method

.method public a(JJ)Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Lc/l;->a:Lc/k;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p3, p4}, Lc/k;->a(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public a()V
    .registers 2

    iget-object v0, p0, Lc/l;->a:Lc/k;

    invoke-virtual {v0}, Lc/k;->a()V

    iget-object v0, p0, Lc/l;->b:Lc/f;

    invoke-virtual {v0}, Lc/f;->a()V

    iget-object v0, p0, Lc/l;->c:Lc/f;

    invoke-virtual {v0}, Lc/f;->a()V

    return-void
.end method

.method public a(J)V
    .registers 8

    const-wide/32 v0, 0x240c8400

    sub-long v0, p1, v0

    const-wide/32 v2, 0xa4cb800

    sub-long v2, p1, v2

    iget-object v4, p0, Lc/l;->a:Lc/k;

    invoke-virtual {v4, v2, v3, v2, v3}, Lc/k;->a(JJ)V

    iget-object v2, p0, Lc/l;->b:Lc/f;

    invoke-virtual {v2, v0, v1, v0, v1}, Lc/f;->a(JJ)V

    iget-object v2, p0, Lc/l;->c:Lc/f;

    invoke-virtual {v2, v0, v1, v0, v1}, Lc/f;->a(JJ)V

    return-void
.end method

.method public a(LW/a;J)V
    .registers 6

    invoke-direct {p0, p1}, Lc/l;->a(LW/a;)Z

    move-result v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, LW/a;->f(I)LW/a;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, LW/a;->f(I)LW/a;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lc/l;->b(LW/a;J)V

    goto :goto_6
.end method

.method public a(LW/a;JLe/s;)V
    .registers 8

    if-eqz p4, :cond_8

    invoke-direct {p0, p1}, Lc/l;->a(LW/a;)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, LW/a;->f(I)LW/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LW/a;->c(I)I

    move-result v1

    const/16 v2, 0x17

    if-ne v1, v2, :cond_2f

    invoke-virtual {p4}, Le/s;->a()Le/t;

    move-result-object v0

    sget-object v1, Le/t;->a:Le/t;

    if-ne v0, v1, :cond_23

    invoke-direct {p0, p4, p2, p3}, Lc/l;->b(Le/s;J)V

    goto :goto_8

    :cond_23
    invoke-virtual {p4}, Le/s;->a()Le/t;

    move-result-object v0

    sget-object v1, Le/t;->b:Le/t;

    if-ne v0, v1, :cond_8

    invoke-direct {p0, p4, p2, p3}, Lc/l;->a(Le/s;J)V

    goto :goto_8

    :cond_2f
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, LW/a;->f(I)LW/a;

    move-result-object v0

    invoke-virtual {p4}, Le/s;->a()Le/t;

    move-result-object v1

    sget-object v2, Le/t;->a:Le/t;

    if-ne v1, v2, :cond_40

    invoke-direct {p0, p4, v0, p2, p3}, Lc/l;->b(Le/s;LW/a;J)V

    goto :goto_8

    :cond_40
    invoke-virtual {p4}, Le/s;->a()Le/t;

    move-result-object v1

    sget-object v2, Le/t;->b:Le/t;

    if-ne v1, v2, :cond_8

    invoke-direct {p0, p4, v0, p2, p3}, Lc/l;->a(Le/s;LW/a;J)V

    goto :goto_8
.end method

.method public a(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lc/l;->b:Lc/f;

    invoke-virtual {v0, p1}, Lc/f;->a(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;J)Le/h;
    .registers 5

    iget-object v0, p0, Lc/l;->c:Lc/f;

    invoke-virtual {v0, p1, p2, p3}, Lc/f;->a(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/h;

    return-object v0
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lc/l;->a:Lc/k;

    invoke-virtual {v0}, Lc/k;->b()V

    iget-object v0, p0, Lc/l;->b:Lc/f;

    invoke-virtual {v0}, Lc/f;->b()V

    iget-object v0, p0, Lc/l;->c:Lc/f;

    invoke-virtual {v0}, Lc/f;->b()V

    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lc/l;->c:Lc/f;

    invoke-virtual {v0, p1}, Lc/f;->a(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public c()V
    .registers 2

    iget-object v0, p0, Lc/l;->a:Lc/k;

    invoke-virtual {v0}, Lc/k;->c()V

    iget-object v0, p0, Lc/l;->b:Lc/f;

    invoke-virtual {v0}, Lc/f;->c()V

    iget-object v0, p0, Lc/l;->c:Lc/f;

    invoke-virtual {v0}, Lc/f;->c()V

    return-void
.end method
