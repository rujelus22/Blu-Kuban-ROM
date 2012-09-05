.class public abstract Lcom/google/android/youtube/core/GservicesConfig;
.super Ljava/lang/Object;
.source "GservicesConfig.java"

# interfaces
.implements Lcom/google/android/youtube/core/Config;


# instance fields
.field protected final prefix:Ljava/lang/String;

.field protected final resolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .registers 3
    .parameter "resolver"
    .parameter "prefix"

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/google/android/youtube/core/GservicesConfig;->resolver:Landroid/content/ContentResolver;

    .line 21
    iput-object p2, p0, Lcom/google/android/youtube/core/GservicesConfig;->prefix:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public analyticsPropertyId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 29
    const-string v0, "analytics_property_id"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/core/GservicesConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public analyticsUpdateSecs()I
    .registers 3

    .prologue
    .line 33
    const-string v0, "analytics_update_secs"

    const/16 v1, 0x1e

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/core/GservicesConfig;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public deviceCountry()Ljava/lang/String;
    .registers 4

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/youtube/core/GservicesConfig;->resolver:Landroid/content/ContentResolver;

    const-string v1, "device_country"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getBoolean(Ljava/lang/String;Z)Z
    .registers 6
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/youtube/core/GservicesConfig;->resolver:Landroid/content/ContentResolver;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/android/youtube/core/GservicesConfig;->prefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/google/android/gsf/Gservices;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected getInt(Ljava/lang/String;I)I
    .registers 6
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/youtube/core/GservicesConfig;->resolver:Landroid/content/ContentResolver;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/android/youtube/core/GservicesConfig;->prefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getNoCountingStreamParameter()Ljava/lang/String;
    .registers 3

    .prologue
    .line 41
    const-string v0, "no_view_counting_stream_parameter"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/core/GservicesConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/youtube/core/GservicesConfig;->resolver:Landroid/content/ContentResolver;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/android/youtube/core/GservicesConfig;->prefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVssSamplingWeight()I
    .registers 3

    .prologue
    .line 37
    const-string v0, "vss_sampling_weight"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/core/GservicesConfig;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public useAnalytics()Z
    .registers 3

    .prologue
    .line 25
    const-string v0, "analytics_enabled"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/core/GservicesConfig;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
