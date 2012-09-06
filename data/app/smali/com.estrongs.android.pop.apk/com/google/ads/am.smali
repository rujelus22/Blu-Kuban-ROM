.class public Lcom/google/ads/am;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/ads/ai;


# static fields
.field private static final a:Lcom/google/ads/internal/g;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/google/ads/internal/g;->a:Lcom/google/ads/util/j;

    invoke-interface {v0}, Lcom/google/ads/util/j;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/internal/g;

    sput-object v0, Lcom/google/ads/am;->a:Lcom/google/ads/internal/g;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/ads/internal/m;Ljava/util/HashMap;Landroid/webkit/WebView;)V
    .registers 7
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

    const-string v0, "js"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_10

    const-string v0, "Could not get the JS to evaluate."

    invoke-static {v0}, Lcom/google/ads/util/b;->b(Ljava/lang/String;)V

    :goto_f
    return-void

    :cond_10
    instance-of v1, p3, Lcom/google/ads/internal/e;

    if-eqz v1, :cond_22

    check-cast p3, Lcom/google/ads/internal/e;

    invoke-virtual {p3}, Lcom/google/ads/internal/e;->d()Lcom/google/ads/AdActivity;

    move-result-object v1

    if-nez v1, :cond_28

    const-string v0, "Could not get the AdActivity from the AdWebView."

    invoke-static {v0}, Lcom/google/ads/util/b;->b(Ljava/lang/String;)V

    goto :goto_f

    :cond_22
    const-string v0, "Trying to evaluate JS in a WebView that isn\'t an AdWebView"

    invoke-static {v0}, Lcom/google/ads/util/b;->b(Ljava/lang/String;)V

    goto :goto_f

    :cond_28
    invoke-virtual {v1}, Lcom/google/ads/AdActivity;->b()Lcom/google/ads/internal/e;

    move-result-object v1

    if-nez v1, :cond_34

    const-string v0, "Could not get the opening WebView."

    invoke-static {v0}, Lcom/google/ads/util/b;->b(Ljava/lang/String;)V

    goto :goto_f

    :cond_34
    sget-object v2, Lcom/google/ads/am;->a:Lcom/google/ads/internal/g;

    invoke-virtual {v2, v1, v0}, Lcom/google/ads/internal/g;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_f
.end method
