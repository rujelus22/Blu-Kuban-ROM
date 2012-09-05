.class LaZ/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/o;


# instance fields
.field final synthetic a:LaZ/b;


# direct methods
.method private constructor <init>(LaZ/b;)V
    .registers 2

    iput-object p1, p0, LaZ/l;->a:LaZ/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(LaZ/b;LaZ/c;)V
    .registers 3

    invoke-direct {p0, p1}, LaZ/l;-><init>(LaZ/b;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/n;Lcom/google/android/maps/driveabout/vector/m;)V
    .registers 14

    const/4 v3, 0x1

    const/4 v6, 0x0

    instance-of v0, p2, Lcom/google/android/maps/driveabout/vector/ae;

    if-eqz v0, :cond_cd

    iget-object v0, p0, LaZ/l;->a:LaZ/b;

    invoke-static {v0}, LaZ/b;->i(LaZ/b;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    :try_start_d
    iget-object v0, p0, LaZ/l;->a:LaZ/b;

    invoke-static {v0, p2}, LaZ/b;->a(LaZ/b;Lcom/google/android/maps/driveabout/vector/m;)Lcom/google/android/maps/driveabout/vector/m;

    check-cast p2, Lcom/google/android/maps/driveabout/vector/ae;

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/ae;->l()Lt/M;

    move-result-object v0

    invoke-virtual {v0}, Lt/M;->b()Z

    move-result v0

    if-eqz v0, :cond_ce

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/ae;->l()Lt/M;

    move-result-object v0

    invoke-virtual {v0}, Lt/M;->a()Lt/m;

    move-result-object v0

    invoke-virtual {v0}, Lt/m;->c()Ljava/lang/String;

    move-result-object v0

    :goto_2a
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/ae;->l()Lt/M;

    move-result-object v1

    invoke-virtual {v1}, Lt/M;->c()Lt/af;

    move-result-object v1

    instance-of v2, v1, Lt/z;

    if-eqz v2, :cond_40

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_40

    const-string v0, ""

    :cond_40
    new-instance v1, Lcom/google/googlenav/T;

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/ae;->m()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/ae;->l()Lt/M;

    move-result-object v5

    invoke-virtual {v5}, Lt/M;->d()Lt/L;

    move-result-object v5

    invoke-static {v5}, Lz/f;->b(Lt/L;)LaJ/B;

    move-result-object v5

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/ae;->l()Lt/M;

    move-result-object v8

    invoke-virtual {v8}, Lt/M;->f()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0xa

    const/16 v10, 0x20

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v4, v0, v5, v8}, Lcom/google/googlenav/T;-><init>(Ljava/lang/String;Ljava/lang/String;LaJ/B;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/ae;->l()Lt/M;

    move-result-object v0

    invoke-virtual {v0}, Lt/M;->m()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7a

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/ae;->l()Lt/M;

    move-result-object v0

    invoke-virtual {v0}, Lt/M;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/T;->a(Ljava/lang/String;)V

    :cond_7a
    if-eqz v2, :cond_8d

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/ae;->l()Lt/M;

    move-result-object v0

    invoke-virtual {v0}, Lt/M;->c()Lt/af;

    move-result-object v0

    check-cast v0, Lt/z;

    invoke-virtual {v0}, Lt/z;->a()Lt/y;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/T;->a(Lt/y;)V

    :cond_8d
    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Lcom/google/googlenav/T;->a(B)V

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/ae;->l()Lt/M;

    move-result-object v0

    invoke-virtual {v0}, Lt/M;->q()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/T;->f(I)V

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/ae;->l()Lt/M;

    move-result-object v0

    invoke-virtual {v0}, Lt/M;->y()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/T;->c(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, LaZ/l;->a:LaZ/b;

    invoke-virtual {v0}, LaZ/b;->I()LaY/i;

    move-result-object v0

    invoke-virtual {v0}, LaY/i;->ai()Z

    move-result v0

    if-eqz v0, :cond_c4

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v0

    if-eqz v0, :cond_c4

    move v6, v3

    :cond_c4
    iget-object v0, p0, LaZ/l;->a:LaZ/b;

    if-eqz v6, :cond_c9

    const/4 v3, 0x2

    :cond_c9
    invoke-virtual/range {v0 .. v5}, LaZ/b;->a(Lcom/google/googlenav/ah;ZBZZ)LaY/W;

    monitor-exit v7

    :cond_cd
    return-void

    :cond_ce
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/ae;->l()Lt/M;

    move-result-object v0

    invoke-virtual {v0}, Lt/M;->o()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2a

    :catchall_d8
    move-exception v0

    monitor-exit v7
    :try_end_da
    .catchall {:try_start_d .. :try_end_da} :catchall_d8

    throw v0
.end method
