.class public Lax/aa;
.super Lax/bq;


# static fields
.field private static a:Lax/aa;


# instance fields
.field private d:LaY/Y;

.field private e:I


# direct methods
.method constructor <init>(Lcom/google/googlenav/android/ac;Lcom/google/googlenav/ui/wizard/hM;Lcom/google/googlenav/L;)V
    .registers 7

    new-instance v0, Lax/g;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lax/g;-><init>(IZ)V

    invoke-direct {p0, p1, p2, v0}, Lax/bq;-><init>(Lcom/google/googlenav/android/ac;Lcom/google/googlenav/ui/wizard/hM;Lax/f;)V

    const/4 v0, -0x1

    iput v0, p0, Lax/aa;->e:I

    return-void
.end method

.method public static declared-synchronized a(Lcom/google/googlenav/android/ac;Lcom/google/googlenav/ui/wizard/hM;Lcom/google/googlenav/L;)Lax/aa;
    .registers 5

    const-class v1, Lax/aa;

    monitor-enter v1

    :try_start_3
    new-instance v0, Lax/aa;

    invoke-direct {v0, p0, p1, p2}, Lax/aa;-><init>(Lcom/google/googlenav/android/ac;Lcom/google/googlenav/ui/wizard/hM;Lcom/google/googlenav/L;)V

    sput-object v0, Lax/aa;->a:Lax/aa;

    sget-object v0, Lax/aa;->a:Lax/aa;
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    monitor-exit v1

    return-object v0

    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized b(Lcom/google/googlenav/android/ac;Lcom/google/googlenav/ui/wizard/hM;Lcom/google/googlenav/L;)Lax/aa;
    .registers 5

    const-class v1, Lax/aa;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lax/aa;->k()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p0, p1, p2}, Lax/aa;->a(Lcom/google/googlenav/android/ac;Lcom/google/googlenav/ui/wizard/hM;Lcom/google/googlenav/L;)Lax/aa;

    :cond_c
    invoke-static {}, Lax/aa;->h()Lax/aa;
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_12

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized h()Lax/aa;
    .registers 2

    const-class v0, Lax/aa;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lax/aa;->a:Lax/aa;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized k()Z
    .registers 2

    const-class v1, Lax/aa;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lax/aa;->a:Lax/aa;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_c

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_8
    monitor-exit v1

    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_8

    :catchall_c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static l()Z
    .registers 1

    const-string v0, "TERMS_ACCEPTED_SETTING"

    invoke-static {v0}, Lax/aa;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected A_()V
    .registers 4

    const/16 v0, 0x3d

    const-string v1, "a"

    const-string v2, "s"

    invoke-static {v0, v1, v2}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public declared-synchronized E_()V
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-static {}, Lax/aa;->l()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    iget-object v1, p0, Lax/aa;->b:Lcom/google/googlenav/android/ac;

    new-instance v2, Lax/ab;

    invoke-direct {v2, p0}, Lax/ab;-><init>(Lax/aa;)V

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/ac;->a(Ljava/lang/Runnable;Z)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_18

    :goto_12
    monitor-exit p0

    return-void

    :cond_14
    :try_start_14
    invoke-super {p0}, Lax/bq;->E_()V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_18

    goto :goto_12

    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized F_()V
    .registers 6

    monitor-enter p0

    :try_start_1
    invoke-super {p0}, Lax/bq;->F_()V

    iget-object v0, p0, Lax/aa;->d:LaY/Y;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lax/aa;->d:LaY/Y;

    invoke-virtual {v0}, LaY/Y;->B()LaY/K;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lax/aa;->d:LaY/Y;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, LaY/Y;->d(I)V

    :cond_16
    iget-object v0, p0, Lax/aa;->d:LaY/Y;

    invoke-virtual {v0}, LaY/Y;->ac()LaY/a;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, LaY/a;->a(ILcom/google/googlenav/E;Lcom/google/googlenav/android/ac;LaY/g;)V

    iget-object v0, p0, Lax/aa;->d:LaY/Y;

    invoke-virtual {v0}, LaY/Y;->ad()LaX/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LaX/a;->a(Lax/bz;)V

    invoke-static {}, Lax/aO;->h()V
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_32

    :cond_30
    monitor-exit p0

    return-void

    :catchall_32
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected a(Lcom/google/googlenav/ui/wizard/hM;Lcom/google/googlenav/android/ac;Lax/bq;)Lax/bu;
    .registers 10

    const/4 v1, -0x1

    iget-object v0, p0, Lax/aa;->d:LaY/Y;

    invoke-virtual {v0}, LaY/Y;->ab()I

    move-result v5

    iget v0, p0, Lax/aa;->e:I

    if-eq v0, v1, :cond_f

    iget v5, p0, Lax/aa;->e:I

    iput v1, p0, Lax/aa;->e:I

    :cond_f
    new-instance v0, Lax/ac;

    iget-object v1, p0, Lax/aa;->d:LaY/Y;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lax/ac;-><init>(LaY/Y;Lcom/google/googlenav/ui/wizard/hM;Lcom/google/googlenav/android/ac;Lax/bq;I)V

    return-object v0
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lax/aa;->e:I

    return-void
.end method

.method public a(LaY/Y;)V
    .registers 2

    iput-object p1, p0, Lax/aa;->d:LaY/Y;

    return-void
.end method

.method public c()V
    .registers 4

    invoke-virtual {p0}, Lax/aa;->m()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lax/aa;->c:Lcom/google/googlenav/ui/wizard/hM;

    const/16 v1, 0x184

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1a2

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p0}, Lcom/google/googlenav/ui/wizard/hM;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/login/h;)V

    :cond_17
    return-void
.end method

.method protected c(Lam/b;)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Lam/b;->h(I)Lam/b;

    move-result-object v2

    invoke-virtual {v2, v0}, Lam/b;->h(I)Lam/b;

    move-result-object v2

    const/4 v3, 0x2

    :try_start_c
    iget v4, p0, Lax/aa;->e:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_21

    if-eqz v2, :cond_21

    invoke-virtual {v2, v3}, Lam/b;->k(I)Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-virtual {v2, v3}, Lam/b;->b(I)Z
    :try_end_1c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_1c} :catch_25
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_1c} :catch_23

    move-result v2

    if-eqz v2, :cond_21

    :goto_1f
    move v1, v0

    :goto_20
    return v1

    :cond_21
    move v0, v1

    goto :goto_1f

    :catch_23
    move-exception v0

    goto :goto_20

    :catch_25
    move-exception v0

    goto :goto_20
.end method

.method protected d()Ljava/lang/String;
    .registers 2

    const-string v0, "TERMS_ACCEPTED_SETTING"

    return-object v0
.end method

.method protected f()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method
