.class public final Lcom/google/ads/ar;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/ads/an;


# static fields
.field private static final a:Lcom/google/ads/a/e;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/google/ads/a/e;->a:Lcom/google/ads/util/m;

    invoke-interface {v0}, Lcom/google/ads/util/m;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/a/e;

    sput-object v0, Lcom/google/ads/ar;->a:Lcom/google/ads/a/e;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/ads/a/q;Ljava/util/HashMap;Landroid/webkit/WebView;)V
    .registers 7

    const-string v0, "js"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_10

    const-string v0, "Could not get the JS to evaluate."

    invoke-static {v0}, Lcom/google/ads/util/d;->b(Ljava/lang/String;)V

    :goto_f
    return-void

    :cond_10
    instance-of v1, p3, Lcom/google/ads/a/c;

    if-eqz v1, :cond_22

    check-cast p3, Lcom/google/ads/a/c;

    invoke-virtual {p3}, Lcom/google/ads/a/c;->b()Lcom/google/ads/AdActivity;

    move-result-object v1

    if-nez v1, :cond_28

    const-string v0, "Could not get the AdActivity from the AdWebView."

    invoke-static {v0}, Lcom/google/ads/util/d;->b(Ljava/lang/String;)V

    goto :goto_f

    :cond_22
    const-string v0, "Trying to evaluate JS in a WebView that isn\'t an AdWebView"

    invoke-static {v0}, Lcom/google/ads/util/d;->b(Ljava/lang/String;)V

    goto :goto_f

    :cond_28
    invoke-virtual {v1}, Lcom/google/ads/AdActivity;->b()Lcom/google/ads/a/c;

    move-result-object v1

    if-nez v1, :cond_34

    const-string v0, "Could not get the opening WebView."

    invoke-static {v0}, Lcom/google/ads/util/d;->b(Ljava/lang/String;)V

    goto :goto_f

    :cond_34
    sget-object v2, Lcom/google/ads/ar;->a:Lcom/google/ads/a/e;

    invoke-static {v1, v0}, Lcom/google/ads/a/e;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_f
.end method
