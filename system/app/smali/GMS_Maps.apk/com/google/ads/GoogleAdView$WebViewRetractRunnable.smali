.class Lcom/google/ads/GoogleAdView$WebViewRetractRunnable;
.super Ljava/lang/Object;
.source "GoogleAdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/GoogleAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebViewRetractRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/ads/GoogleAdView;


# direct methods
.method private constructor <init>(Lcom/google/ads/GoogleAdView;)V
    .registers 2
    .parameter

    .prologue
    .line 839
    iput-object p1, p0, Lcom/google/ads/GoogleAdView$WebViewRetractRunnable;->this$0:Lcom/google/ads/GoogleAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/ads/GoogleAdView;Lcom/google/ads/GoogleAdView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 839
    invoke-direct {p0, p1}, Lcom/google/ads/GoogleAdView$WebViewRetractRunnable;-><init>(Lcom/google/ads/GoogleAdView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 841
    iget-object v0, p0, Lcom/google/ads/GoogleAdView$WebViewRetractRunnable;->this$0:Lcom/google/ads/GoogleAdView;

    #getter for: Lcom/google/ads/GoogleAdView;->mExpanded:Z
    invoke-static {v0}, Lcom/google/ads/GoogleAdView;->access$1000(Lcom/google/ads/GoogleAdView;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 847
    :goto_8
    return-void

    .line 845
    :cond_9
    iget-object v0, p0, Lcom/google/ads/GoogleAdView$WebViewRetractRunnable;->this$0:Lcom/google/ads/GoogleAdView;

    #getter for: Lcom/google/ads/GoogleAdView;->mOverlay:Lcom/google/ads/GoogleAdOverlay;
    invoke-static {v0}, Lcom/google/ads/GoogleAdView;->access$1100(Lcom/google/ads/GoogleAdView;)Lcom/google/ads/GoogleAdOverlay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/GoogleAdOverlay;->removeAllViewsAndDismiss()V

    .line 846
    iget-object v0, p0, Lcom/google/ads/GoogleAdView$WebViewRetractRunnable;->this$0:Lcom/google/ads/GoogleAdView;

    const/4 v1, 0x0

    #setter for: Lcom/google/ads/GoogleAdView;->mExpanded:Z
    invoke-static {v0, v1}, Lcom/google/ads/GoogleAdView;->access$1002(Lcom/google/ads/GoogleAdView;Z)Z

    goto :goto_8
.end method
