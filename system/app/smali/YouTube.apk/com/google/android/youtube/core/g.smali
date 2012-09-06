.class public abstract Lcom/google/android/youtube/core/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/c;


# instance fields
.field protected final c:Landroid/content/ContentResolver;

.field protected final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/google/android/youtube/core/g;->c:Landroid/content/ContentResolver;

    .line 22
    iput-object p2, p0, Lcom/google/android/youtube/core/g;->d:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;I)I
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/youtube/core/g;->c:Landroid/content/ContentResolver;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/android/youtube/core/g;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/google/android/gsf/f;->a(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected final a(Ljava/lang/String;J)J
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/youtube/core/g;->c:Landroid/content/ContentResolver;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/android/youtube/core/g;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/32 v2, 0x240c8400

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gsf/f;->a(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/youtube/core/g;->c:Landroid/content/ContentResolver;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/android/youtube/core/g;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/google/android/gsf/f;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Ljava/lang/String;Z)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/youtube/core/g;->c:Landroid/content/ContentResolver;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/android/youtube/core/g;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/google/android/gsf/f;->a(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public f()Ljava/lang/String;
    .registers 3

    .prologue
    .line 30
    const-string v0, "analytics_property_id"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/core/g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final n()Z
    .registers 3

    .prologue
    .line 26
    const-string v0, "analytics_enabled"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/core/g;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final o()I
    .registers 3

    .prologue
    .line 34
    const-string v0, "analytics_update_secs"

    const/16 v1, 0x1e

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/core/g;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final p()I
    .registers 3

    .prologue
    .line 61
    const-string v0, "awful_player_buffer_low_millis"

    const/16 v1, 0x1388

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/core/g;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final q()I
    .registers 3

    .prologue
    .line 65
    const-string v0, "awful_player_buffer_full_millis"

    const/16 v1, 0x2710

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/core/g;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final r()Ljava/lang/String;
    .registers 3

    .prologue
    .line 42
    const-string v0, "experiment_id"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/core/g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final s()Z
    .registers 3

    .prologue
    .line 69
    const-string v0, "device_supports_3d_playback"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/core/g;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final t()I
    .registers 3

    .prologue
    .line 38
    const-string v0, "vss_sampling_weight"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/core/g;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final u()Ljava/lang/String;
    .registers 3

    .prologue
    .line 46
    const-string v0, "adsense_query_domain"

    const-string v1, "googleads.g.doubleclick.net"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/core/g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final v()Ljava/lang/String;
    .registers 3

    .prologue
    .line 50
    const-string v0, "adsense_query_domain"

    const-string v1, "/pagead/ads"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/core/g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final w()Ljava/lang/String;
    .registers 4

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/youtube/core/g;->c:Landroid/content/ContentResolver;

    const-string v1, "device_country"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/f;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final x()Z
    .registers 3

    .prologue
    .line 73
    const-string v0, "use_vss_for_view_counts"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/core/g;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
