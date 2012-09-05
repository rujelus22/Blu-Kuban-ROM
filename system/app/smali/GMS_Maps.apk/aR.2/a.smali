.class public LaR/a;
.super LaR/e;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/android/J;Lx/aF;Landroid/net/wifi/WifiManager$WifiLock;Lcom/google/googlenav/prefetch/android/PrefetcherService;Lcom/google/googlenav/prefetch/android/g;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, LaR/e;-><init>(Lcom/google/googlenav/android/J;Lx/aF;Landroid/net/wifi/WifiManager$WifiLock;Lcom/google/googlenav/prefetch/android/PrefetcherService;Lcom/google/googlenav/prefetch/android/g;)V

    return-void
.end method

.method private d()Z
    .registers 3

    iget-object v0, p0, LaR/a;->a:Lcom/google/googlenav/android/J;

    invoke-virtual {v0}, Lcom/google/googlenav/android/J;->b()I

    move-result v0

    const/16 v1, 0x3c

    if-lt v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private e()Z
    .registers 3

    iget-object v0, p0, LaR/a;->a:Lcom/google/googlenav/android/J;

    invoke-virtual {v0}, Lcom/google/googlenav/android/J;->b()I

    move-result v0

    const/16 v1, 0x35

    if-lt v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private f()Z
    .registers 2

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->as()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method


# virtual methods
.method public a()Z
    .registers 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, LaR/a;->d:Lcom/google/googlenav/prefetch/android/PrefetcherService;

    invoke-virtual {v0}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->e()Z

    move-result v0

    if-nez v0, :cond_63

    move v0, v1

    :goto_b
    invoke-direct {p0}, LaR/a;->d()Z

    move-result v3

    iget-object v4, p0, LaR/a;->b:Lx/aF;

    invoke-virtual {v4}, Lx/aF;->g()Z

    move-result v4

    iget-object v5, p0, LaR/a;->a:Lcom/google/googlenav/android/J;

    invoke-virtual {v5}, Lcom/google/googlenav/android/J;->d()Z

    move-result v5

    iget-object v6, p0, LaR/a;->d:Lcom/google/googlenav/prefetch/android/PrefetcherService;

    invoke-virtual {v6}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->g()Z

    move-result v6

    if-eqz v0, :cond_29

    if-eqz v3, :cond_29

    if-eqz v4, :cond_29

    if-nez v5, :cond_71

    :cond_29
    if-eqz v6, :cond_62

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v0, :cond_65

    const-string v0, "r"

    :goto_34
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez v3, :cond_68

    const-string v0, "b"

    :goto_3c
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez v4, :cond_6b

    const-string v0, "c"

    :goto_44
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez v5, :cond_6e

    const-string v0, "d"

    :goto_4c
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, LaR/a;->d:Lcom/google/googlenav/prefetch/android/PrefetcherService;

    iget-object v3, p0, LaR/a;->e:Lcom/google/googlenav/prefetch/android/g;

    const-string v4, "n"

    invoke-virtual {v1, v3, v4, v0}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->a(Lcom/google/googlenav/prefetch/android/g;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, LaR/a;->d:Lcom/google/googlenav/prefetch/android/PrefetcherService;

    invoke-virtual {v0}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->f()V

    :cond_62
    :goto_62
    return v2

    :cond_63
    move v0, v2

    goto :goto_b

    :cond_65
    const-string v0, ""

    goto :goto_34

    :cond_68
    const-string v0, ""

    goto :goto_3c

    :cond_6b
    const-string v0, ""

    goto :goto_44

    :cond_6e
    const-string v0, ""

    goto :goto_4c

    :cond_71
    invoke-direct {p0}, LaR/a;->f()Z

    move-result v0

    if-eqz v0, :cond_c3

    iget-object v0, p0, LaR/a;->a:Lcom/google/googlenav/android/J;

    invoke-virtual {v0}, Lcom/google/googlenav/android/J;->c()Z

    move-result v0

    if-nez v0, :cond_90

    iget-object v0, p0, LaR/a;->d:Lcom/google/googlenav/prefetch/android/PrefetcherService;

    iget-object v1, p0, LaR/a;->e:Lcom/google/googlenav/prefetch/android/g;

    const-string v3, "n"

    const-string v4, "e"

    invoke-virtual {v0, v1, v3, v4}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->a(Lcom/google/googlenav/prefetch/android/g;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, LaR/a;->d:Lcom/google/googlenav/prefetch/android/PrefetcherService;

    invoke-virtual {v0}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->f()V

    goto :goto_62

    :cond_90
    iget-object v0, p0, LaR/a;->c:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    move v0, v2

    :goto_96
    int-to-long v3, v0

    sget-wide v5, Lcom/google/googlenav/prefetch/android/PrefetcherService;->a:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_ad

    invoke-static {}, Lcom/google/googlenav/android/J;->e()Z

    move-result v3

    if-eqz v3, :cond_a5

    move v2, v1

    goto :goto_62

    :cond_a5
    const-wide/16 v3, 0x7d0

    :try_start_a7
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_aa
    .catch Ljava/lang/InterruptedException; {:try_start_a7 .. :try_end_aa} :catch_dc

    :goto_aa
    add-int/lit8 v0, v0, 0x1

    goto :goto_96

    :cond_ad
    iget-object v0, p0, LaR/a;->d:Lcom/google/googlenav/prefetch/android/PrefetcherService;

    iget-object v1, p0, LaR/a;->e:Lcom/google/googlenav/prefetch/android/g;

    const-string v3, "n"

    const-string v4, "w"

    invoke-virtual {v0, v1, v3, v4}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->a(Lcom/google/googlenav/prefetch/android/g;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, LaR/a;->d:Lcom/google/googlenav/prefetch/android/PrefetcherService;

    invoke-virtual {v0}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->f()V

    iget-object v0, p0, LaR/a;->c:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    goto :goto_62

    :cond_c3
    invoke-static {}, Lcom/google/googlenav/android/J;->f()Z

    move-result v0

    if-nez v0, :cond_da

    iget-object v0, p0, LaR/a;->d:Lcom/google/googlenav/prefetch/android/PrefetcherService;

    iget-object v1, p0, LaR/a;->e:Lcom/google/googlenav/prefetch/android/g;

    const-string v3, "n"

    const-string v4, "n"

    invoke-virtual {v0, v1, v3, v4}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->a(Lcom/google/googlenav/prefetch/android/g;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, LaR/a;->d:Lcom/google/googlenav/prefetch/android/PrefetcherService;

    invoke-virtual {v0}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->f()V

    goto :goto_62

    :cond_da
    move v2, v1

    goto :goto_62

    :catch_dc
    move-exception v3

    goto :goto_aa
.end method

.method public b()Z
    .registers 9

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, LaR/a;->a:Lcom/google/googlenav/android/J;

    invoke-virtual {v0}, Lcom/google/googlenav/android/J;->a()Z

    move-result v3

    invoke-direct {p0}, LaR/a;->f()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/google/googlenav/android/J;->e()Z

    move-result v0

    if-eqz v0, :cond_6b

    :cond_14
    move v0, v2

    :goto_15
    invoke-direct {p0}, LaR/a;->e()Z

    move-result v4

    iget-object v5, p0, LaR/a;->b:Lx/aF;

    invoke-virtual {v5}, Lx/aF;->g()Z

    move-result v5

    iget-object v6, p0, LaR/a;->a:Lcom/google/googlenav/android/J;

    invoke-virtual {v6}, Lcom/google/googlenav/android/J;->d()Z

    move-result v6

    if-eqz v3, :cond_2f

    if-eqz v0, :cond_2f

    if-eqz v4, :cond_2f

    if-eqz v5, :cond_2f

    if-nez v6, :cond_6a

    :cond_2f
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v3, :cond_6d

    const-string v2, "p"

    :goto_38
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v0, :cond_70

    const-string v0, "n"

    :goto_40
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v4, :cond_73

    const-string v0, "d"

    :goto_48
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v5, :cond_76

    const-string v0, "c"

    :goto_50
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v6, :cond_79

    const-string v0, "b"

    :goto_58
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, LaR/a;->d:Lcom/google/googlenav/prefetch/android/PrefetcherService;

    iget-object v3, p0, LaR/a;->e:Lcom/google/googlenav/prefetch/android/g;

    const-string v4, "u"

    invoke-virtual {v2, v3, v4, v0}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->a(Lcom/google/googlenav/prefetch/android/g;Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    :cond_6a
    return v2

    :cond_6b
    move v0, v1

    goto :goto_15

    :cond_6d
    const-string v2, ""

    goto :goto_38

    :cond_70
    const-string v0, ""

    goto :goto_40

    :cond_73
    const-string v0, ""

    goto :goto_48

    :cond_76
    const-string v0, ""

    goto :goto_50

    :cond_79
    const-string v0, ""

    goto :goto_58
.end method
