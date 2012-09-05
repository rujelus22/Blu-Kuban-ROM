.class public abstract Lax/bq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/login/h;


# instance fields
.field private final a:Ljava/util/Vector;

.field protected final b:Lcom/google/googlenav/android/ac;

.field protected final c:Lcom/google/googlenav/ui/wizard/hM;

.field private final d:Lax/f;

.field private volatile e:Z

.field private volatile f:Z

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/android/ac;Lcom/google/googlenav/ui/wizard/hM;Lax/f;)V
    .registers 6

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lax/bq;->a:Ljava/util/Vector;

    iput-boolean v1, p0, Lax/bq;->e:Z

    iput-boolean v1, p0, Lax/bq;->f:Z

    iput-object p1, p0, Lax/bq;->b:Lcom/google/googlenav/android/ac;

    iput-object p2, p0, Lax/bq;->c:Lcom/google/googlenav/ui/wizard/hM;

    iput-object p3, p0, Lax/bq;->d:Lax/f;

    return-void
.end method

.method public static a(ZLjava/lang/String;)V
    .registers 4

    if-eqz p0, :cond_1e

    const/4 v0, 0x1

    :goto_3
    invoke-static {v0}, Lar/e;->a(I)[B

    move-result-object v0

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v1

    invoke-virtual {v1}, Laf/b;->n()Lak/m;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lak/m;->a(Ljava/lang/String;[B)Z

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->n()Lak/m;

    move-result-object v0

    invoke-interface {v0}, Lak/m;->a()V

    return-void

    :cond_1e
    const/4 v0, 0x0

    goto :goto_3
.end method

.method static synthetic a(Lax/bq;Z)Z
    .registers 2

    iput-boolean p1, p0, Lax/bq;->e:Z

    return p1
.end method

.method private static b(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v2

    invoke-virtual {v2}, Laf/b;->n()Lak/m;

    move-result-object v2

    invoke-interface {v2, p0}, Lak/m;->a_(Ljava/lang/String;)[B

    move-result-object v2

    if-eqz v2, :cond_1d

    array-length v3, v2

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1d

    invoke-static {v2}, Lar/e;->a([B)I

    move-result v2

    :goto_18
    if-ne v2, v0, :cond_1b

    :goto_1a
    return v0

    :cond_1b
    move v0, v1

    goto :goto_1a

    :cond_1d
    move v2, v1

    goto :goto_18
.end method

.method public static c(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Lax/bq;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/login/g;->k()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7
.end method

.method private declared-synchronized d(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lax/bq;->h:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized h()V
    .registers 4

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lax/bq;->e:Z

    iget-object v0, p0, Lax/bq;->b:Lcom/google/googlenav/android/ac;

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    iget-object v1, p0, Lax/bq;->b:Lcom/google/googlenav/android/ac;

    new-instance v2, Lax/br;

    invoke-direct {v2, p0}, Lax/br;-><init>(Lax/bq;)V

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/ac;->a(Ljava/lang/Runnable;Z)V
    :try_end_13
    .catchall {:try_start_2 .. :try_end_13} :catchall_15

    :cond_13
    monitor-exit p0

    return-void

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private k()Ljava/util/List;
    .registers 3

    iget-object v1, p0, Lax/bq;->a:Ljava/util/Vector;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lax/bq;->a:Ljava/util/Vector;

    invoke-static {v0}, LK/bn;->a(Ljava/util/Collection;)LK/bn;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method


# virtual methods
.method protected A_()V
    .registers 1

    return-void
.end method

.method public declared-synchronized B_()V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lax/bq;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lax/bq;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-direct {p0}, Lax/bq;->k()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/login/i;

    invoke-interface {v0}, Lcom/google/googlenav/login/i;->B_()V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_23

    goto :goto_13

    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_26
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized C_()V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lax/bq;->k()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/login/i;

    invoke-interface {v0}, Lcom/google/googlenav/login/i;->C_()V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_19

    goto :goto_9

    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1c
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized E_()V
    .registers 5

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lax/bq;->e:Z

    new-instance v0, Lax/bv;

    invoke-virtual {p0}, Lax/bq;->g()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lax/bt;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lax/bt;-><init>(Lax/bq;Lax/br;)V

    invoke-direct {v0, v1, v2}, Lax/bv;-><init>(Ljava/util/List;Lax/bw;)V

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lat/h;->c(Lat/g;)V
    :try_end_1a
    .catchall {:try_start_2 .. :try_end_1a} :catchall_1c

    monitor-exit p0

    return-void

    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized F_()V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0}, Lax/bq;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lax/bq;->a(ZLjava/lang/String;)V

    invoke-virtual {p0}, Lax/bq;->p()Lax/f;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lax/bq;->p()Lax/f;

    move-result-object v0

    invoke-interface {v0}, Lax/f;->a()V

    :cond_16
    const/4 v0, 0x0

    iput-object v0, p0, Lax/bq;->g:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lax/bq;->e:Z

    invoke-direct {p0}, Lax/bq;->k()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/login/i;

    invoke-interface {v0}, Lcom/google/googlenav/login/i;->F_()V
    :try_end_33
    .catchall {:try_start_2 .. :try_end_33} :catchall_34

    goto :goto_24

    :catchall_34
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_37
    monitor-exit p0

    return-void
.end method

.method protected abstract a(Lcom/google/googlenav/ui/wizard/hM;Lcom/google/googlenav/android/ac;Lax/bq;)Lax/bu;
.end method

.method public a(Lcom/google/googlenav/login/i;)V
    .registers 3

    iget-object v0, p0, Lax/bq;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method protected b(Lam/b;)V
    .registers 4

    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/login/g;->k()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-direct {p0}, Lax/bq;->h()V

    :goto_d
    return-void

    :cond_e
    invoke-virtual {p0, p1}, Lax/bq;->e(Lam/b;)V

    invoke-virtual {p0, p1}, Lax/bq;->c(Lam/b;)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lax/bq;->n()V

    goto :goto_d

    :cond_1b
    iget-object v0, p0, Lax/bq;->c:Lcom/google/googlenav/ui/wizard/hM;

    iget-object v1, p0, Lax/bq;->b:Lcom/google/googlenav/android/ac;

    invoke-virtual {p0, v0, v1, p0}, Lax/bq;->a(Lcom/google/googlenav/ui/wizard/hM;Lcom/google/googlenav/android/ac;Lax/bq;)Lax/bu;

    move-result-object v0

    invoke-virtual {v0}, Lax/bu;->a()V

    goto :goto_d
.end method

.method public b(Lcom/google/googlenav/login/i;)V
    .registers 3

    iget-object v0, p0, Lax/bq;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    return-void
.end method

.method protected abstract c(Lam/b;)Z
.end method

.method protected abstract d()Ljava/lang/String;
.end method

.method protected e(Lam/b;)V
    .registers 4

    const/4 v0, 0x6

    invoke-static {p1, v0}, Lam/g;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    invoke-direct {p0, v0}, Lax/bq;->d(Ljava/lang/String;)V

    :cond_e
    return-void
.end method

.method protected abstract f()I
.end method

.method protected g()Ljava/util/List;
    .registers 2

    invoke-virtual {p0}, Lax/bq;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, LK/bn;->a(Ljava/lang/Object;)LK/bn;

    move-result-object v0

    return-object v0
.end method

.method public i()V
    .registers 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Lax/bq;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lax/bq;->a(ZLjava/lang/String;)V

    invoke-direct {p0}, Lax/bq;->k()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/login/i;

    invoke-interface {v0}, Lcom/google/googlenav/login/i;->i()V

    goto :goto_10

    :cond_20
    iget-object v0, p0, Lax/bq;->b:Lcom/google/googlenav/android/ac;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lax/bq;->b:Lcom/google/googlenav/android/ac;

    new-instance v1, Lax/bs;

    invoke-direct {v1, p0}, Lax/bs;-><init>(Lax/bq;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/android/ac;->a(Ljava/lang/Runnable;Z)V

    :cond_2e
    return-void
.end method

.method protected m()Z
    .registers 2

    iget-object v0, p0, Lax/bq;->c:Lcom/google/googlenav/ui/wizard/hM;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected declared-synchronized n()V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lax/bq;->A_()V

    const/4 v0, 0x1

    invoke-virtual {p0}, Lax/bq;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lax/bq;->a(ZLjava/lang/String;)V

    invoke-virtual {p0}, Lax/bq;->p()Lax/f;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lax/bq;->p()Lax/f;

    move-result-object v0

    invoke-interface {v0}, Lax/f;->b()V

    :cond_19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lax/bq;->e:Z

    invoke-direct {p0}, Lax/bq;->k()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/login/i;

    invoke-interface {v0}, Lcom/google/googlenav/login/i;->E_()V
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_34

    goto :goto_24

    :catchall_34
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_37
    monitor-exit p0

    return-void
.end method

.method public o()Z
    .registers 2

    iget-boolean v0, p0, Lax/bq;->e:Z

    return v0
.end method

.method protected p()Lax/f;
    .registers 2

    iget-object v0, p0, Lax/bq;->d:Lax/f;

    return-object v0
.end method

.method public q()Z
    .registers 2

    invoke-virtual {p0}, Lax/bq;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lax/bq;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected r()Z
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lax/bq;->p()Lax/f;

    move-result-object v1

    if-nez v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    iget-boolean v1, p0, Lax/bq;->f:Z

    if-nez v1, :cond_7

    invoke-virtual {p0}, Lax/bq;->o()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p0}, Lax/bq;->q()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p0}, Lax/bq;->p()Lax/f;

    move-result-object v1

    invoke-interface {v1}, Lax/f;->c()Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v0, 0x1

    goto :goto_7
.end method
