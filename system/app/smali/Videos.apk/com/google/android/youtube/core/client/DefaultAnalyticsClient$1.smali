.class Lcom/google/android/youtube/core/client/DefaultAnalyticsClient$1;
.super Ljava/lang/Object;
.source "DefaultAnalyticsClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/core/client/DefaultAnalyticsClient;->trackEvent(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/core/client/DefaultAnalyticsClient;

.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$label:Ljava/lang/String;

.field final synthetic val$value:I


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/client/DefaultAnalyticsClient;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/google/android/youtube/core/client/DefaultAnalyticsClient$1;->this$0:Lcom/google/android/youtube/core/client/DefaultAnalyticsClient;

    iput-object p2, p0, Lcom/google/android/youtube/core/client/DefaultAnalyticsClient$1;->val$action:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/youtube/core/client/DefaultAnalyticsClient$1;->val$label:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/youtube/core/client/DefaultAnalyticsClient$1;->val$value:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/youtube/core/client/DefaultAnalyticsClient$1;->this$0:Lcom/google/android/youtube/core/client/DefaultAnalyticsClient;

    #getter for: Lcom/google/android/youtube/core/client/DefaultAnalyticsClient;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;
    invoke-static {v0}, Lcom/google/android/youtube/core/client/DefaultAnalyticsClient;->access$100(Lcom/google/android/youtube/core/client/DefaultAnalyticsClient;)Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/client/DefaultAnalyticsClient$1;->this$0:Lcom/google/android/youtube/core/client/DefaultAnalyticsClient;

    #getter for: Lcom/google/android/youtube/core/client/DefaultAnalyticsClient;->appVersion:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/youtube/core/client/DefaultAnalyticsClient;->access$000(Lcom/google/android/youtube/core/client/DefaultAnalyticsClient;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/core/client/DefaultAnalyticsClient$1;->val$action:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/youtube/core/client/DefaultAnalyticsClient$1;->val$label:Ljava/lang/String;

    iget v4, p0, Lcom/google/android/youtube/core/client/DefaultAnalyticsClient$1;->val$value:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 96
    return-void
.end method
