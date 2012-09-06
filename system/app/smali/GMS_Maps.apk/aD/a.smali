.class public LaD/a;
.super LaD/g;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/google/googlenav/android/F;Lr/aP;Landroid/net/wifi/WifiManager$WifiLock;Lcom/google/googlenav/prefetch/android/BasePrefetcherService;Lcom/google/googlenav/prefetch/android/j;)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, LaD/g;-><init>(Lcom/google/googlenav/android/F;Lr/aP;Landroid/net/wifi/WifiManager$WifiLock;Lcom/google/googlenav/prefetch/android/BasePrefetcherService;Lcom/google/googlenav/prefetch/android/j;LaD/d;)V

    .line 29
    return-void
.end method

.method private h()Z
    .registers 3

    .prologue
    .line 146
    iget-object v0, p0, LaD/a;->a:Lcom/google/googlenav/android/F;

    invoke-virtual {v0}, Lcom/google/googlenav/android/F;->b()I

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

.method private i()Z
    .registers 3

    .prologue
    .line 155
    iget-object v0, p0, LaD/a;->a:Lcom/google/googlenav/android/F;

    invoke-virtual {v0}, Lcom/google/googlenav/android/F;->b()I

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

.method private j()Z
    .registers 2

    .prologue
    .line 159
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->av()Z

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

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 36
    iget-object v0, p0, LaD/a;->d:Lcom/google/googlenav/prefetch/android/BasePrefetcherService;

    invoke-virtual {v0}, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->i()Z

    move-result v0

    if-nez v0, :cond_63

    move v0, v1

    .line 37
    :goto_b
    invoke-direct {p0}, LaD/a;->h()Z

    move-result v3

    .line 38
    iget-object v4, p0, LaD/a;->b:Lr/aP;

    invoke-virtual {v4}, Lr/aP;->e()Z

    move-result v4

    .line 39
    iget-object v5, p0, LaD/a;->a:Lcom/google/googlenav/android/F;

    invoke-virtual {v5}, Lcom/google/googlenav/android/F;->d()Z

    move-result v5

    .line 41
    iget-object v6, p0, LaD/a;->d:Lcom/google/googlenav/prefetch/android/BasePrefetcherService;

    invoke-virtual {v6}, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->k()Z

    move-result v6

    .line 42
    if-eqz v0, :cond_29

    if-eqz v3, :cond_29

    if-eqz v4, :cond_29

    if-nez v5, :cond_71

    .line 46
    :cond_29
    if-eqz v6, :cond_62

    .line 47
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

    .line 52
    iget-object v1, p0, LaD/a;->d:Lcom/google/googlenav/prefetch/android/BasePrefetcherService;

    iget-object v3, p0, LaD/a;->e:Lcom/google/googlenav/prefetch/android/j;

    const-string v4, "n"

    invoke-virtual {v1, v3, v4, v0}, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->a(Lcom/google/googlenav/prefetch/android/j;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, LaD/a;->d:Lcom/google/googlenav/prefetch/android/BasePrefetcherService;

    invoke-virtual {v0}, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->j()V

    .line 106
    :cond_62
    :goto_62
    return v2

    :cond_63
    move v0, v2

    .line 36
    goto :goto_b

    .line 47
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

    .line 67
    :cond_71
    invoke-direct {p0}, LaD/a;->j()Z

    move-result v0

    if-eqz v0, :cond_c3

    .line 68
    iget-object v0, p0, LaD/a;->a:Lcom/google/googlenav/android/F;

    invoke-virtual {v0}, Lcom/google/googlenav/android/F;->c()Z

    move-result v0

    .line 69
    if-nez v0, :cond_90

    .line 71
    iget-object v0, p0, LaD/a;->d:Lcom/google/googlenav/prefetch/android/BasePrefetcherService;

    iget-object v1, p0, LaD/a;->e:Lcom/google/googlenav/prefetch/android/j;

    const-string v3, "n"

    const-string v4, "e"

    invoke-virtual {v0, v1, v3, v4}, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->a(Lcom/google/googlenav/prefetch/android/j;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, LaD/a;->d:Lcom/google/googlenav/prefetch/android/BasePrefetcherService;

    invoke-virtual {v0}, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->j()V

    goto :goto_62

    .line 77
    :cond_90
    iget-object v0, p0, LaD/a;->c:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    move v0, v2

    .line 79
    :goto_96
    int-to-long v3, v0

    sget-wide v5, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->a:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_ad

    .line 80
    invoke-static {}, Lcom/google/googlenav/android/F;->e()Z

    move-result v3

    if-eqz v3, :cond_a5

    move v2, v1

    .line 81
    goto :goto_62

    .line 84
    :cond_a5
    const-wide/16 v3, 0x7d0

    :try_start_a7
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_aa
    .catch Ljava/lang/InterruptedException; {:try_start_a7 .. :try_end_aa} :catch_dc

    .line 79
    :goto_aa
    add-int/lit8 v0, v0, 0x1

    goto :goto_96

    .line 90
    :cond_ad
    iget-object v0, p0, LaD/a;->d:Lcom/google/googlenav/prefetch/android/BasePrefetcherService;

    iget-object v1, p0, LaD/a;->e:Lcom/google/googlenav/prefetch/android/j;

    const-string v3, "n"

    const-string v4, "w"

    invoke-virtual {v0, v1, v3, v4}, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->a(Lcom/google/googlenav/prefetch/android/j;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, LaD/a;->d:Lcom/google/googlenav/prefetch/android/BasePrefetcherService;

    invoke-virtual {v0}, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->j()V

    .line 93
    iget-object v0, p0, LaD/a;->c:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    goto :goto_62

    .line 98
    :cond_c3
    invoke-static {}, Lcom/google/googlenav/android/F;->f()Z

    move-result v0

    if-nez v0, :cond_da

    .line 100
    iget-object v0, p0, LaD/a;->d:Lcom/google/googlenav/prefetch/android/BasePrefetcherService;

    iget-object v1, p0, LaD/a;->e:Lcom/google/googlenav/prefetch/android/j;

    const-string v3, "n"

    const-string v4, "n"

    invoke-virtual {v0, v1, v3, v4}, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->a(Lcom/google/googlenav/prefetch/android/j;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, LaD/a;->d:Lcom/google/googlenav/prefetch/android/BasePrefetcherService;

    invoke-virtual {v0}, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->j()V

    goto :goto_62

    :cond_da
    move v2, v1

    .line 106
    goto :goto_62

    .line 85
    :catch_dc
    move-exception v3

    goto :goto_aa
.end method

.method protected b()Z
    .registers 9

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 111
    iget-object v0, p0, LaD/a;->a:Lcom/google/googlenav/android/F;

    invoke-virtual {v0}, Lcom/google/googlenav/android/F;->a()Z

    move-result v3

    .line 112
    invoke-direct {p0}, LaD/a;->j()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/google/googlenav/android/F;->e()Z

    move-result v0

    if-eqz v0, :cond_6b

    :cond_14
    move v0, v2

    .line 113
    :goto_15
    invoke-direct {p0}, LaD/a;->i()Z

    move-result v4

    .line 114
    iget-object v5, p0, LaD/a;->b:Lr/aP;

    invoke-virtual {v5}, Lr/aP;->e()Z

    move-result v5

    .line 115
    iget-object v6, p0, LaD/a;->a:Lcom/google/googlenav/android/F;

    invoke-virtual {v6}, Lcom/google/googlenav/android/F;->d()Z

    move-result v6

    .line 117
    if-eqz v3, :cond_2f

    if-eqz v0, :cond_2f

    if-eqz v4, :cond_2f

    if-eqz v5, :cond_2f

    if-nez v6, :cond_6a

    .line 121
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

    .line 133
    iget-object v2, p0, LaD/a;->d:Lcom/google/googlenav/prefetch/android/BasePrefetcherService;

    iget-object v3, p0, LaD/a;->e:Lcom/google/googlenav/prefetch/android/j;

    const-string v4, "u"

    invoke-virtual {v2, v3, v4, v0}, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->a(Lcom/google/googlenav/prefetch/android/j;Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    .line 138
    :cond_6a
    return v2

    :cond_6b
    move v0, v1

    .line 112
    goto :goto_15

    .line 121
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
