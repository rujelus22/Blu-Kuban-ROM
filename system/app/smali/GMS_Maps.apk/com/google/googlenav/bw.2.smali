.class public Lcom/google/googlenav/bw;
.super Lax/bq;


# static fields
.field private static a:Lcom/google/googlenav/bw;


# instance fields
.field private d:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/google/googlenav/android/ac;Lcom/google/googlenav/ui/wizard/hM;Lcom/google/googlenav/L;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lax/bq;-><init>(Lcom/google/googlenav/android/ac;Lcom/google/googlenav/ui/wizard/hM;Lax/f;)V

    iput-object v0, p0, Lcom/google/googlenav/bw;->d:Ljava/lang/String;

    return-void
.end method

.method public static a()Lcom/google/googlenav/bw;
    .registers 1

    sget-object v0, Lcom/google/googlenav/bw;->a:Lcom/google/googlenav/bw;

    return-object v0
.end method

.method public static a(Lcom/google/googlenav/android/ac;Lcom/google/googlenav/ui/wizard/hM;Lcom/google/googlenav/L;)Lcom/google/googlenav/bw;
    .registers 4

    new-instance v0, Lcom/google/googlenav/bw;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/googlenav/bw;-><init>(Lcom/google/googlenav/android/ac;Lcom/google/googlenav/ui/wizard/hM;Lcom/google/googlenav/L;)V

    sput-object v0, Lcom/google/googlenav/bw;->a:Lcom/google/googlenav/bw;

    sget-object v0, Lcom/google/googlenav/bw;->a:Lcom/google/googlenav/bw;

    return-object v0
.end method

.method public static a(Lam/b;)Ljava/lang/String;
    .registers 3

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lam/b;->k(I)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0, v1}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v0

    :goto_b
    return-object v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method static synthetic a(Lcom/google/googlenav/bw;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/bw;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    const/16 v0, 0x55

    const-string v1, "o"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "s="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "r="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Laf/m;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method static synthetic b(Lcom/google/googlenav/bw;)V
    .registers 1

    invoke-virtual {p0}, Lcom/google/googlenav/bw;->n()V

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .registers 4

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->n()Lak/m;

    move-result-object v1

    const-string v2, "RATINGS_USER_IDENTITY"

    if-eqz p0, :cond_1f

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    :goto_10
    invoke-interface {v1, v2, v0}, Lak/m;->a(Ljava/lang/String;[B)Z

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->n()Lak/m;

    move-result-object v0

    invoke-interface {v0}, Lak/m;->a()V

    return-void

    :cond_1f
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public static d(Lam/b;)Z
    .registers 3

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lam/b;->k(I)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0, v1}, Lam/b;->b(I)Z

    move-result v0

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static h()Ljava/lang/String;
    .registers 2

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->n()Lak/m;

    move-result-object v0

    const-string v1, "RATINGS_USER_IDENTITY"

    invoke-interface {v0, v1}, Lak/m;->a_(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_16

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    :goto_15
    return-object v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method


# virtual methods
.method protected A_()V
    .registers 6

    const/16 v0, 0x55

    const-string v1, "o"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "r=l"

    aput-object v4, v2, v3

    invoke-static {v2}, Laf/m;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public declared-synchronized E_()V
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-super {p0}, Lax/bq;->E_()V

    const/16 v0, 0x55

    const-string v1, "l"

    const-string v2, "s"

    invoke-static {v0, v1, v2}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-void

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized F_()V
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-super {p0}, Lax/bq;->F_()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/googlenav/bw;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/googlenav/aA;->a()Lcom/google/googlenav/aA;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/aA;->b()V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    monitor-exit p0

    return-void

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected a(Lcom/google/googlenav/ui/wizard/hM;Lcom/google/googlenav/android/ac;Lax/bq;)Lax/bu;
    .registers 5

    new-instance v0, Lcom/google/googlenav/by;

    invoke-direct {v0, p0, p1, p2, p0}, Lcom/google/googlenav/by;-><init>(Lcom/google/googlenav/bw;Lcom/google/googlenav/ui/wizard/hM;Lcom/google/googlenav/android/ac;Lax/bq;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    invoke-static {p1}, Lcom/google/googlenav/bw;->b(Ljava/lang/String;)V

    return-void
.end method

.method public c()V
    .registers 4

    invoke-virtual {p0}, Lcom/google/googlenav/bw;->m()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/googlenav/bw;->c:Lcom/google/googlenav/ui/wizard/hM;

    const/16 v1, 0x354

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x35a

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p0}, Lcom/google/googlenav/ui/wizard/hM;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/login/h;)V

    :cond_17
    return-void
.end method

.method protected c(Lam/b;)Z
    .registers 4

    const/4 v1, 0x7

    invoke-virtual {p1, v1}, Lam/b;->k(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p1, v1}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/bw;->a(Lam/b;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlenav/bw;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/googlenav/bw;->d(Lam/b;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/google/googlenav/bw;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/googlenav/bw;->b(Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method protected d()Ljava/lang/String;
    .registers 2

    const-string v0, "RATINGS_TERMS_ACCEPTED_SETTING"

    return-object v0
.end method

.method protected f()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public i()V
    .registers 4

    invoke-super {p0}, Lax/bq;->i()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/googlenav/bw;->b(Ljava/lang/String;)V

    const/16 v0, 0x55

    const-string v1, "l"

    const-string v2, "e"

    invoke-static {v0, v1, v2}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
