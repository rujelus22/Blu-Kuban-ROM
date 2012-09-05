.class public Lcom/google/android/youtube/core/client/DummyAnalyticsClient;
.super Ljava/lang/Object;
.source "DummyAnalyticsClient.java"

# interfaces
.implements Lcom/google/android/youtube/core/client/AnalyticsClient;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public trackEvent(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4
    .parameter "action"
    .parameter "label"
    .parameter "value"

    .prologue
    .line 16
    return-void
.end method

.method public trackPage(Ljava/lang/String;)V
    .registers 2
    .parameter "page"

    .prologue
    .line 13
    return-void
.end method
