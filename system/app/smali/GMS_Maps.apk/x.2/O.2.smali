.class public Lx/O;
.super Ljava/lang/Object;

# interfaces
.implements Lx/b;


# instance fields
.field private final a:Lz/g;

.field private final b:Lz/g;

.field private c:Lx/s;

.field private final d:Laf/a;

.field private e:Ljava/util/Locale;

.field private f:I


# direct methods
.method public constructor <init>(Ljava/util/Locale;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lx/O;->f:I

    new-instance v0, Lz/g;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lz/g;-><init>(I)V

    iput-object v0, p0, Lx/O;->a:Lz/g;

    new-instance v0, Lz/g;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Lz/g;-><init>(I)V

    iput-object v0, p0, Lx/O;->b:Lz/g;

    new-instance v0, Lag/a;

    invoke-direct {v0}, Lag/a;-><init>()V

    iput-object v0, p0, Lx/O;->d:Laf/a;

    iput-object p1, p0, Lx/O;->e:Ljava/util/Locale;

    return-void
.end method

.method private a(Lt/r;Z)Lt/q;
    .registers 8

    const/4 v4, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lx/O;->b:Lz/g;

    monitor-enter v2

    :try_start_5
    iget-object v0, p0, Lx/O;->b:Lz/g;

    invoke-virtual {v0, p1}, Lz/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lx/O;->b:Lz/g;

    invoke-virtual {v0, p1}, Lz/g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/r;

    move-object p1, v0

    :cond_16
    monitor-exit v2
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_26

    iget-object v2, p0, Lx/O;->a:Lz/g;

    monitor-enter v2

    :try_start_1a
    iget-object v0, p0, Lx/O;->a:Lz/g;

    invoke-virtual {v0, p1}, Lz/g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/q;

    if-eqz v0, :cond_29

    monitor-exit v2
    :try_end_25
    .catchall {:try_start_1a .. :try_end_25} :catchall_32

    :cond_25
    :goto_25
    return-object v0

    :catchall_26
    move-exception v0

    :try_start_27
    monitor-exit v2
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v0

    :cond_29
    :try_start_29
    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_32

    if-eqz p2, :cond_30

    iget-object v0, p0, Lx/O;->c:Lx/s;

    if-nez v0, :cond_35

    :cond_30
    move-object v0, v1

    goto :goto_25

    :catchall_32
    move-exception v0

    :try_start_33
    monitor-exit v2
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v0

    :cond_35
    iget-object v0, p0, Lx/O;->c:Lx/s;

    invoke-virtual {p1}, Lt/r;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lx/s;->a(Ljava/lang/String;)Lx/v;

    move-result-object v0

    if-nez v0, :cond_43

    move-object v0, v1

    goto :goto_25

    :cond_43
    iget-object v2, v0, Lx/v;->a:Lam/b;

    invoke-virtual {v2, v4}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lt/r;->a(Ljava/lang/String;)Lt/r;

    move-result-object v2

    if-nez v2, :cond_51

    move-object v0, v1

    goto :goto_25

    :cond_51
    invoke-virtual {p1, v2}, Lt/r;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a5

    iget-object v0, p0, Lx/O;->c:Lx/s;

    invoke-virtual {v2}, Lt/r;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lx/s;->a(Ljava/lang/String;)Lx/v;

    move-result-object v0

    if-eqz v0, :cond_b7

    invoke-static {}, Ln/a;->b()Z

    move-result v1

    if-nez v1, :cond_9c

    iget-object v1, v0, Lx/v;->a:Lam/b;

    invoke-virtual {v1, v4}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lt/r;->a(Ljava/lang/String;)Lt/r;

    move-result-object v1

    invoke-virtual {v2, v1}, Lt/r;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected ID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9c
    iget-object v1, p0, Lx/O;->b:Lz/g;

    monitor-enter v1

    :try_start_9f
    iget-object v3, p0, Lx/O;->b:Lz/g;

    invoke-virtual {v3, p1, v2}, Lz/g;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v1
    :try_end_a5
    .catchall {:try_start_9f .. :try_end_a5} :catchall_b4

    :cond_a5
    iget-object v1, v0, Lx/v;->a:Lam/b;

    iget-object v0, v0, Lx/v;->b:Lx/a;

    invoke-static {v1, v0}, Lt/q;->a(Lam/b;Lx/a;)Lt/q;

    move-result-object v0

    if-eqz v0, :cond_25

    invoke-direct {p0, v0}, Lx/O;->b(Lt/q;)V

    goto/16 :goto_25

    :catchall_b4
    move-exception v0

    :try_start_b5
    monitor-exit v1
    :try_end_b6
    .catchall {:try_start_b5 .. :try_end_b6} :catchall_b4

    throw v0

    :cond_b7
    move-object v0, v1

    goto/16 :goto_25
.end method

.method private b(Lt/q;)V
    .registers 7

    invoke-virtual {p1}, Lt/q;->a()Lt/r;

    move-result-object v1

    iget-object v2, p0, Lx/O;->a:Lz/g;

    monitor-enter v2

    :try_start_7
    iget-object v0, p0, Lx/O;->a:Lz/g;

    invoke-virtual {v0, v1, p1}, Lz/g;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v2
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_31

    iget-object v2, p0, Lx/O;->b:Lz/g;

    monitor-enter v2

    :try_start_10
    invoke-virtual {p1}, Lt/q;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/u;

    iget-object v4, p0, Lx/O;->b:Lz/g;

    invoke-virtual {v0}, Lt/u;->b()Lt/r;

    move-result-object v0

    invoke-virtual {v4, v0, v1}, Lz/g;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_18

    :catchall_2e
    move-exception v0

    monitor-exit v2
    :try_end_30
    .catchall {:try_start_10 .. :try_end_30} :catchall_2e

    throw v0

    :catchall_31
    move-exception v0

    :try_start_32
    monitor-exit v2
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v0

    :cond_34
    :try_start_34
    monitor-exit v2
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_2e

    return-void
.end method

.method private b(Lt/r;Lam/b;)V
    .registers 10

    const/4 v6, 0x2

    const/4 v5, 0x1

    iget-object v0, p0, Lx/O;->c:Lx/s;

    invoke-virtual {p1}, Lt/r;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lx/s;->a(Ljava/lang/String;Lam/b;)V

    invoke-virtual {p2, v6}, Lam/b;->l(I)I

    move-result v1

    if-nez v1, :cond_12

    :cond_11
    return-void

    :cond_12
    new-instance v2, Lam/b;

    sget-object v0, Lbz/a;->a:Lam/e;

    invoke-direct {v2, v0}, Lam/b;-><init>(Lam/e;)V

    invoke-virtual {p1}, Lt/r;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Lam/b;->b(ILjava/lang/String;)V

    const/4 v0, 0x0

    :goto_21
    if-ge v0, v1, :cond_11

    invoke-virtual {p2, v6, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v3

    invoke-virtual {v3, v5}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lt/r;->a(Ljava/lang/String;)Lt/r;

    move-result-object v3

    if-eqz v3, :cond_3a

    iget-object v4, p0, Lx/O;->c:Lx/s;

    invoke-virtual {v3}, Lt/r;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3, v2}, Lx/s;->a(Ljava/lang/String;Lam/b;)V

    :cond_3a
    add-int/lit8 v0, v0, 0x1

    goto :goto_21
.end method


# virtual methods
.method public a()I
    .registers 2

    iget-object v0, p0, Lx/O;->c:Lx/s;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lx/O;->c:Lx/s;

    invoke-virtual {v0}, Lx/s;->a()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    iget v0, p0, Lx/O;->f:I

    goto :goto_a
.end method

.method public a(Lt/r;)Lt/q;
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lx/O;->a(Lt/r;Z)Lt/q;

    move-result-object v0

    return-object v0
.end method

.method public a(Lt/r;Lam/b;)Lt/q;
    .registers 11

    const/4 v6, 0x0

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lt/r;->a(Ljava/lang/String;)Lt/r;

    move-result-object v7

    if-eqz p1, :cond_e

    if-nez v7, :cond_10

    :cond_e
    move-object v0, v6

    :goto_f
    return-object v0

    :cond_10
    new-instance v0, Lx/a;

    iget-object v1, p0, Lx/O;->d:Laf/a;

    invoke-virtual {p0}, Lx/O;->a()I

    move-result v2

    iget-object v3, p0, Lx/O;->d:Laf/a;

    invoke-interface {v3}, Laf/a;->b()J

    move-result-wide v3

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lx/a;-><init>(Laf/a;IJLx/b;)V

    iget-object v1, p0, Lx/O;->c:Lx/s;

    if-eqz v1, :cond_29

    invoke-direct {p0, v7, p2}, Lx/O;->b(Lt/r;Lam/b;)V

    :cond_29
    invoke-static {p2, v0}, Lt/q;->a(Lam/b;Lx/a;)Lt/q;

    move-result-object v0

    if-nez v0, :cond_31

    move-object v0, v6

    goto :goto_f

    :cond_31
    invoke-direct {p0, v0}, Lx/O;->b(Lt/q;)V

    goto :goto_f
.end method

.method public a(Ljava/io/File;)V
    .registers 9

    new-instance v0, Lx/s;

    new-instance v1, Lag/a;

    invoke-direct {v1}, Lag/a;-><init>()V

    const-string v2, "bd"

    sget-object v3, Lbz/a;->a:Lam/e;

    const/16 v4, 0xbb8

    const-wide/32 v5, 0x5265c00

    invoke-direct/range {v0 .. v6}, Lx/s;-><init>(Laf/a;Ljava/lang/String;Lam/e;IJ)V

    invoke-virtual {v0, p1}, Lx/s;->a(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_20

    iget-object v1, p0, Lx/O;->e:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Lx/s;->a(Ljava/util/Locale;)Z

    iput-object v0, p0, Lx/O;->c:Lx/s;

    :cond_20
    return-void
.end method

.method public a(Lt/q;)Z
    .registers 3

    instance-of v0, p1, Lx/Q;

    return v0
.end method

.method public b()J
    .registers 3

    const-wide/32 v0, 0x5265c00

    return-wide v0
.end method

.method public b(Lt/r;)Lt/q;
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lx/O;->a(Lt/r;Z)Lt/q;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .registers 3

    iget-object v1, p0, Lx/O;->a:Lz/g;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lx/O;->a:Lz/g;

    invoke-virtual {v0}, Lz/g;->f()V

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_13

    iget-object v1, p0, Lx/O;->b:Lz/g;

    monitor-enter v1

    :try_start_c
    iget-object v0, p0, Lx/O;->b:Lz/g;

    invoke-virtual {v0}, Lz/g;->f()V

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_16

    return-void

    :catchall_13
    move-exception v0

    :try_start_14
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v0

    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public c(Lt/r;)V
    .registers 8

    new-instance v0, Lx/a;

    iget-object v1, p0, Lx/O;->d:Laf/a;

    invoke-virtual {p0}, Lx/O;->a()I

    move-result v2

    iget-object v3, p0, Lx/O;->d:Laf/a;

    invoke-interface {v3}, Laf/a;->b()J

    move-result-wide v3

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lx/a;-><init>(Laf/a;IJLx/b;)V

    new-instance v1, Lx/Q;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, v2}, Lx/Q;-><init>(Lt/r;Lx/a;Lx/P;)V

    iget-object v2, p0, Lx/O;->a:Lz/g;

    monitor-enter v2

    :try_start_1b
    iget-object v0, p0, Lx/O;->a:Lz/g;

    invoke-virtual {v0, p1, v1}, Lz/g;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v2

    return-void

    :catchall_22
    move-exception v0

    monitor-exit v2
    :try_end_24
    .catchall {:try_start_1b .. :try_end_24} :catchall_22

    throw v0
.end method

.method public d()V
    .registers 3

    iget-object v1, p0, Lx/O;->a:Lz/g;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lx/O;->a:Lz/g;

    invoke-virtual {v0}, Lz/g;->f()V

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_1c

    iget-object v1, p0, Lx/O;->b:Lz/g;

    monitor-enter v1

    :try_start_c
    iget-object v0, p0, Lx/O;->b:Lz/g;

    invoke-virtual {v0}, Lz/g;->f()V

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_1f

    iget-object v0, p0, Lx/O;->c:Lx/s;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lx/O;->c:Lx/s;

    invoke-virtual {v0}, Lx/s;->d()Z

    :cond_1b
    return-void

    :catchall_1c
    move-exception v0

    :try_start_1d
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v0

    :catchall_1f
    move-exception v0

    :try_start_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method public e()V
    .registers 3

    iget-object v1, p0, Lx/O;->a:Lz/g;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lx/O;->a:Lz/g;

    invoke-virtual {v0}, Lz/g;->f()V

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_1c

    iget-object v1, p0, Lx/O;->b:Lz/g;

    monitor-enter v1

    :try_start_c
    iget-object v0, p0, Lx/O;->b:Lz/g;

    invoke-virtual {v0}, Lz/g;->f()V

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_1f

    iget-object v0, p0, Lx/O;->c:Lx/s;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lx/O;->c:Lx/s;

    invoke-virtual {v0}, Lx/s;->c()V

    :cond_1b
    return-void

    :catchall_1c
    move-exception v0

    :try_start_1d
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v0

    :catchall_1f
    move-exception v0

    :try_start_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method public f()J
    .registers 3

    iget-object v0, p0, Lx/O;->c:Lx/s;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lx/O;->c:Lx/s;

    invoke-virtual {v0}, Lx/s;->e()J

    move-result-wide v0

    :goto_a
    return-wide v0

    :cond_b
    const-wide/16 v0, 0x0

    goto :goto_a
.end method
