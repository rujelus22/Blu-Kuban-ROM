.class public Lcom/google/ads/aq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/ads/ai;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/util/HashMap;Ljava/lang/String;Lcom/google/ads/util/aa;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/ads/util/aa",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Lcom/google/ads/util/aa;->a(Ljava/lang/Object;)V
    :try_end_14
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_14} :catch_15

    :cond_14
    :goto_14
    return-void

    :catch_15
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not parse \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" constant."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    goto :goto_14
.end method

.method private b(Ljava/util/HashMap;Ljava/lang/String;Lcom/google/ads/util/aa;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/ads/util/aa",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, v0}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Lcom/google/ads/util/aa;->a(Ljava/lang/Object;)V
    :try_end_14
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_14} :catch_15

    :cond_14
    :goto_14
    return-void

    :catch_15
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not parse \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" constant."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    goto :goto_14
.end method

.method private c(Ljava/util/HashMap;Ljava/lang/String;Lcom/google/ads/util/aa;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/ads/util/aa",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    invoke-virtual {p3, v0}, Lcom/google/ads/util/aa;->a(Ljava/lang/Object;)V

    :cond_f
    return-void
.end method


# virtual methods
.method public a(Lcom/google/ads/internal/m;Ljava/util/HashMap;Landroid/webkit/WebView;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/internal/m;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/webkit/WebView;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/google/ads/internal/m;->f()Lcom/google/ads/ah;

    move-result-object v1

    iget-object v0, v1, Lcom/google/ads/ah;->a:Lcom/google/ads/util/z;

    invoke-virtual {v0}, Lcom/google/ads/util/z;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/ae;

    iget-object v0, v0, Lcom/google/ads/ae;->a:Lcom/google/ads/util/z;

    invoke-virtual {v0}, Lcom/google/ads/util/z;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/af;

    const-string v3, "min_hwa_banner"

    iget-object v4, v0, Lcom/google/ads/af;->a:Lcom/google/ads/util/aa;

    invoke-direct {p0, p2, v3, v4}, Lcom/google/ads/aq;->a(Ljava/util/HashMap;Ljava/lang/String;Lcom/google/ads/util/aa;)V

    const-string v3, "min_hwa_overlay"

    iget-object v4, v0, Lcom/google/ads/af;->b:Lcom/google/ads/util/aa;

    invoke-direct {p0, p2, v3, v4}, Lcom/google/ads/aq;->a(Ljava/util/HashMap;Ljava/lang/String;Lcom/google/ads/util/aa;)V

    const-string v3, "mraid_banner_path"

    iget-object v4, v0, Lcom/google/ads/af;->c:Lcom/google/ads/util/aa;

    invoke-direct {p0, p2, v3, v4}, Lcom/google/ads/aq;->c(Ljava/util/HashMap;Ljava/lang/String;Lcom/google/ads/util/aa;)V

    const-string v3, "mraid_expanded_banner_path"

    iget-object v4, v0, Lcom/google/ads/af;->d:Lcom/google/ads/util/aa;

    invoke-direct {p0, p2, v3, v4}, Lcom/google/ads/aq;->c(Ljava/util/HashMap;Ljava/lang/String;Lcom/google/ads/util/aa;)V

    const-string v3, "mraid_interstitial_path"

    iget-object v4, v0, Lcom/google/ads/af;->e:Lcom/google/ads/util/aa;

    invoke-direct {p0, p2, v3, v4}, Lcom/google/ads/aq;->c(Ljava/util/HashMap;Ljava/lang/String;Lcom/google/ads/util/aa;)V

    const-string v3, "ac_max_size"

    iget-object v4, v0, Lcom/google/ads/af;->f:Lcom/google/ads/util/aa;

    invoke-direct {p0, p2, v3, v4}, Lcom/google/ads/aq;->b(Ljava/util/HashMap;Ljava/lang/String;Lcom/google/ads/util/aa;)V

    const-string v3, "ac_padding"

    iget-object v4, v0, Lcom/google/ads/af;->g:Lcom/google/ads/util/aa;

    invoke-direct {p0, p2, v3, v4}, Lcom/google/ads/aq;->b(Ljava/util/HashMap;Ljava/lang/String;Lcom/google/ads/util/aa;)V

    const-string v3, "ac_total_quota"

    iget-object v4, v0, Lcom/google/ads/af;->h:Lcom/google/ads/util/aa;

    invoke-direct {p0, p2, v3, v4}, Lcom/google/ads/aq;->b(Ljava/util/HashMap;Ljava/lang/String;Lcom/google/ads/util/aa;)V

    const-string v3, "db_total_quota"

    iget-object v4, v0, Lcom/google/ads/af;->i:Lcom/google/ads/util/aa;

    invoke-direct {p0, p2, v3, v4}, Lcom/google/ads/aq;->b(Ljava/util/HashMap;Ljava/lang/String;Lcom/google/ads/util/aa;)V

    const-string v3, "db_quota_per_origin"

    iget-object v4, v0, Lcom/google/ads/af;->j:Lcom/google/ads/util/aa;

    invoke-direct {p0, p2, v3, v4}, Lcom/google/ads/aq;->b(Ljava/util/HashMap;Ljava/lang/String;Lcom/google/ads/util/aa;)V

    const-string v3, "db_quota_step_size"

    iget-object v4, v0, Lcom/google/ads/af;->k:Lcom/google/ads/util/aa;

    invoke-direct {p0, p2, v3, v4}, Lcom/google/ads/aq;->b(Ljava/util/HashMap;Ljava/lang/String;Lcom/google/ads/util/aa;)V

    invoke-virtual {p1}, Lcom/google/ads/internal/m;->i()Lcom/google/ads/internal/e;

    move-result-object v3

    sget v4, Lcom/google/ads/util/AdUtil;->a:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_7a

    invoke-virtual {v3}, Lcom/google/ads/internal/e;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/google/ads/util/k;->a(Landroid/webkit/WebSettings;Lcom/google/ads/ah;)V

    invoke-virtual {p3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/google/ads/util/k;->a(Landroid/webkit/WebSettings;Lcom/google/ads/ah;)V

    :cond_7a
    iget-object v1, v1, Lcom/google/ads/ah;->i:Lcom/google/ads/util/z;

    invoke-virtual {v1}, Lcom/google/ads/util/z;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/internal/s;

    invoke-virtual {v1}, Lcom/google/ads/internal/s;->a()Z

    move-result v1

    if-nez v1, :cond_a9

    invoke-virtual {v3}, Lcom/google/ads/internal/e;->e()Z

    move-result v4

    sget v5, Lcom/google/ads/util/AdUtil;->a:I

    iget-object v1, v0, Lcom/google/ads/af;->a:Lcom/google/ads/util/aa;

    invoke-virtual {v1}, Lcom/google/ads/util/aa;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v5, v1, :cond_b3

    move v1, v2

    :goto_9d
    if-nez v1, :cond_b5

    if-eqz v4, :cond_b5

    const-string v1, "Re-enabling hardware acceleration for a banner after reading constants."

    invoke-static {v1}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/google/ads/internal/e;->c()V

    :cond_a9
    :goto_a9
    iget-object v0, v0, Lcom/google/ads/af;->l:Lcom/google/ads/util/aa;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/ads/util/aa;->a(Ljava/lang/Object;)V

    return-void

    :cond_b3
    const/4 v1, 0x0

    goto :goto_9d

    :cond_b5
    if-eqz v1, :cond_a9

    if-nez v4, :cond_a9

    const-string v1, "Disabling hardware acceleration for a banner after reading constants."

    invoke-static {v1}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/google/ads/internal/e;->b()V

    goto :goto_a9
.end method
