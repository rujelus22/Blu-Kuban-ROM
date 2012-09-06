.class public Lcom/google/ads/al;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/ads/ai;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/ads/internal/m;Ljava/util/HashMap;Landroid/webkit/WebView;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/internal/m;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/webkit/WebView;",
            ")V"
        }
    .end annotation

    instance-of v0, p3, Lcom/google/ads/internal/e;

    if-eqz v0, :cond_a

    check-cast p3, Lcom/google/ads/internal/e;

    invoke-virtual {p3}, Lcom/google/ads/internal/e;->a()V

    :goto_9
    return-void

    :cond_a
    const-string v0, "Trying to close WebView that isn\'t an AdWebView"

    invoke-static {v0}, Lcom/google/ads/util/b;->b(Ljava/lang/String;)V

    goto :goto_9
.end method
