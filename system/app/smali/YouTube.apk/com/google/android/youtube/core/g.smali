.class public abstract Lcom/google/android/youtube/core/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/d;


# instance fields
.field protected final c:Landroid/content/ContentResolver;

.field protected final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/google/android/youtube/core/g;->c:Landroid/content/ContentResolver;

    .line 21
    iput-object p2, p0, Lcom/google/android/youtube/core/g;->d:Ljava/lang/String;

    .line 22
    return-void
.end method

.method private a(Ljava/lang/String;I)I
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 72
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


# virtual methods
.method protected final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 68
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
    .line 64
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
    .line 29
    const-string v0, "analytics_property_id"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/core/g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final l()Z
    .registers 3

    .prologue
    .line 25
    const-string v0, "analytics_enabled"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/core/g;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final m()I
    .registers 3

    .prologue
    .line 33
    const-string v0, "analytics_update_secs"

    const/16 v1, 0x1e

    invoke-direct {p0, v0, v1}, Lcom/google/android/youtube/core/g;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final n()I
    .registers 3

    .prologue
    .line 56
    const-string v0, "awful_player_buffer_low_millis"

    const/16 v1, 0x1388

    invoke-direct {p0, v0, v1}, Lcom/google/android/youtube/core/g;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final o()I
    .registers 3

    .prologue
    .line 60
    const-string v0, "awful_player_buffer_full_millis"

    const/16 v1, 0x2710

    invoke-direct {p0, v0, v1}, Lcom/google/android/youtube/core/g;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final p()Ljava/lang/String;
    .registers 3

    .prologue
    .line 41
    const-string v0, "experiment_id"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/core/g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final q()I
    .registers 3

    .prologue
    .line 37
    const-string v0, "vss_sampling_weight"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/youtube/core/g;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final r()Ljava/lang/String;
    .registers 3

    .prologue
    .line 45
    const-string v0, "no_view_counting_stream_parameter"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/core/g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
