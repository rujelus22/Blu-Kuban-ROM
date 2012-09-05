.class public LaE/n;
.super Lat/a;


# static fields
.field private static a:LaE/n;

.field private static j:Z


# instance fields
.field private b:I

.field private c:LaJ/B;

.field private d:LaJ/B;

.field private e:I

.field private f:I

.field private g:[J

.field private h:I

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, LaE/n;->j:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lat/a;-><init>()V

    const/4 v0, 0x6

    new-array v0, v0, [J

    iput-object v0, p0, LaE/n;->g:[J

    iput v1, p0, LaE/n;->h:I

    iput v1, p0, LaE/n;->i:I

    invoke-virtual {p0}, LaE/n;->m()V

    return-void
.end method

.method private static a(Lak/m;)Lak/p;
    .registers 2

    instance-of v0, p0, Lak/q;

    if-eqz v0, :cond_d

    check-cast p0, Lak/q;

    const-string v0, "savedLocationShiftCoefficients_lock"

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

.method private a(LaJ/B;I)Z
    .registers 9

    const-wide/32 v4, 0x15752a00

    const/4 v0, 0x0

    iget-object v1, p0, LaE/n;->c:LaJ/B;

    if-nez v1, :cond_9

    :cond_8
    :goto_8
    return v0

    :cond_9
    invoke-virtual {p1}, LaJ/B;->c()I

    move-result v1

    iget-object v2, p0, LaE/n;->c:LaJ/B;

    invoke-virtual {v2}, LaJ/B;->c()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, p2, :cond_8

    invoke-virtual {p1}, LaJ/B;->e()I

    move-result v1

    iget-object v2, p0, LaE/n;->c:LaJ/B;

    invoke-virtual {v2}, LaJ/B;->e()I

    move-result v2

    sub-int/2addr v1, v2

    :goto_25
    if-gez v1, :cond_2b

    int-to-long v1, v1

    add-long/2addr v1, v4

    long-to-int v1, v1

    goto :goto_25

    :cond_2b
    int-to-long v2, v1

    sub-long v2, v4, v2

    long-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v1, p2, :cond_8

    const/4 v0, 0x1

    goto :goto_8
.end method

.method public static e(LaJ/B;)Z
    .registers 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eqz p0, :cond_28

    invoke-virtual {p0}, LaJ/B;->c()I

    move-result v2

    const v3, 0x2dc6c0

    if-lt v2, v3, :cond_28

    invoke-virtual {p0}, LaJ/B;->c()I

    move-result v2

    const v3, 0x337f980

    if-gt v2, v3, :cond_28

    invoke-virtual {p0}, LaJ/B;->e()I

    move-result v2

    const v3, 0x44aa200

    if-lt v2, v3, :cond_28

    invoke-virtual {p0}, LaJ/B;->e()I

    move-result v2

    const v3, 0x81b3200

    if-le v2, v3, :cond_29

    :cond_28
    :goto_28
    return v0

    :cond_29
    invoke-static {}, LaF/b;->c()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3a

    const/16 v3, 0x1cc

    if-eq v2, v3, :cond_38

    const/16 v3, 0x460

    if-ne v2, v3, :cond_28

    :cond_38
    move v0, v1

    goto :goto_28

    :cond_3a
    move v0, v1

    goto :goto_28
.end method

.method public static k()LaE/n;
    .registers 1

    sget-object v0, LaE/n;->a:LaE/n;

    if-nez v0, :cond_7

    invoke-static {}, LaE/n;->p()V

    :cond_7
    sget-object v0, LaE/n;->a:LaE/n;

    return-object v0
.end method

.method private static declared-synchronized p()V
    .registers 2

    const-class v1, LaE/n;

    monitor-enter v1

    :try_start_3
    new-instance v0, LaE/n;

    invoke-direct {v0}, LaE/n;-><init>()V

    sput-object v0, LaE/n;->a:LaE/n;
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_c

    monitor-exit v1

    return-void

    :catchall_c
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0x35

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 5

    new-instance v0, Lam/b;

    sget-object v1, LbD/dM;->a:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    const/4 v1, 0x2

    iget-object v2, p0, LaE/n;->d:LaJ/B;

    invoke-virtual {v2}, LaJ/B;->g()Lam/b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lam/b;->b(ILam/b;)V

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Lam/b;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(LaJ/B;)Z
    .registers 3

    iget v0, p0, LaE/n;->e:I

    div-int/lit8 v0, v0, 0x2

    invoke-direct {p0, p1, v0}, LaE/n;->a(LaJ/B;I)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_5

    :cond_4
    :goto_4
    return v1

    :cond_5
    sget-object v2, LbD/dM;->b:Lam/e;

    invoke-static {v2, p1}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3, v0}, Lam/b;->d(I)I

    move-result v2

    iput v2, p0, LaE/n;->b:I

    iget v2, p0, LaE/n;->b:I

    if-nez v2, :cond_4

    move v2, v1

    :goto_18
    const/4 v4, 0x6

    if-ge v2, v4, :cond_27

    iget-object v4, p0, LaE/n;->g:[J

    const/4 v5, 0x2

    invoke-virtual {v3, v5, v2}, Lam/b;->d(II)J

    move-result-wide v5

    aput-wide v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_27
    const/4 v2, 0x4

    invoke-virtual {v3, v2}, Lam/b;->d(I)I

    move-result v2

    iput v2, p0, LaE/n;->f:I

    const/4 v2, 0x5

    invoke-virtual {v3, v2}, Lam/b;->d(I)I

    move-result v2

    iput v2, p0, LaE/n;->e:I

    const/4 v2, 0x3

    invoke-virtual {v3, v2}, Lam/b;->h(I)Lam/b;

    move-result-object v2

    invoke-static {v2}, LaJ/B;->a(Lam/b;)LaJ/B;

    move-result-object v2

    iput-object v2, p0, LaE/n;->c:LaJ/B;

    iget v2, p0, LaE/n;->b:I

    if-nez v2, :cond_47

    invoke-virtual {p0}, LaE/n;->o()V

    :cond_47
    iget v2, p0, LaE/n;->b:I

    if-nez v2, :cond_4d

    :goto_4b
    move v1, v0

    goto :goto_4

    :cond_4d
    move v0, v1

    goto :goto_4b
.end method

.method public b(LaJ/B;)Z
    .registers 3

    iget v0, p0, LaE/n;->f:I

    div-int/lit8 v0, v0, 0x2

    invoke-direct {p0, p1, v0}, LaE/n;->a(LaJ/B;I)Z

    move-result v0

    return v0
.end method

.method public c(LaJ/B;)V
    .registers 3

    if-eqz p1, :cond_1b

    iget-object v0, p0, LaE/n;->c:LaJ/B;

    invoke-virtual {p1, v0}, LaJ/B;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, LaE/n;->d:LaJ/B;

    invoke-virtual {p1, v0}, LaJ/B;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    iput-object p1, p0, LaE/n;->d:LaJ/B;

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lat/h;->c(Lat/g;)V

    :cond_1b
    return-void
.end method

.method public d(LaJ/B;)LaJ/B;
    .registers 12

    const-wide/32 v8, 0xf4240

    iget-object v0, p0, LaE/n;->g:[J

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    iget-object v2, p0, LaE/n;->g:[J

    const/4 v3, 0x1

    aget-wide v2, v2, v3

    invoke-virtual {p1}, LaJ/B;->c()I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    iget-object v2, p0, LaE/n;->g:[J

    const/4 v3, 0x2

    aget-wide v2, v2, v3

    invoke-virtual {p1}, LaJ/B;->e()I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    div-long/2addr v0, v8

    iget-object v2, p0, LaE/n;->g:[J

    const/4 v3, 0x3

    aget-wide v2, v2, v3

    iget-object v4, p0, LaE/n;->g:[J

    const/4 v5, 0x4

    aget-wide v4, v4, v5

    invoke-virtual {p1}, LaJ/B;->c()I

    move-result v6

    int-to-long v6, v6

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    iget-object v4, p0, LaE/n;->g:[J

    const/4 v5, 0x5

    aget-wide v4, v4, v5

    invoke-virtual {p1}, LaJ/B;->e()I

    move-result v6

    int-to-long v6, v6

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    div-long/2addr v2, v8

    invoke-virtual {p0, p1}, LaE/n;->a(LaJ/B;)Z

    move-result v4

    if-eqz v4, :cond_48

    invoke-virtual {p0, p1}, LaE/n;->c(LaJ/B;)V

    :cond_48
    long-to-int v4, v0

    invoke-virtual {p1}, LaJ/B;->c()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, p0, LaE/n;->h:I

    long-to-int v4, v2

    invoke-virtual {p1}, LaJ/B;->e()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, p0, LaE/n;->i:I

    new-instance v4, LaJ/B;

    long-to-int v0, v0

    long-to-int v1, v2

    invoke-direct {v4, v0, v1}, LaJ/B;-><init>(II)V

    return-object v4
.end method

.method public l()V
    .registers 9

    const-wide/32 v6, 0xf4240

    const/4 v5, 0x1

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, LaE/n;->g:[J

    aput-wide v3, v0, v2

    iget-object v0, p0, LaE/n;->g:[J

    aput-wide v6, v0, v5

    iget-object v0, p0, LaE/n;->g:[J

    const/4 v1, 0x2

    aput-wide v3, v0, v1

    iget-object v0, p0, LaE/n;->g:[J

    const/4 v1, 0x3

    aput-wide v3, v0, v1

    iget-object v0, p0, LaE/n;->g:[J

    const/4 v1, 0x4

    aput-wide v3, v0, v1

    iget-object v0, p0, LaE/n;->g:[J

    const/4 v1, 0x5

    aput-wide v6, v0, v1

    iput v2, p0, LaE/n;->e:I

    iput v2, p0, LaE/n;->f:I

    iput v2, p0, LaE/n;->h:I

    iput v2, p0, LaE/n;->i:I

    iput v5, p0, LaE/n;->b:I

    return-void
.end method

.method public declared-synchronized m()V
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->n()Lak/m;

    move-result-object v1

    invoke-static {v1}, LaE/n;->a(Lak/m;)Lak/p;

    move-result-object v2

    const-string v0, "savedLocationShiftCoefficients"

    invoke-static {v1, v0}, Laf/l;->a(Lak/m;Ljava/lang/String;)Ljava/io/DataInput;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_2c

    move-result-object v0

    :try_start_13
    invoke-virtual {p0, v0}, LaE/n;->a(Ljava/io/DataInput;)Z
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_2f
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_21

    move-result v0

    :try_start_17
    invoke-static {v2}, LaE/n;->a(Lak/p;)V

    :goto_1a
    if-nez v0, :cond_1f

    invoke-virtual {p0}, LaE/n;->l()V
    :try_end_1f
    .catchall {:try_start_17 .. :try_end_1f} :catchall_2c

    :cond_1f
    monitor-exit p0

    return-void

    :catch_21
    move-exception v0

    const/4 v0, 0x0

    :try_start_23
    const-string v3, "savedLocationShiftCoefficients"

    invoke-interface {v1, v3}, Lak/m;->b(Ljava/lang/String;)Z
    :try_end_28
    .catchall {:try_start_23 .. :try_end_28} :catchall_2f

    :try_start_28
    invoke-static {v2}, LaE/n;->a(Lak/p;)V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2c

    goto :goto_1a

    :catchall_2c
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_2f
    move-exception v0

    :try_start_30
    invoke-static {v2}, LaE/n;->a(Lak/p;)V

    throw v0
    :try_end_34
    .catchall {:try_start_30 .. :try_end_34} :catchall_2c
.end method

.method public n()Lam/b;
    .registers 6

    new-instance v1, Lam/b;

    sget-object v0, LbD/dM;->b:Lam/e;

    invoke-direct {v1, v0}, Lam/b;-><init>(Lam/e;)V

    const/4 v0, 0x1

    iget v2, p0, LaE/n;->b:I

    invoke-virtual {v1, v0, v2}, Lam/b;->h(II)V

    const/4 v0, 0x0

    :goto_e
    const/4 v2, 0x6

    if-ge v0, v2, :cond_1c

    const/4 v2, 0x2

    iget-object v3, p0, LaE/n;->g:[J

    aget-wide v3, v3, v0

    invoke-virtual {v1, v2, v3, v4}, Lam/b;->a(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_1c
    const/4 v0, 0x3

    iget-object v2, p0, LaE/n;->c:LaJ/B;

    invoke-virtual {v2}, LaJ/B;->g()Lam/b;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lam/b;->b(ILam/b;)V

    const/4 v0, 0x4

    iget v2, p0, LaE/n;->f:I

    invoke-virtual {v1, v0, v2}, Lam/b;->h(II)V

    const/4 v0, 0x5

    iget v2, p0, LaE/n;->e:I

    invoke-virtual {v1, v0, v2}, Lam/b;->h(II)V

    return-object v1
.end method

.method public declared-synchronized o()V
    .registers 6

    monitor-enter p0

    :try_start_1
    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->n()Lak/m;

    move-result-object v1

    invoke-static {v1}, LaE/n;->a(Lak/m;)Lak/p;

    move-result-object v2

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_38

    :try_start_17
    invoke-virtual {p0}, LaE/n;->n()Lam/b;

    move-result-object v4

    check-cast v0, Ljava/io/DataOutputStream;

    invoke-virtual {v4, v0}, Lam/b;->a(Ljava/io/OutputStream;)V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const-string v3, "savedLocationShiftCoefficients"

    invoke-interface {v1, v0, v3}, Lak/m;->b([BLjava/lang/String;)I
    :try_end_29
    .catchall {:try_start_17 .. :try_end_29} :catchall_3b
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_29} :catch_2e

    :try_start_29
    invoke-static {v2}, LaE/n;->a(Lak/p;)V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_38

    :goto_2c
    monitor-exit p0

    return-void

    :catch_2e
    move-exception v0

    :try_start_2f
    const-string v0, "savedLocationShiftCoefficients"

    invoke-interface {v1, v0}, Lak/m;->b(Ljava/lang/String;)Z
    :try_end_34
    .catchall {:try_start_2f .. :try_end_34} :catchall_3b

    :try_start_34
    invoke-static {v2}, LaE/n;->a(Lak/p;)V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_38

    goto :goto_2c

    :catchall_38
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_3b
    move-exception v0

    :try_start_3c
    invoke-static {v2}, LaE/n;->a(Lak/p;)V

    throw v0
    :try_end_40
    .catchall {:try_start_3c .. :try_end_40} :catchall_38
.end method

.method public z_()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
