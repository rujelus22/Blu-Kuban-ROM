.class public Lcom/google/android/youtube/videos/VideosAnalytics;
.super Lcom/google/android/youtube/core/Analytics;
.source "VideosAnalytics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/videos/VideosAnalytics$ToShopSource;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/youtube/core/client/AnalyticsClient;)V
    .registers 3
    .parameter "context"
    .parameter "analyticsClient"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/core/Analytics;-><init>(Landroid/content/Context;Lcom/google/android/youtube/core/client/AnalyticsClient;)V

    .line 24
    return-void
.end method


# virtual methods
.method public trackToShopEvent(Lcom/google/android/youtube/videos/VideosAnalytics$ToShopSource;)V
    .registers 4
    .parameter "source"

    .prologue
    .line 27
    const-string v0, "LaunchShop"

    invoke-virtual {p1}, Lcom/google/android/youtube/videos/VideosAnalytics$ToShopSource;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/videos/VideosAnalytics;->trackEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    return-void
.end method
