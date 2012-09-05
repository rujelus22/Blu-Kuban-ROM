.class public Lcom/google/googlenav/bl;
.super Lax/bq;


# static fields
.field static final synthetic a:Z

.field private static d:Lcom/google/googlenav/bl;


# instance fields
.field private e:Lcom/google/googlenav/bn;

.field private f:Lcom/google/googlenav/bo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/google/googlenav/bl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/google/googlenav/bl;->a:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static declared-synchronized a()Lcom/google/googlenav/bl;
    .registers 2

    const-class v0, Lcom/google/googlenav/bl;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/googlenav/bl;->d:Lcom/google/googlenav/bl;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic a(Lcom/google/googlenav/bl;)Lcom/google/googlenav/bo;
    .registers 2

    invoke-direct {p0}, Lcom/google/googlenav/bl;->k()Lcom/google/googlenav/bo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/google/googlenav/bl;)V
    .registers 1

    invoke-virtual {p0}, Lcom/google/googlenav/bl;->n()V

    return-void
.end method

.method public static declared-synchronized b()Z
    .registers 2

    const-class v1, Lcom/google/googlenav/bl;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/googlenav/bl;->d:Lcom/google/googlenav/bl;
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

.method public static h()Lcom/google/googlenav/bn;
    .registers 1

    invoke-static {}, Lcom/google/googlenav/bl;->b()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    invoke-static {}, Lcom/google/googlenav/bl;->a()Lcom/google/googlenav/bl;

    move-result-object v0

    iget-object v0, v0, Lcom/google/googlenav/bl;->e:Lcom/google/googlenav/bn;

    goto :goto_7
.end method

.method private k()Lcom/google/googlenav/bo;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/bl;->f:Lcom/google/googlenav/bo;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized F_()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/google/googlenav/bl;->e:Lcom/google/googlenav/bn;

    invoke-static {}, Lcom/google/googlenav/bn;->d()V

    invoke-super {p0}, Lax/bq;->F_()V
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected a(Lcom/google/googlenav/ui/wizard/hM;Lcom/google/googlenav/android/ac;Lax/bq;)Lax/bu;
    .registers 10

    new-instance v0, Lcom/google/googlenav/bp;

    iget-object v5, p0, Lcom/google/googlenav/bl;->e:Lcom/google/googlenav/bn;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/bp;-><init>(Lcom/google/googlenav/bl;Lcom/google/googlenav/ui/wizard/hM;Lcom/google/googlenav/android/ac;Lax/bq;Lcom/google/googlenav/bn;)V

    return-object v0
.end method

.method public declared-synchronized a(Lam/b;)V
    .registers 3

    monitor-enter p0

    if-eqz p1, :cond_9

    :try_start_3
    invoke-static {p1}, Lcom/google/googlenav/bn;->a(Lam/b;)Lcom/google/googlenav/bn;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/bl;->e:Lcom/google/googlenav/bn;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    :cond_9
    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/google/googlenav/bo;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/bl;->f:Lcom/google/googlenav/bo;

    invoke-virtual {p0}, Lcom/google/googlenav/bl;->c()V

    return-void
.end method

.method protected b(Lam/b;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/googlenav/bl;->a(Lam/b;)V

    invoke-super {p0, p1}, Lax/bq;->b(Lam/b;)V

    return-void
.end method

.method public c()V
    .registers 4

    sget-boolean v0, Lcom/google/googlenav/bl;->a:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/google/googlenav/bl;->f:Lcom/google/googlenav/bo;

    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_e
    invoke-virtual {p0}, Lcom/google/googlenav/bl;->m()Z

    move-result v0

    if-eqz v0, :cond_2e

    const-string v0, ""

    sget-object v1, Lcom/google/googlenav/bm;->a:[I

    iget-object v2, p0, Lcom/google/googlenav/bl;->f:Lcom/google/googlenav/bo;

    invoke-virtual {v2}, Lcom/google/googlenav/bo;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_3a

    :goto_23
    iget-object v1, p0, Lcom/google/googlenav/bl;->c:Lcom/google/googlenav/ui/wizard/hM;

    const/16 v2, 0x35a

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2, p0}, Lcom/google/googlenav/ui/wizard/hM;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/login/h;)V

    :cond_2e
    return-void

    :pswitch_2f
    const/16 v0, 0x354

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_23

    :pswitch_36
    const-string v0, "to upload a photo"

    goto :goto_23

    nop

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_36
    .end packed-switch
.end method

.method protected c(Lam/b;)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lam/b;->c()Lam/e;

    move-result-object v2

    sget-object v3, LbD/dT;->i:Lam/e;

    if-eq v2, v3, :cond_d

    :cond_c
    :goto_c
    return v1

    :cond_d
    const/16 v2, 0xb

    invoke-virtual {p1, v2}, Lam/b;->h(I)Lam/b;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-virtual {v2, v0}, Lam/b;->k(I)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {v2, v0}, Lam/b;->b(I)Z

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lam/b;->k(I)Z

    move-result v2

    if-eqz v3, :cond_2a

    if-eqz v2, :cond_2a

    :goto_28
    move v1, v0

    goto :goto_c

    :cond_2a
    move v0, v1

    goto :goto_28
.end method

.method protected d()Ljava/lang/String;
    .registers 2

    const-string v0, "SPICY_TERMS_ACCEPTED"

    return-object v0
.end method

.method protected f()I
    .registers 2

    const/4 v0, 0x6

    return v0
.end method

.method public g()Ljava/util/List;
    .registers 4

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, LK/bn;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)LK/bn;

    move-result-object v0

    return-object v0
.end method
