.class public Lcom/google/googlenav/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/m;


# instance fields
.field protected final a:[I

.field protected final b:[Lcom/google/googlenav/k;

.field private c:Z

.field private d:Z

.field private volatile e:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/google/googlenav/j;->a:[I

    new-array v0, v1, [Lcom/google/googlenav/k;

    iput-object v0, p0, Lcom/google/googlenav/j;->b:[Lcom/google/googlenav/k;

    return-void
.end method

.method private static a(Lak/m;)Lak/p;
    .registers 2

    instance-of v0, p0, Lak/q;

    if-eqz v0, :cond_d

    check-cast p0, Lak/q;

    const-string v0, "Restrictions_lock"

    invoke-interface {p0, v0}, Lak/q;->a(Ljava/lang/String;)Lak/p;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private static a(Lak/p;)V
    .registers 1

    if-eqz p0, :cond_5

    invoke-interface {p0}, Lak/p;->a()Z

    :cond_5
    return-void
.end method

.method private b(Ljava/io/DataInput;)Z
    .registers 12

    const/4 v0, 0x0

    const/4 v9, 0x3

    const/4 v1, 0x1

    sget-object v2, LbD/aL;->e:Lam/e;

    invoke-static {v2, p1}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    move-result-object v3

    invoke-virtual {v3, v1}, Lam/b;->l(I)I

    move-result v4

    move v2, v0

    :goto_e
    if-ge v2, v4, :cond_3c

    invoke-virtual {v3, v1, v2}, Lam/b;->e(II)Lam/b;

    move-result-object v5

    invoke-virtual {v5, v1}, Lam/b;->d(I)I

    move-result v6

    if-ltz v6, :cond_39

    if-gt v6, v9, :cond_39

    iget-object v7, p0, Lcom/google/googlenav/j;->a:[I

    const/4 v8, 0x2

    invoke-virtual {v5, v8}, Lam/b;->d(I)I

    move-result v8

    aput v8, v7, v6

    invoke-virtual {v5, v9}, Lam/b;->l(I)I

    move-result v7

    if-lez v7, :cond_39

    iget-object v0, p0, Lcom/google/googlenav/j;->b:[Lcom/google/googlenav/k;

    new-instance v7, Lcom/google/googlenav/k;

    invoke-virtual {v5, v9}, Lam/b;->h(I)Lam/b;

    move-result-object v5

    invoke-direct {v7, v5}, Lcom/google/googlenav/k;-><init>(Lam/b;)V

    aput-object v7, v0, v6

    move v0, v1

    :cond_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_3c
    return v0
.end method

.method private d()V
    .registers 9

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->n()Lak/m;

    move-result-object v2

    const/4 v0, 0x0

    :try_start_9
    new-instance v3, Lam/b;

    sget-object v1, LbD/aL;->e:Lam/e;

    invoke-direct {v3, v1}, Lam/b;-><init>(Lam/e;)V

    const/4 v1, 0x0

    :goto_11
    iget-object v4, p0, Lcom/google/googlenav/j;->b:[Lcom/google/googlenav/k;

    array-length v4, v4

    if-ge v1, v4, :cond_42

    iget-object v4, p0, Lcom/google/googlenav/j;->b:[Lcom/google/googlenav/k;

    aget-object v4, v4, v1

    if-eqz v4, :cond_3f

    new-instance v4, Lam/b;

    sget-object v5, LbD/aL;->b:Lam/e;

    invoke-direct {v4, v5}, Lam/b;-><init>(Lam/e;)V

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v1}, Lam/b;->h(II)V

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/google/googlenav/j;->a:[I

    aget v6, v6, v1

    invoke-virtual {v4, v5, v6}, Lam/b;->h(II)V

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/google/googlenav/j;->b:[Lcom/google/googlenav/k;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Lcom/google/googlenav/k;->a()Lam/b;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lam/b;->b(ILam/b;)V

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v4}, Lam/b;->a(ILam/b;)V

    :cond_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_42
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {v4, v3}, Lam/g;->a(Ljava/io/DataOutput;Lam/b;)V

    invoke-static {v2}, Lcom/google/googlenav/j;->a(Lak/m;)Lak/p;
    :try_end_52
    .catchall {:try_start_9 .. :try_end_52} :catchall_6a
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_52} :catch_60

    move-result-object v0

    :try_start_53
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const-string v3, "Restrictions"

    invoke-interface {v2, v1, v3}, Lak/m;->b([BLjava/lang/String;)I
    :try_end_5c
    .catchall {:try_start_53 .. :try_end_5c} :catchall_72
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_5c} :catch_60

    invoke-static {v0}, Lcom/google/googlenav/j;->a(Lak/p;)V

    :goto_5f
    return-void

    :catch_60
    move-exception v1

    :try_start_61
    const-string v1, "Restrictions"

    invoke-interface {v2, v1}, Lak/m;->b(Ljava/lang/String;)Z
    :try_end_66
    .catchall {:try_start_61 .. :try_end_66} :catchall_72

    invoke-static {v0}, Lcom/google/googlenav/j;->a(Lak/p;)V

    goto :goto_5f

    :catchall_6a
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_6e
    invoke-static {v1}, Lcom/google/googlenav/j;->a(Lak/p;)V

    throw v0

    :catchall_72
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_6e
.end method


# virtual methods
.method public a()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/j;->e:Z

    return-void
.end method

.method public a(Ljava/io/DataInput;)V
    .registers 4

    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/googlenav/j;->b(Ljava/io/DataInput;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/google/googlenav/j;->d()V

    :cond_9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/j;->d:Z
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_d

    :goto_c
    return-void

    :catch_d
    move-exception v0

    const-string v1, "CFR"

    invoke-static {v1, v0}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c
.end method

.method public a([I)V
    .registers 7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/j;->d:Z

    invoke-virtual {p0}, Lcom/google/googlenav/j;->c()Z

    new-instance v1, Lcom/google/googlenav/l;

    invoke-direct {v1, p0}, Lcom/google/googlenav/l;-><init>(Lcom/google/googlenav/m;)V

    const-wide/16 v2, 0x7530

    invoke-virtual {v1, v2, v3}, Lcom/google/googlenav/l;->b(J)V

    const-string v0, "6030007"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/l;->a(I)V

    const/4 v0, 0x0

    :goto_1a
    array-length v2, p1

    if-ge v0, v2, :cond_2b

    aget v2, p1, v0

    iget-object v3, p0, Lcom/google/googlenav/j;->a:[I

    aget v4, p1, v0

    aget v3, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/googlenav/l;->a(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_2b
    invoke-virtual {v1}, Lcom/google/googlenav/l;->i()V

    return-void
.end method

.method public a(I)Z
    .registers 3

    const/4 v0, 0x3

    if-gt p1, v0, :cond_f

    iget-boolean v0, p0, Lcom/google/googlenav/j;->d:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/google/googlenav/j;->b:[Lcom/google/googlenav/k;

    aget-object v0, v0, p1

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public a(ILaJ/B;Z)Z
    .registers 11

    const-wide/16 v5, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-gt p1, v1, :cond_c

    iget-object v1, p0, Lcom/google/googlenav/j;->b:[Lcom/google/googlenav/k;

    aget-object v1, v1, p1

    if-nez v1, :cond_d

    :cond_c
    :goto_c
    return p3

    :cond_d
    iget-object v1, p0, Lcom/google/googlenav/j;->b:[Lcom/google/googlenav/k;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/google/googlenav/k;->b()[J

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-static {p2}, LaJ/O;->a(LaJ/B;)J

    move-result-wide v2

    invoke-static {v2, v3}, LaJ/O;->a(J)J

    move-result-wide v2

    array-length v4, v1

    invoke-static {v1, v0, v4, v2, v3}, Lar/a;->a([JIIJ)I

    move-result v1

    int-to-long v1, v1

    cmp-long v3, v1, v5

    if-gtz v3, :cond_30

    const-wide/16 v3, 0x2

    rem-long/2addr v1, v3

    cmp-long v1, v1, v5

    if-nez v1, :cond_31

    :cond_30
    const/4 v0, 0x1

    :cond_31
    move p3, v0

    goto :goto_c
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/googlenav/j;->e:Z

    return v0
.end method

.method public c()Z
    .registers 4

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/google/googlenav/j;->c:Z

    if-eqz v1, :cond_6

    :goto_5
    return v0

    :cond_6
    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->n()Lak/m;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/j;->a(Lak/m;)Lak/p;

    move-result-object v1

    :try_start_12
    const-string v2, "Restrictions"

    invoke-static {v0, v2}, Laf/l;->a(Lak/m;Ljava/lang/String;)Ljava/io/DataInput;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-direct {p0, v0}, Lcom/google/googlenav/j;->b(Ljava/io/DataInput;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/j;->c:Z
    :try_end_20
    .catchall {:try_start_12 .. :try_end_20} :catchall_30
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_20} :catch_26

    :cond_20
    invoke-static {v1}, Lcom/google/googlenav/j;->a(Lak/p;)V

    :goto_23
    iget-boolean v0, p0, Lcom/google/googlenav/j;->c:Z

    goto :goto_5

    :catch_26
    move-exception v0

    :try_start_27
    const-string v2, "CFR"

    invoke-static {v2, v0}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2c
    .catchall {:try_start_27 .. :try_end_2c} :catchall_30

    invoke-static {v1}, Lcom/google/googlenav/j;->a(Lak/p;)V

    goto :goto_23

    :catchall_30
    move-exception v0

    invoke-static {v1}, Lcom/google/googlenav/j;->a(Lak/p;)V

    throw v0
.end method
