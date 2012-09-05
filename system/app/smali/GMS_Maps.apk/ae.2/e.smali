.class Lae/e;
.super Lat/a;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 3

    invoke-direct {p0}, Lat/a;-><init>()V

    iput-object p1, p0, Lae/e;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lae/e;->b:Z

    return-void
.end method

.method static synthetic a(Lae/e;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lae/e;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0x4b

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 11

    const/4 v8, -0x1

    new-instance v1, Lam/b;

    sget-object v0, LbD/z;->a:Lam/e;

    invoke-direct {v1, v0}, Lam/b;-><init>(Lam/e;)V

    const-class v2, Lae/d;

    monitor-enter v2

    :try_start_b
    invoke-static {}, Lae/d;->g()Lam/b;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lam/b;->l(I)I

    move-result v3

    const/4 v0, 0x0

    :goto_15
    if-ge v0, v3, :cond_4a

    invoke-static {}, Lae/d;->g()Lam/b;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v4

    new-instance v5, Lam/b;

    sget-object v6, LbD/z;->d:Lam/e;

    invoke-direct {v5, v6}, Lam/b;-><init>(Lam/e;)V

    const/4 v6, 0x1

    const/4 v7, -0x1

    invoke-static {v4, v6, v7}, Lam/g;->c(Lam/b;II)I

    move-result v6

    if-eq v6, v8, :cond_33

    const/4 v7, 0x1

    invoke-virtual {v5, v7, v6}, Lam/b;->h(II)V

    :cond_33
    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Lam/b;->k(I)Z

    move-result v6

    if-eqz v6, :cond_43

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Lam/b;->e(I)J

    move-result-wide v6

    const/4 v4, 0x2

    invoke-virtual {v5, v4, v6, v7}, Lam/b;->b(IJ)V

    :cond_43
    const/4 v4, 0x1

    invoke-virtual {v1, v4, v5}, Lam/b;->a(ILam/b;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_4a
    monitor-exit v2
    :try_end_4b
    .catchall {:try_start_b .. :try_end_4b} :catchall_54

    invoke-static {v1}, Lae/d;->a(Lam/b;)V

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Lam/b;->a(Ljava/io/OutputStream;)V

    return-void

    :catchall_54
    move-exception v0

    :try_start_55
    monitor-exit v2
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    throw v0
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 10

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-object v2, LbD/z;->c:Lam/e;

    invoke-static {v2, p1}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    move-result-object v3

    invoke-virtual {v3, v1}, Lam/b;->l(I)I

    move-result v4

    const-class v5, Lae/d;

    monitor-enter v5

    move v2, v0

    :goto_10
    if-ge v2, v4, :cond_2b

    const/4 v6, 0x1

    :try_start_13
    invoke-virtual {v3, v6, v2}, Lam/b;->e(II)Lam/b;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lam/b;->k(I)Z

    move-result v7

    if-eqz v7, :cond_28

    invoke-static {v6}, Lae/d;->b(Lam/b;)Z

    move-result v7

    if-eqz v7, :cond_28

    invoke-static {v6}, Lae/d;->c(Lam/b;)V

    move v0, v1

    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_2b
    if-eqz v0, :cond_36

    invoke-static {}, Lae/d;->g()Lam/b;

    move-result-object v2

    iget-object v3, p0, Lae/e;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Lae/d;->a(Lam/b;Ljava/lang/String;)Z

    :cond_36
    monitor-exit v5
    :try_end_37
    .catchall {:try_start_13 .. :try_end_37} :catchall_6d

    if-nez v0, :cond_3d

    iget-boolean v0, p0, Lae/e;->b:Z

    if-nez v0, :cond_4c

    :cond_3d
    invoke-static {}, Lae/d;->h()Lae/g;

    move-result-object v0

    if-eqz v0, :cond_4c

    invoke-static {}, Lae/d;->i()Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-interface {v0}, Lae/g;->a()V

    :cond_4c
    invoke-static {}, Lae/d;->i()Z

    move-result v0

    if-eqz v0, :cond_6c

    invoke-static {}, Lae/d;->j()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    const/4 v0, 0x0

    :try_start_58
    invoke-static {v0}, Lae/d;->a(Z)Z

    invoke-static {}, Lae/d;->k()Z

    move-result v0

    if-eqz v0, :cond_70

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v0

    iget-object v3, p0, Lae/e;->a:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Lae/d;->a(Lat/h;Ljava/lang/String;Z)V

    :goto_6b
    monitor-exit v2
    :try_end_6c
    .catchall {:try_start_58 .. :try_end_6c} :catchall_8e

    :cond_6c
    return v1

    :catchall_6d
    move-exception v0

    :try_start_6e
    monitor-exit v5
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_6d

    throw v0

    :cond_70
    :try_start_70
    new-instance v0, Lae/f;

    invoke-static {}, Lcom/google/googlenav/bD;->a()Lap/c;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Lae/f;-><init>(Lae/e;Lap/c;)V

    invoke-static {v0}, Lae/d;->a(Lap/d;)Lap/d;

    invoke-static {}, Lae/d;->l()Lap/d;

    move-result-object v0

    const-wide/32 v3, 0xa4cb80

    invoke-virtual {v0, v3, v4}, Lap/d;->a(J)V

    invoke-static {}, Lae/d;->l()Lap/d;

    move-result-object v0

    invoke-virtual {v0}, Lap/d;->g()V

    goto :goto_6b

    :catchall_8e
    move-exception v0

    monitor-exit v2
    :try_end_90
    .catchall {:try_start_70 .. :try_end_90} :catchall_8e

    throw v0
.end method

.method public c_()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public l_()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
