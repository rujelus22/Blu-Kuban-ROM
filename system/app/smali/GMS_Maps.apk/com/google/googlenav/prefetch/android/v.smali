.class Lcom/google/googlenav/prefetch/android/v;
.super LY/b;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/prefetch/android/u;


# direct methods
.method constructor <init>(Lcom/google/googlenav/prefetch/android/u;LY/c;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/google/googlenav/prefetch/android/v;->a:Lcom/google/googlenav/prefetch/android/u;

    invoke-direct {p0, p2}, LY/b;-><init>(LY/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 13

    .prologue
    const/4 v2, 0x0

    .line 59
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/v;->a:Lcom/google/googlenav/prefetch/android/u;

    invoke-static {v0}, Lcom/google/googlenav/prefetch/android/u;->a(Lcom/google/googlenav/prefetch/android/u;)Ljava/util/List;

    move-result-object v3

    .line 60
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v4

    move v1, v2

    .line 61
    :goto_c
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2b

    .line 62
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/am;

    .line 63
    iget-object v5, p0, Lcom/google/googlenav/prefetch/android/v;->a:Lcom/google/googlenav/prefetch/android/u;

    invoke-static {v5}, Lcom/google/googlenav/prefetch/android/u;->b(Lcom/google/googlenav/prefetch/android/u;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_27

    .line 64
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    :cond_27
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_c

    .line 68
    :cond_2b
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 71
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/v;->a:Lcom/google/googlenav/prefetch/android/u;

    invoke-static {v0}, Lcom/google/googlenav/prefetch/android/u;->c(Lcom/google/googlenav/prefetch/android/u;)Lcom/google/googlenav/prefetch/android/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/prefetch/android/w;->a()V

    .line 120
    :goto_3a
    return-void

    .line 76
    :cond_3b
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 79
    const/16 v0, 0x4e

    const-string v1, "rg"

    const-string v5, ""

    invoke-static {v0, v1, v5}, LaT/p;->a(ILjava/lang/String;Ljava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v5

    .line 81
    invoke-static {v5}, LaT/p;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 84
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v6

    move v1, v2

    .line 85
    :goto_56
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_ba

    .line 86
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/am;

    .line 87
    invoke-virtual {v0}, Ln/am;->h()Ln/aa;

    move-result-object v7

    invoke-virtual {v7}, Ln/aa;->f()Ln/Q;

    move-result-object v7

    .line 88
    new-instance v8, Lcom/google/googlenav/prefetch/android/x;

    invoke-direct {v8, v3}, Lcom/google/googlenav/prefetch/android/x;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    .line 89
    const/16 v9, 0x2710

    .line 92
    new-instance v10, Lcom/google/googlenav/friend/bi;

    invoke-direct {v10}, Lcom/google/googlenav/friend/bi;-><init>()V

    invoke-virtual {v7}, Ln/Q;->a()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/google/googlenav/friend/bi;->a(I)Lcom/google/googlenav/friend/bi;

    move-result-object v10

    invoke-virtual {v7}, Ln/Q;->c()I

    move-result v7

    invoke-virtual {v10, v7}, Lcom/google/googlenav/friend/bi;->b(I)Lcom/google/googlenav/friend/bi;

    move-result-object v7

    invoke-virtual {v7, v9}, Lcom/google/googlenav/friend/bi;->d(I)Lcom/google/googlenav/friend/bi;

    move-result-object v7

    invoke-virtual {v7, v9}, Lcom/google/googlenav/friend/bi;->e(I)Lcom/google/googlenav/friend/bi;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/google/googlenav/friend/bi;->a(Lcom/google/googlenav/friend/bh;)Lcom/google/googlenav/friend/bi;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/google/googlenav/friend/bi;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/friend/bi;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/googlenav/friend/bi;->a()Lcom/google/googlenav/friend/bg;

    move-result-object v7

    .line 99
    iget-object v9, p0, Lcom/google/googlenav/prefetch/android/v;->a:Lcom/google/googlenav/prefetch/android/u;

    invoke-static {v9}, Lcom/google/googlenav/prefetch/android/u;->b(Lcom/google/googlenav/prefetch/android/u;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_b5

    .line 103
    invoke-virtual {v7, v2}, Lcom/google/googlenav/friend/bg;->a(Z)V

    .line 107
    :goto_ae
    invoke-virtual {v6, v7}, Lac/h;->c(Lac/g;)V

    .line 85
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_56

    .line 105
    :cond_b5
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Lcom/google/googlenav/friend/bg;->a(Z)V

    goto :goto_ae

    .line 113
    :cond_ba
    const-wide/16 v0, 0x1e

    :try_start_bc
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v0, v1, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_c1
    .catch Ljava/lang/InterruptedException; {:try_start_bc .. :try_end_c1} :catch_cc

    .line 119
    :goto_c1
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/v;->a:Lcom/google/googlenav/prefetch/android/u;

    invoke-static {v0}, Lcom/google/googlenav/prefetch/android/u;->c(Lcom/google/googlenav/prefetch/android/u;)Lcom/google/googlenav/prefetch/android/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/prefetch/android/w;->a()V

    goto/16 :goto_3a

    .line 114
    :catch_cc
    move-exception v0

    goto :goto_c1
.end method
