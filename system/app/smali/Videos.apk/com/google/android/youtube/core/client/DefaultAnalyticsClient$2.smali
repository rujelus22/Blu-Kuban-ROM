.class Lcom/google/android/youtube/core/client/DefaultAnalyticsClient$2;
.super Ljava/lang/Object;
.source "DefaultAnalyticsClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/core/client/DefaultAnalyticsClient;->trackPage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/core/client/DefaultAnalyticsClient;

.field final synthetic val$slashName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/client/DefaultAnalyticsClient;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/google/android/youtube/core/client/DefaultAnalyticsClient$2;->this$0:Lcom/google/android/youtube/core/client/DefaultAnalyticsClient;

    iput-object p2, p0, Lcom/google/android/youtube/core/client/DefaultAnalyticsClient$2;->val$slashName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/android/youtube/core/client/DefaultAnalyticsClient$2;->this$0:Lcom/google/android/youtube/core/client/DefaultAnalyticsClient;

    #getter for: Lcom/google/android/youtube/core/client/DefaultAnalyticsClient;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;
    invoke-static {v0}, Lcom/google/android/youtube/core/client/DefaultAnalyticsClient;->access$100(Lcom/google/android/youtube/core/client/DefaultAnalyticsClient;)Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/client/DefaultAnalyticsClient$2;->val$slashName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->trackPageView(Ljava/lang/String;)V

    .line 113
    return-void
.end method
