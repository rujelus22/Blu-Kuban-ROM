.class public Lax/au;
.super Lax/bq;


# static fields
.field private static a:Lax/au;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/android/ac;Lcom/google/googlenav/ui/wizard/hM;Lcom/google/googlenav/L;)V
    .registers 7

    new-instance v0, Lax/g;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lax/g;-><init>(IZ)V

    invoke-direct {p0, p1, p2, v0}, Lax/bq;-><init>(Lcom/google/googlenav/android/ac;Lcom/google/googlenav/ui/wizard/hM;Lax/f;)V

    return-void
.end method

.method public static declared-synchronized a(Lcom/google/googlenav/android/ac;Lcom/google/googlenav/ui/wizard/hM;Lcom/google/googlenav/L;)Lax/au;
    .registers 5

    const-class v1, Lax/au;

    monitor-enter v1

    :try_start_3
    new-instance v0, Lax/au;

    invoke-direct {v0, p0, p1, p2}, Lax/au;-><init>(Lcom/google/googlenav/android/ac;Lcom/google/googlenav/ui/wizard/hM;Lcom/google/googlenav/L;)V

    sput-object v0, Lax/au;->a:Lax/au;

    sget-object v0, Lax/au;->a:Lax/au;
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    monitor-exit v1

    return-object v0

    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static h()Lax/au;
    .registers 1

    sget-object v0, Lax/au;->a:Lax/au;

    return-object v0
.end method

.method public static declared-synchronized k()Z
    .registers 2

    const-class v1, Lax/au;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lax/au;->a:Lax/au;
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

    const-string v0, "GOOGLE_PLUS_TERMS_ACCEPTED_SETTING"

    invoke-static {v0}, Lax/au;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected A_()V
    .registers 4

    const/16 v0, 0x5b

    const-string v1, "co"

    const-string v2, "ol"

    invoke-static {v0, v1, v2}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method protected a(Lcom/google/googlenav/ui/wizard/hM;Lcom/google/googlenav/android/ac;Lax/bq;)Lax/bu;
    .registers 5

    new-instance v0, Lax/av;

    invoke-direct {v0, p1, p2, p0}, Lax/av;-><init>(Lcom/google/googlenav/ui/wizard/hM;Lcom/google/googlenav/android/ac;Lax/bq;)V

    return-object v0
.end method

.method public c()V
    .registers 7

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lax/au;->m()Z

    move-result v0

    if-eqz v0, :cond_2f

    const/16 v0, 0x307

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lax/au;->c:Lcom/google/googlenav/ui/wizard/hM;

    const/16 v2, 0x31c

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/String;

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x31d

    invoke-static {v3}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/String;

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0, p0}, Lcom/google/googlenav/ui/wizard/hM;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/login/h;)V

    :cond_2f
    return-void
.end method

.method protected c(Lam/b;)Z
    .registers 4

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lam/b;->k(I)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    invoke-virtual {p1, v1}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lam/b;->b(I)Z

    move-result v0

    goto :goto_9
.end method

.method protected d()Ljava/lang/String;
    .registers 2

    const-string v0, "GOOGLE_PLUS_TERMS_ACCEPTED_SETTING"

    return-object v0
.end method

.method protected f()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
