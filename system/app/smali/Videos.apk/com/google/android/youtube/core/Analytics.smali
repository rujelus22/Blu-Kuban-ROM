.class public Lcom/google/android/youtube/core/Analytics;
.super Ljava/lang/Object;
.source "Analytics.java"


# instance fields
.field private final analyticsClient:Lcom/google/android/youtube/core/client/AnalyticsClient;

.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/youtube/core/client/AnalyticsClient;)V
    .registers 4
    .parameter "context"
    .parameter "analyticsClient"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/youtube/core/Analytics;->context:Landroid/content/Context;

    .line 45
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/client/AnalyticsClient;

    iput-object v0, p0, Lcom/google/android/youtube/core/Analytics;->analyticsClient:Lcom/google/android/youtube/core/client/AnalyticsClient;

    .line 46
    return-void
.end method


# virtual methods
.method public trackEvent(Ljava/lang/String;)V
    .registers 4
    .parameter "action"

    .prologue
    .line 61
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/youtube/core/Analytics;->trackEvent(Ljava/lang/String;Ljava/lang/String;I)V

    .line 62
    return-void
.end method

.method public trackEvent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "action"
    .parameter "label"

    .prologue
    .line 57
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/youtube/core/Analytics;->trackEvent(Ljava/lang/String;Ljava/lang/String;I)V

    .line 58
    return-void
.end method

.method public trackEvent(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .parameter "action"
    .parameter "label"
    .parameter "value"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/youtube/core/Analytics;->analyticsClient:Lcom/google/android/youtube/core/client/AnalyticsClient;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/youtube/core/client/AnalyticsClient;->trackEvent(Ljava/lang/String;Ljava/lang/String;I)V

    .line 54
    return-void
.end method

.method public trackPage(Ljava/lang/String;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/youtube/core/Analytics;->analyticsClient:Lcom/google/android/youtube/core/client/AnalyticsClient;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/core/client/AnalyticsClient;->trackPage(Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public trackPlaybackEvent(Ljava/lang/String;Lcom/google/android/youtube/core/model/Video;Lcom/google/android/youtube/core/model/Stream$Quality;)V
    .registers 5
    .parameter "action"
    .parameter "video"
    .parameter "quality"

    .prologue
    .line 71
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/youtube/core/Analytics;->trackPlaybackEvent(Ljava/lang/String;Lcom/google/android/youtube/core/model/Video;Lcom/google/android/youtube/core/model/Stream$Quality;I)V

    .line 72
    return-void
.end method

.method public trackPlaybackEvent(Ljava/lang/String;Lcom/google/android/youtube/core/model/Video;Lcom/google/android/youtube/core/model/Stream$Quality;I)V
    .registers 8
    .parameter "action"
    .parameter "video"
    .parameter "quality"
    .parameter "value"

    .prologue
    .line 65
    if-nez p3, :cond_25

    const-string v0, "?"

    .line 66
    .local v0, label:Ljava/lang/String;
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/core/Analytics;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/youtube/core/utils/Util;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-virtual {p0, p1, v0, p4}, Lcom/google/android/youtube/core/Analytics;->trackEvent(Ljava/lang/String;Ljava/lang/String;I)V

    .line 68
    return-void

    .line 65
    .end local v0           #label:Ljava/lang/String;
    :cond_25
    invoke-virtual {p3}, Lcom/google/android/youtube/core/model/Stream$Quality;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method
