.class public LaD/b;
.super LaD/g;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/google/googlenav/android/F;Lr/aP;Landroid/net/wifi/WifiManager$WifiLock;Lcom/google/googlenav/prefetch/android/BasePrefetcherService;Lcom/google/googlenav/prefetch/android/j;LaD/d;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct/range {p0 .. p6}, LaD/g;-><init>(Lcom/google/googlenav/android/F;Lr/aP;Landroid/net/wifi/WifiManager$WifiLock;Lcom/google/googlenav/prefetch/android/BasePrefetcherService;Lcom/google/googlenav/prefetch/android/j;LaD/d;)V

    .line 24
    return-void
.end method


# virtual methods
.method public a()Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 28
    iget-object v0, p0, LaD/b;->d:Lcom/google/googlenav/prefetch/android/BasePrefetcherService;

    invoke-virtual {v0}, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->i()Z

    move-result v0

    if-nez v0, :cond_47

    move v0, v1

    .line 29
    :goto_b
    iget-object v3, p0, LaD/b;->b:Lr/aP;

    invoke-virtual {v3}, Lr/aP;->e()Z

    move-result v3

    .line 30
    invoke-static {}, Lcom/google/googlenav/android/F;->f()Z

    move-result v4

    .line 32
    if-eqz v0, :cond_1b

    if-eqz v3, :cond_1b

    if-nez v4, :cond_46

    .line 35
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

    .line 42
    iget-object v1, p0, LaD/b;->d:Lcom/google/googlenav/prefetch/android/BasePrefetcherService;

    iget-object v3, p0, LaD/b;->e:Lcom/google/googlenav/prefetch/android/j;

    const-string v4, "n"

    invoke-virtual {v1, v3, v4, v0}, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->a(Lcom/google/googlenav/prefetch/android/j;Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 47
    :cond_46
    return v1

    :cond_47
    move v0, v2

    .line 28
    goto :goto_b

    .line 35
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

.method protected b()Z
    .registers 5

    .prologue
    .line 52
    iget-object v0, p0, LaD/b;->b:Lr/aP;

    invoke-virtual {v0}, Lr/aP;->e()Z

    move-result v0

    .line 53
    invoke-static {}, Lcom/google/googlenav/android/F;->f()Z

    move-result v1

    .line 55
    if-eqz v0, :cond_e

    if-nez v1, :cond_38

    .line 58
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

    .line 64
    iget-object v1, p0, LaD/b;->d:Lcom/google/googlenav/prefetch/android/BasePrefetcherService;

    iget-object v2, p0, LaD/b;->e:Lcom/google/googlenav/prefetch/android/j;

    const-string v3, "u"

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->a(Lcom/google/googlenav/prefetch/android/j;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const/4 v0, 0x0

    .line 69
    :goto_31
    return v0

    .line 58
    :cond_32
    const-string v0, ""

    goto :goto_17

    :cond_35
    const-string v0, ""

    goto :goto_1f

    .line 69
    :cond_38
    const/4 v0, 0x1

    goto :goto_31
.end method
