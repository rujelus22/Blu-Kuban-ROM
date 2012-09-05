.class public LaR/b;
.super LaR/e;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/android/J;Lx/aF;Landroid/net/wifi/WifiManager$WifiLock;Lcom/google/googlenav/prefetch/android/PrefetcherService;Lcom/google/googlenav/prefetch/android/g;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, LaR/e;-><init>(Lcom/google/googlenav/android/J;Lx/aF;Landroid/net/wifi/WifiManager$WifiLock;Lcom/google/googlenav/prefetch/android/PrefetcherService;Lcom/google/googlenav/prefetch/android/g;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, LaR/b;->d:Lcom/google/googlenav/prefetch/android/PrefetcherService;

    invoke-virtual {v0}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->e()Z

    move-result v0

    if-nez v0, :cond_47

    move v0, v1

    :goto_b
    iget-object v3, p0, LaR/b;->b:Lx/aF;

    invoke-virtual {v3}, Lx/aF;->g()Z

    move-result v3

    invoke-static {}, Lcom/google/googlenav/android/J;->f()Z

    move-result v4

    if-eqz v0, :cond_1b

    if-eqz v3, :cond_1b

    if-nez v4, :cond_46

    :cond_1b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v0, :cond_49

    const-string v0, "r"

    :goto_24
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez v3, :cond_4c

    const-string v0, "c"

    :goto_2c
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez v4, :cond_4f

    const-string v0, "n"

    :goto_34
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, LaR/b;->d:Lcom/google/googlenav/prefetch/android/PrefetcherService;

    iget-object v3, p0, LaR/b;->e:Lcom/google/googlenav/prefetch/android/g;

    const-string v4, "n"

    invoke-virtual {v1, v3, v4, v0}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->a(Lcom/google/googlenav/prefetch/android/g;Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    :cond_46
    return v1

    :cond_47
    move v0, v2

    goto :goto_b

    :cond_49
    const-string v0, ""

    goto :goto_24

    :cond_4c
    const-string v0, ""

    goto :goto_2c

    :cond_4f
    const-string v0, ""

    goto :goto_34
.end method

.method public b()Z
    .registers 5

    iget-object v0, p0, LaR/b;->b:Lx/aF;

    invoke-virtual {v0}, Lx/aF;->g()Z

    move-result v0

    invoke-static {}, Lcom/google/googlenav/android/J;->f()Z

    move-result v1

    if-eqz v0, :cond_e

    if-nez v1, :cond_38

    :cond_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v0, :cond_32

    const-string v0, "c"

    :goto_17
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v1, :cond_35

    const-string v0, "n"

    :goto_1f
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, LaR/b;->d:Lcom/google/googlenav/prefetch/android/PrefetcherService;

    iget-object v2, p0, LaR/b;->e:Lcom/google/googlenav/prefetch/android/g;

    const-string v3, "u"

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->a(Lcom/google/googlenav/prefetch/android/g;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_31
    return v0

    :cond_32
    const-string v0, ""

    goto :goto_17

    :cond_35
    const-string v0, ""

    goto :goto_1f

    :cond_38
    const/4 v0, 0x1

    goto :goto_31
.end method
