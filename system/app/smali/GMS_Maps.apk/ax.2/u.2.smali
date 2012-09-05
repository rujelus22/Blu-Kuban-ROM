.class public Lax/u;
.super Lax/p;


# direct methods
.method public constructor <init>(Lax/bq;)V
    .registers 2

    invoke-direct {p0, p1}, Lax/p;-><init>(Lax/bq;)V

    return-void
.end method


# virtual methods
.method public b(Lam/b;)V
    .registers 5

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lax/p;->b(Lam/b;)V

    new-instance v0, Lax/aC;

    new-instance v1, Lax/w;

    invoke-direct {v1, v2}, Lax/w;-><init>(Lax/v;)V

    invoke-direct {v0, v2, v1}, Lax/aC;-><init>(Lcom/google/googlenav/android/ac;Lax/aE;)V

    invoke-virtual {v0, p1}, Lax/aC;->a(Lam/b;)V

    return-void
.end method

.method public c(Lam/b;)Z
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x3

    :try_start_2
    invoke-virtual {p1, v1}, Lam/b;->k(I)Z

    move-result v1

    if-nez v1, :cond_9

    :cond_8
    :goto_8
    return v0

    :cond_9
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Lam/b;->h(I)Lam/b;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lam/b;->k(I)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lam/b;->h(I)Lam/b;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lam/g;->h(Lam/b;I)Z
    :try_end_1e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_1e} :catch_22
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_1e} :catch_20

    move-result v0

    goto :goto_8

    :catch_20
    move-exception v1

    goto :goto_8

    :catch_22
    move-exception v1

    goto :goto_8
.end method
