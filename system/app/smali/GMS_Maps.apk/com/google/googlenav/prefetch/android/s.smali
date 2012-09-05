.class Lcom/google/googlenav/prefetch/android/s;
.super Lap/b;


# instance fields
.field final synthetic a:Lcom/google/googlenav/prefetch/android/t;

.field final synthetic e:Lcom/google/googlenav/prefetch/android/p;


# direct methods
.method constructor <init>(Lcom/google/googlenav/prefetch/android/p;Lap/c;Lcom/google/googlenav/prefetch/android/t;)V
    .registers 4

    iput-object p1, p0, Lcom/google/googlenav/prefetch/android/s;->e:Lcom/google/googlenav/prefetch/android/p;

    iput-object p3, p0, Lcom/google/googlenav/prefetch/android/s;->a:Lcom/google/googlenav/prefetch/android/t;

    invoke-direct {p0, p2}, Lap/b;-><init>(Lap/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 13

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/s;->e:Lcom/google/googlenav/prefetch/android/p;

    invoke-virtual {v0}, Lcom/google/googlenav/prefetch/android/p;->c()Ljava/util/Vector;

    move-result-object v3

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v4

    move v1, v2

    :goto_c
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_2b

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/af;

    iget-object v5, p0, Lcom/google/googlenav/prefetch/android/s;->e:Lcom/google/googlenav/prefetch/android/p;

    invoke-static {v5}, Lcom/google/googlenav/prefetch/android/p;->a(Lcom/google/googlenav/prefetch/android/p;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_27

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_27
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_c

    :cond_2b
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/s;->a:Lcom/google/googlenav/prefetch/android/t;

    invoke-interface {v0}, Lcom/google/googlenav/prefetch/android/t;->a()V

    :goto_36
    return-void

    :cond_37
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    const/16 v0, 0x4e

    const-string v1, "rg"

    const-string v5, ""

    invoke-static {v0, v1, v5}, Laf/o;->a(ILjava/lang/String;Ljava/lang/String;)Lam/b;

    move-result-object v5

    invoke-static {v5}, Laf/o;->a(Lam/b;)V

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v6

    move v1, v2

    :goto_52
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_b6

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/af;

    invoke-virtual {v0}, Lt/af;->i()Lt/V;

    move-result-object v7

    invoke-virtual {v7}, Lt/V;->f()Lt/L;

    move-result-object v7

    new-instance v8, Lcom/google/googlenav/prefetch/android/u;

    invoke-direct {v8, v3}, Lcom/google/googlenav/prefetch/android/u;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    const/16 v9, 0x2710

    new-instance v10, Lax/bo;

    invoke-direct {v10}, Lax/bo;-><init>()V

    invoke-virtual {v7}, Lt/L;->a()I

    move-result v11

    invoke-virtual {v10, v11}, Lax/bo;->a(I)Lax/bo;

    move-result-object v10

    invoke-virtual {v7}, Lt/L;->c()I

    move-result v7

    invoke-virtual {v10, v7}, Lax/bo;->b(I)Lax/bo;

    move-result-object v7

    invoke-virtual {v7, v9}, Lax/bo;->c(I)Lax/bo;

    move-result-object v7

    invoke-virtual {v7, v9}, Lax/bo;->d(I)Lax/bo;

    move-result-object v7

    invoke-virtual {v7, v8}, Lax/bo;->a(Lax/bn;)Lax/bo;

    move-result-object v7

    invoke-virtual {v7, v5}, Lax/bo;->a(Lam/b;)Lax/bo;

    move-result-object v7

    invoke-virtual {v7}, Lax/bo;->a()Lax/bm;

    move-result-object v7

    iget-object v9, p0, Lcom/google/googlenav/prefetch/android/s;->e:Lcom/google/googlenav/prefetch/android/p;

    invoke-static {v9}, Lcom/google/googlenav/prefetch/android/p;->a(Lcom/google/googlenav/prefetch/android/p;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_b1

    invoke-virtual {v7, v2}, Lax/bm;->a(Z)V

    :goto_aa
    invoke-virtual {v6, v7}, Lat/h;->c(Lat/g;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_52

    :cond_b1
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Lax/bm;->a(Z)V

    goto :goto_aa

    :cond_b6
    const-wide/16 v0, 0x1e

    :try_start_b8
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v0, v1, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_bd
    .catch Ljava/lang/InterruptedException; {:try_start_b8 .. :try_end_bd} :catch_c4

    :goto_bd
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/s;->a:Lcom/google/googlenav/prefetch/android/t;

    invoke-interface {v0}, Lcom/google/googlenav/prefetch/android/t;->a()V

    goto/16 :goto_36

    :catch_c4
    move-exception v0

    goto :goto_bd
.end method
