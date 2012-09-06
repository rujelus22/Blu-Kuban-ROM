.class public final Lcom/google/ads/av;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/ads/an;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/util/HashMap;Ljava/lang/String;Lcom/google/ads/util/ac;)V
    .registers 5

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    invoke-virtual {p2, v0}, Lcom/google/ads/util/ac;->a(Ljava/lang/Object;)V

    :cond_f
    return-void
.end method

.method private static b(Ljava/util/HashMap;Ljava/lang/String;Lcom/google/ads/util/ac;)V
    .registers 5

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, v0}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Lcom/google/ads/util/ac;->a(Ljava/lang/Object;)V
    :try_end_14
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_14} :catch_15

    :cond_14
    :goto_14
    return-void

    :catch_15
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not parse \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" constant."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V

    goto :goto_14
.end method


# virtual methods
.method public final a(Lcom/google/ads/a/q;Ljava/util/HashMap;Landroid/webkit/WebView;)V
    .registers 7

    invoke-virtual {p1}, Lcom/google/ads/a/q;->f()Lcom/google/ads/am;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/am;->a:Lcom/google/ads/util/ab;

    invoke-virtual {v0}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/ak;

    iget-object v0, v0, Lcom/google/ads/ak;->a:Lcom/google/ads/util/ab;

    invoke-virtual {v0}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/al;

    const-string v1, "mraid_banner_path"

    iget-object v2, v0, Lcom/google/ads/al;->a:Lcom/google/ads/util/ac;

    invoke-static {p2, v1, v2}, Lcom/google/ads/av;->a(Ljava/util/HashMap;Ljava/lang/String;Lcom/google/ads/util/ac;)V

    const-string v1, "mraid_expanded_banner_path"

    iget-object v2, v0, Lcom/google/ads/al;->b:Lcom/google/ads/util/ac;

    invoke-static {p2, v1, v2}, Lcom/google/ads/av;->a(Ljava/util/HashMap;Ljava/lang/String;Lcom/google/ads/util/ac;)V

    const-string v1, "mraid_interstitial_path"

    iget-object v2, v0, Lcom/google/ads/al;->c:Lcom/google/ads/util/ac;

    invoke-static {p2, v1, v2}, Lcom/google/ads/av;->a(Ljava/util/HashMap;Ljava/lang/String;Lcom/google/ads/util/ac;)V

    const-string v1, "ac_padding"

    iget-object v2, v0, Lcom/google/ads/al;->d:Lcom/google/ads/util/ac;

    invoke-static {p2, v1, v2}, Lcom/google/ads/av;->b(Ljava/util/HashMap;Ljava/lang/String;Lcom/google/ads/util/ac;)V

    const-string v1, "ac_total_quota"

    iget-object v2, v0, Lcom/google/ads/al;->e:Lcom/google/ads/util/ac;

    invoke-static {p2, v1, v2}, Lcom/google/ads/av;->b(Ljava/util/HashMap;Ljava/lang/String;Lcom/google/ads/util/ac;)V

    const-string v1, "db_total_quota"

    iget-object v2, v0, Lcom/google/ads/al;->f:Lcom/google/ads/util/ac;

    invoke-static {p2, v1, v2}, Lcom/google/ads/av;->b(Ljava/util/HashMap;Ljava/lang/String;Lcom/google/ads/util/ac;)V

    const-string v1, "db_quota_per_origin"

    iget-object v2, v0, Lcom/google/ads/al;->g:Lcom/google/ads/util/ac;

    invoke-static {p2, v1, v2}, Lcom/google/ads/av;->b(Ljava/util/HashMap;Ljava/lang/String;Lcom/google/ads/util/ac;)V

    const-string v1, "db_quota_step_size"

    iget-object v2, v0, Lcom/google/ads/al;->h:Lcom/google/ads/util/ac;

    invoke-static {p2, v1, v2}, Lcom/google/ads/av;->b(Ljava/util/HashMap;Ljava/lang/String;Lcom/google/ads/util/ac;)V

    iget-object v0, v0, Lcom/google/ads/al;->i:Lcom/google/ads/util/ac;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/ads/util/ac;->a(Ljava/lang/Object;)V

    return-void
.end method
