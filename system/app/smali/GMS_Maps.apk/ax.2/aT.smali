.class public Lax/aT;
.super Ljava/lang/Object;


# instance fields
.field private a:Lam/b;

.field private final b:Ljava/lang/String;

.field private final c:I

.field private final d:J


# direct methods
.method public constructor <init>(Lam/b;Ljava/lang/String;IJ)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lax/aT;->b:Ljava/lang/String;

    iput p3, p0, Lax/aT;->c:I

    iput-wide p4, p0, Lax/aT;->d:J

    if-nez p1, :cond_12

    invoke-virtual {p0}, Lax/aT;->b()Lam/b;

    move-result-object v0

    iput-object v0, p0, Lax/aT;->a:Lam/b;

    :goto_11
    return-void

    :cond_12
    iput-object p1, p0, Lax/aT;->a:Lam/b;

    goto :goto_11
.end method

.method public constructor <init>(Ljava/lang/String;IJ)V
    .registers 11

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lax/aT;-><init>(Lam/b;Ljava/lang/String;IJ)V

    return-void
.end method

.method private e(Lam/b;)LaJ/B;
    .registers 5

    new-instance v0, LaJ/B;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lam/b;->d(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lam/b;->d(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, LaJ/B;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a()Lam/b;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lax/aT;->a:Lam/b;

    invoke-static {v0}, Lam/g;->a(Lam/b;)Lam/b;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_15
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_9
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_6} :catch_18

    move-result-object v0

    :goto_7
    monitor-exit p0

    return-object v0

    :catch_9
    move-exception v0

    :try_start_a
    invoke-virtual {p0}, Lax/aT;->d()V

    :goto_d
    new-instance v0, Lam/b;

    sget-object v1, LbD/Z;->A:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_15

    goto :goto_7

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_18
    move-exception v0

    :try_start_19
    invoke-virtual {p0}, Lax/aT;->d()V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_15

    goto :goto_d
.end method

.method public declared-synchronized a(Lam/b;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Lax/aT;->b(Lam/b;)Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_34
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4} :catch_2a

    move-result v0

    if-nez v0, :cond_9

    :goto_7
    monitor-exit p0

    return-void

    :cond_9
    :try_start_9
    iget-object v0, p0, Lax/aT;->a:Lam/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lam/b;->l(I)I

    move-result v0

    :goto_10
    iget v1, p0, Lax/aT;->c:I

    if-lt v0, v1, :cond_23

    iget-object v0, p0, Lax/aT;->a:Lam/b;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lam/b;->g(II)V

    iget-object v0, p0, Lax/aT;->a:Lam/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lam/b;->l(I)I

    move-result v0

    goto :goto_10

    :cond_23
    iget-object v0, p0, Lax/aT;->a:Lam/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lam/b;->a(ILam/b;)V
    :try_end_29
    .catchall {:try_start_9 .. :try_end_29} :catchall_34
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_29} :catch_2a

    goto :goto_7

    :catch_2a
    move-exception v0

    :try_start_2b
    const-string v1, "LatitudeBackground"

    invoke-static {v1, v0}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lax/aT;->d()V
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_34

    goto :goto_7

    :catchall_34
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method a(Lam/b;Lam/b;)Z
    .registers 11

    const-wide/16 v6, -0x1

    const/4 v3, 0x5

    const/4 v0, 0x0

    invoke-static {p1, v3}, Lam/g;->g(Lam/b;I)J

    move-result-wide v1

    invoke-static {p2, v3}, Lam/g;->g(Lam/b;I)J

    move-result-wide v3

    cmp-long v5, v1, v6

    if-eqz v5, :cond_14

    cmp-long v5, v3, v6

    if-nez v5, :cond_15

    :cond_14
    :goto_14
    return v0

    :cond_15
    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    iget-wide v3, p0, Lax/aT;->d:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_14

    const/4 v0, 0x1

    goto :goto_14
.end method

.method b()Lam/b;
    .registers 4

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->n()Lak/m;

    move-result-object v0

    iget-object v1, p0, Lax/aT;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lak/m;->d(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_13

    array-length v1, v0

    if-nez v1, :cond_1b

    :cond_13
    new-instance v0, Lam/b;

    sget-object v1, LbD/Z;->A:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    :cond_1a
    :goto_1a
    return-object v0

    :cond_1b
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_25
    new-instance v0, Lam/b;

    sget-object v1, LbD/Z;->A:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lam/b;->a(Ljava/io/InputStream;I)I

    move-result v1

    if-eqz v1, :cond_1a

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error parsing the location history for store: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lax/aT;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_51} :catch_51

    :catch_51
    move-exception v0

    invoke-virtual {p0}, Lax/aT;->d()V

    const-string v1, "LatitudeBackground"

    invoke-static {v1, v0}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lam/b;

    sget-object v1, LbD/Z;->A:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    goto :goto_1a
.end method

.method b(Lam/b;)Z
    .registers 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    invoke-virtual {p0, p1}, Lax/aT;->c(Lam/b;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lam/b;->d(I)I

    move-result v0

    if-ne v0, v1, :cond_17

    invoke-virtual {p0, p1}, Lax/aT;->d(Lam/b;)Z

    move-result v0

    goto :goto_4

    :cond_17
    move v0, v1

    goto :goto_4
.end method

.method public b(Lam/b;Lam/b;)Z
    .registers 7

    if-nez p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    invoke-direct {p0, p1}, Lax/aT;->e(Lam/b;)LaJ/B;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lam/b;->d(I)I

    move-result v1

    int-to-long v1, v1

    invoke-direct {p0, p2}, Lax/aT;->e(Lam/b;)LaJ/B;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lax/bD;->a(LaJ/B;JLaJ/B;)Z

    move-result v0

    goto :goto_3
.end method

.method public declared-synchronized c()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lax/aT;->a:Lam/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lam/b;->l(I)I

    move-result v0

    if-nez v0, :cond_19

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->n()Lak/m;

    move-result-object v0

    iget-object v1, p0, Lax/aT;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lak/m;->b(Ljava/lang/String;)Z
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_44

    :goto_17
    monitor-exit p0

    return-void

    :cond_19
    :try_start_19
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_23
    .catchall {:try_start_19 .. :try_end_23} :catchall_44

    :try_start_23
    iget-object v2, p0, Lax/aT;->a:Lam/b;

    invoke-virtual {v2, v1}, Lam/b;->a(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v1

    invoke-virtual {v1}, Laf/b;->n()Lak/m;

    move-result-object v1

    iget-object v2, p0, Lax/aT;->b:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lak/m;->b([BLjava/lang/String;)I
    :try_end_39
    .catchall {:try_start_23 .. :try_end_39} :catchall_44
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_39} :catch_3a

    goto :goto_17

    :catch_3a
    move-exception v0

    :try_start_3b
    invoke-virtual {p0}, Lax/aT;->d()V

    const-string v1, "LatitudeBackground"

    invoke-static {v1, v0}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_43
    .catchall {:try_start_3b .. :try_end_43} :catchall_44

    goto :goto_17

    :catchall_44
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method c(Lam/b;)Z
    .registers 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lax/aT;->a:Lam/b;

    invoke-virtual {v2, v1}, Lam/b;->l(I)I

    move-result v3

    move v2, v0

    :goto_9
    if-ge v2, v3, :cond_5c

    :try_start_b
    iget-object v4, p0, Lax/aT;->a:Lam/b;

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v2}, Lam/b;->e(II)Lam/b;

    move-result-object v4

    invoke-virtual {p0, p1, v4}, Lax/aT;->a(Lam/b;Lam/b;)Z

    move-result v5

    if-eqz v5, :cond_59

    invoke-virtual {p0, p1, v4}, Lax/aT;->b(Lam/b;Lam/b;)Z
    :try_end_1b
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_1b} :catch_1f
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_1b} :catch_3c

    move-result v4

    if-nez v4, :cond_59

    :goto_1e
    return v0

    :catch_1f
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RecentLocationHistory upgrade for store: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lax/aT;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lax/aT;->d()V

    goto :goto_1e

    :catch_3c
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RecentLocationHistory upgrade for store: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lax/aT;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lax/aT;->d()V

    goto :goto_1e

    :cond_59
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_5c
    move v0, v1

    goto :goto_1e
.end method

.method declared-synchronized d()V
    .registers 3

    monitor-enter p0

    :try_start_1
    new-instance v0, Lam/b;

    sget-object v1, LbD/Z;->A:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    iput-object v0, p0, Lax/aT;->a:Lam/b;

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->n()Lak/m;

    move-result-object v0

    iget-object v1, p0, Lax/aT;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lak/m;->b(Ljava/lang/String;)Z
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    monitor-exit p0

    return-void

    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method d(Lam/b;)Z
    .registers 3

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lam/b;->l(I)I

    move-result v0

    if-lez v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method
