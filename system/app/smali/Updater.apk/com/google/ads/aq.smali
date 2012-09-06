.class public final Lcom/google/ads/aq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/ads/an;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/ads/a/q;Ljava/util/HashMap;Landroid/webkit/WebView;)V
    .registers 5

    instance-of v0, p3, Lcom/google/ads/a/c;

    if-eqz v0, :cond_a

    check-cast p3, Lcom/google/ads/a/c;

    invoke-virtual {p3}, Lcom/google/ads/a/c;->a()V

    :goto_9
    return-void

    :cond_a
    const-string v0, "Trying to close WebView that isn\'t an AdWebView"

    invoke-static {v0}, Lcom/google/ads/util/d;->b(Ljava/lang/String;)V

    goto :goto_9
.end method
