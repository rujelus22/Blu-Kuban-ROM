.class public Lcom/google/ads/an;
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
.method protected a(Ljava/lang/String;Landroid/webkit/WebView;)Ljava/lang/Runnable;
    .registers 5

    new-instance v0, Lcom/google/ads/g;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/ads/g;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    return-object v0
.end method

.method public a(Lcom/google/ads/internal/m;Ljava/util/HashMap;Landroid/webkit/WebView;)V
    .registers 6
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

    const-string v0, "u"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_10

    const-string v0, "Could not get URL from click gmsg."

    invoke-static {v0}, Lcom/google/ads/util/b;->e(Ljava/lang/String;)V

    :goto_f
    return-void

    :cond_10
    new-instance v1, Ljava/lang/Thread;

    invoke-virtual {p0, v0, p3}, Lcom/google/ads/an;->a(Ljava/lang/String;Landroid/webkit/WebView;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_f
.end method
