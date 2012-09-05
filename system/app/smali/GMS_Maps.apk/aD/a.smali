.class public LaD/a;
.super Lat/a;


# instance fields
.field private final a:LaD/i;

.field private final b:Lam/b;

.field private c:Lam/b;

.field private d:Lcom/google/googlenav/a;

.field private e:LaD/n;

.field private f:LaD/c;


# direct methods
.method public constructor <init>(LaD/i;)V
    .registers 5

    invoke-direct {p0}, Lat/a;-><init>()V

    new-instance v0, Lam/b;

    sget-object v1, LbD/dB;->b:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    iput-object v0, p0, LaD/a;->b:Lam/b;

    iget-object v0, p0, LaD/a;->b:Lam/b;

    const/16 v1, 0x9

    sget v2, Lcom/google/googlenav/ui/bw;->bG:I

    invoke-virtual {v0, v1, v2}, Lam/b;->h(II)V

    iput-object p1, p0, LaD/a;->a:LaD/i;

    return-void
.end method

.method private a(Lam/b;LaD/h;)I
    .registers 5

    sget-object v0, LaD/b;->a:[I

    invoke-virtual {p2}, LaD/h;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_20

    const/4 v0, 0x0

    :goto_c
    return v0

    :pswitch_d
    const/4 v0, 0x5

    invoke-static {p1, v0}, Lam/g;->e(Lam/b;I)I

    move-result v0

    goto :goto_c

    :pswitch_13
    const/4 v0, 0x4

    invoke-static {p1, v0}, Lam/g;->e(Lam/b;I)I

    move-result v0

    goto :goto_c

    :pswitch_19
    const/4 v0, 0x6

    invoke-static {p1, v0}, Lam/g;->e(Lam/b;I)I

    move-result v0

    goto :goto_c

    nop

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_d
        :pswitch_13
        :pswitch_19
    .end packed-switch
.end method

.method private a([Lam/b;LaD/h;I)Ljava/util/List;
    .registers 12

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v0, 0x0

    :goto_5
    array-length v2, p1

    if-ge v0, v2, :cond_41

    aget-object v2, p1, v0

    const/4 v3, 0x2

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Lam/g;->c(Lam/b;II)I

    move-result v3

    if-gez v3, :cond_15

    :cond_12
    :goto_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_15
    const/4 v4, 0x1

    invoke-static {v2, v4}, Lam/g;->f(Lam/b;I)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-eqz v6, :cond_12

    iget-object v6, p0, LaD/a;->a:LaD/i;

    invoke-virtual {v6, v4, v5}, LaD/i;->a(J)LaD/m;

    move-result-object v4

    if-eqz v4, :cond_12

    invoke-virtual {v4}, LaD/m;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Las/b;->b(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_12

    invoke-direct {p0, v2, p2}, LaD/a;->a(Lam/b;LaD/h;)I

    move-result v2

    new-instance v5, LaD/f;

    add-int v6, p3, v0

    invoke-direct {v5, v6, v3, v2, v4}, LaD/f;-><init>(IIILaD/m;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_41
    return-object v1
.end method

.method private k()I
    .registers 4

    iget-object v0, p0, LaD/a;->c:Lam/b;

    if-eqz v0, :cond_d

    iget-object v0, p0, LaD/a;->c:Lam/b;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lam/g;->c(Lam/b;II)I

    move-result v0

    :goto_c
    return v0

    :cond_d
    const/4 v0, -0x1

    goto :goto_c
.end method

.method private l()V
    .registers 9

    const-wide/16 v6, 0x3e8

    const/4 v5, 0x0

    invoke-direct {p0}, LaD/a;->m()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaD/m;

    iget-object v3, p0, LaD/a;->a:LaD/i;

    invoke-virtual {v3, v0}, LaD/i;->a(LaD/m;)V

    goto :goto_b

    :cond_1d
    iget-object v0, p0, LaD/a;->c:Lam/b;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lam/g;->d(Lam/b;I)[Lam/b;

    move-result-object v0

    iget-object v1, p0, LaD/a;->c:Lam/b;

    const/4 v3, 0x2

    invoke-static {v1, v3}, Lam/g;->d(Lam/b;I)[Lam/b;

    move-result-object v3

    invoke-direct {p0}, LaD/a;->n()LaD/h;

    move-result-object v1

    invoke-static {v1}, LaD/d;->a(LaD/h;)LaD/d;

    move-result-object v4

    invoke-direct {p0, v0, v1, v5}, LaD/a;->a([Lam/b;LaD/h;I)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v4, v0}, LaD/d;->a(Ljava/util/List;)V

    invoke-static {v1}, LaD/d;->a(LaD/h;)LaD/d;

    move-result-object v0

    invoke-direct {p0, v3, v1, v5}, LaD/a;->a([Lam/b;LaD/h;I)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, LaD/d;->a(Ljava/util/List;)V

    iget-object v3, p0, LaD/a;->e:LaD/n;

    invoke-direct {p0}, LaD/a;->n()LaD/h;

    move-result-object v5

    invoke-virtual {v3, v5}, LaD/n;->a(LaD/h;)V

    iget-object v3, p0, LaD/a;->e:LaD/n;

    invoke-virtual {v3, v4}, LaD/n;->a(LaD/d;)V

    iget-object v3, p0, LaD/a;->e:LaD/n;

    invoke-virtual {v3, v0}, LaD/n;->b(LaD/d;)V

    iget-object v0, p0, LaD/a;->e:LaD/n;

    invoke-virtual {v0, v2}, LaD/n;->a(Ljava/util/List;)V

    iget-object v0, p0, LaD/a;->c:Lam/b;

    const/4 v2, 0x6

    invoke-static {v0, v2}, Lam/g;->f(Lam/b;I)J

    move-result-wide v2

    iget-object v0, p0, LaD/a;->c:Lam/b;

    const/4 v4, 0x7

    invoke-static {v0, v4}, Lam/g;->f(Lam/b;I)J

    move-result-wide v4

    iget-object v0, p0, LaD/a;->e:LaD/n;

    div-long/2addr v2, v6

    div-long/2addr v4, v6

    invoke-virtual/range {v0 .. v5}, LaD/n;->a(LaD/h;JJ)V

    return-void
.end method

.method private m()Ljava/util/List;
    .registers 15

    iget-object v0, p0, LaD/a;->c:Lam/b;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lam/g;->d(Lam/b;I)[Lam/b;

    move-result-object v2

    iget-object v0, p0, LaD/a;->c:Lam/b;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lam/g;->f(Lam/b;I)J

    move-result-wide v3

    iget-object v0, p0, LaD/a;->c:Lam/b;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lam/g;->f(Lam/b;I)J

    move-result-wide v5

    const-wide/16 v0, 0x0

    cmp-long v0, v5, v0

    if-nez v0, :cond_1c

    :cond_1c
    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v7

    array-length v8, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_23
    if-ge v1, v8, :cond_45

    aget-object v9, v2, v1

    const/4 v0, 0x1

    invoke-static {v9, v0}, Lam/g;->f(Lam/b;I)J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v0, v5, v12

    if-eqz v0, :cond_43

    cmp-long v0, v5, v10

    if-nez v0, :cond_43

    const/4 v0, 0x1

    :goto_37
    new-instance v10, LaD/m;

    invoke-direct {v10, v9, v0, v3, v4}, LaD/m;-><init>(Lam/b;ZJ)V

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_23

    :cond_43
    const/4 v0, 0x0

    goto :goto_37

    :cond_45
    return-object v7
.end method

.method private n()LaD/h;
    .registers 3

    iget-object v0, p0, LaD/a;->b:Lam/b;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lam/b;->d(I)I

    move-result v0

    packed-switch v0, :pswitch_data_18

    sget-object v0, LaD/h;->b:LaD/h;

    :goto_d
    return-object v0

    :pswitch_e
    sget-object v0, LaD/h;->a:LaD/h;

    goto :goto_d

    :pswitch_11
    sget-object v0, LaD/h;->b:LaD/h;

    goto :goto_d

    :pswitch_14
    sget-object v0, LaD/h;->c:LaD/h;

    goto :goto_d

    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_11
        :pswitch_e
        :pswitch_14
    .end packed-switch
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0x7c

    return v0
.end method

.method public a(I)LaD/a;
    .registers 5

    iget-object v0, p0, LaD/a;->b:Lam/b;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lam/b;->h(II)V

    iget-object v0, p0, LaD/a;->b:Lam/b;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Lam/b;->h(II)V

    return-object p0
.end method

.method public a(II)LaD/a;
    .registers 6

    iget-object v0, p0, LaD/a;->b:Lam/b;

    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lam/b;->h(II)V

    iget-object v0, p0, LaD/a;->b:Lam/b;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lam/b;->h(II)V

    iget-object v0, p0, LaD/a;->b:Lam/b;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p2}, Lam/b;->h(II)V

    return-object p0
.end method

.method public a(LaD/c;)LaD/a;
    .registers 2

    iput-object p1, p0, LaD/a;->f:LaD/c;

    return-object p0
.end method

.method public a(LaD/h;)LaD/a;
    .registers 5

    sget-object v0, LaD/b;->a:[I

    invoke-virtual {p1}, LaD/h;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1a

    :goto_b
    return-object p0

    :pswitch_c
    const/4 v0, 0x1

    :goto_d
    iget-object v1, p0, LaD/a;->b:Lam/b;

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v0}, Lam/b;->h(II)V

    goto :goto_b

    :pswitch_15
    const/4 v0, 0x0

    goto :goto_d

    :pswitch_17
    const/4 v0, 0x2

    goto :goto_d

    nop

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_c
        :pswitch_15
        :pswitch_17
    .end packed-switch
.end method

.method public a(Lcom/google/googlenav/a;)LaD/a;
    .registers 10

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    invoke-virtual {p1}, Lcom/google/googlenav/a;->c()Z

    move-result v0

    if-nez v0, :cond_a

    :goto_9
    return-object p0

    :cond_a
    iput-object p1, p0, LaD/a;->d:Lcom/google/googlenav/a;

    new-instance v0, Lam/b;

    sget-object v1, LbD/dB;->a:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    invoke-virtual {p1}, Lcom/google/googlenav/a;->b()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-virtual {v0, v5, v1, v2}, Lam/b;->b(IJ)V

    invoke-virtual {p1}, Lcom/google/googlenav/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Lam/b;->b(ILjava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/googlenav/a;->g()Z

    move-result v1

    if-eqz v1, :cond_36

    :try_start_2a
    invoke-virtual {p1}, Lcom/google/googlenav/a;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/googlenav/ax;->a(Ljava/lang/String;)J

    move-result-wide v1

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v1, v2}, Lam/b;->b(IJ)V
    :try_end_36
    .catch Ljava/lang/NumberFormatException; {:try_start_2a .. :try_end_36} :catch_60

    :cond_36
    :goto_36
    invoke-virtual {p1}, Lcom/google/googlenav/a;->f()Z

    move-result v1

    if-eqz v1, :cond_5a

    invoke-virtual {p1}, Lcom/google/googlenav/a;->a()Lam/b;

    move-result-object v1

    invoke-static {v1, v7}, Lam/g;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Las/b;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4e

    const/4 v3, 0x4

    invoke-virtual {v0, v3, v2}, Lam/b;->b(ILjava/lang/String;)V

    :cond_4e
    const/16 v2, 0x18

    invoke-static {v1, v2}, Lam/g;->h(Lam/b;I)Z

    move-result v1

    if-eqz v1, :cond_5a

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v5}, Lam/b;->a(II)V

    :cond_5a
    iget-object v1, p0, LaD/a;->b:Lam/b;

    invoke-virtual {v1, v6, v0}, Lam/b;->a(ILam/b;)V

    goto :goto_9

    :catch_60
    move-exception v1

    goto :goto_36
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 3

    iget-object v0, p0, LaD/a;->b:Lam/b;

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Lam/b;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 4

    sget-object v0, LbD/dB;->c:Lam/e;

    invoke-static {v0, p1}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    move-result-object v0

    iput-object v0, p0, LaD/a;->c:Lam/b;

    invoke-direct {p0}, LaD/a;->k()I

    move-result v0

    if-nez v0, :cond_27

    new-instance v0, LaD/n;

    iget-object v1, p0, LaD/a;->d:Lcom/google/googlenav/a;

    invoke-direct {v0, v1}, LaD/n;-><init>(Lcom/google/googlenav/a;)V

    iput-object v0, p0, LaD/a;->e:LaD/n;

    invoke-direct {p0}, LaD/a;->l()V

    iget-object v0, p0, LaD/a;->f:LaD/c;

    if-eqz v0, :cond_25

    iget-object v0, p0, LaD/a;->f:LaD/c;

    iget-object v1, p0, LaD/a;->e:LaD/n;

    invoke-interface {v0, v1}, LaD/c;->a(LaD/n;)V

    :cond_25
    :goto_25
    const/4 v0, 0x1

    return v0

    :cond_27
    new-instance v0, LaD/n;

    iget-object v1, p0, LaD/a;->d:Lcom/google/googlenav/a;

    invoke-direct {v0, v1}, LaD/n;-><init>(Lcom/google/googlenav/a;)V

    iput-object v0, p0, LaD/a;->e:LaD/n;

    goto :goto_25
.end method

.method public b()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LaD/a;->f:LaD/c;

    const/4 v1, 0x0

    iput-object v1, p0, LaD/a;->f:LaD/c;

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_15

    if-eqz v0, :cond_14

    invoke-direct {p0}, LaD/a;->k()I

    move-result v1

    if-nez v1, :cond_18

    iget-object v1, p0, LaD/a;->e:LaD/n;

    invoke-interface {v0, v1}, LaD/c;->b(LaD/n;)V

    :cond_14
    :goto_14
    return-void

    :catchall_15
    move-exception v0

    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v0

    :cond_18
    invoke-interface {v0}, LaD/c;->a()V

    goto :goto_14
.end method

.method public j_()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LaD/a;->f:LaD/c;

    const/4 v1, 0x0

    iput-object v1, p0, LaD/a;->f:LaD/c;

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_d

    if-eqz v0, :cond_c

    invoke-interface {v0}, LaD/c;->a()V

    :cond_c
    return-void

    :catchall_d
    move-exception v0

    :try_start_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw v0
.end method
