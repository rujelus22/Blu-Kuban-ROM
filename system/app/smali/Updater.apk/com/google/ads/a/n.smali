.class final Lcom/google/ads/a/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/ads/a/j;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Lcom/google/ads/a/j;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/google/ads/a/n;->a:Lcom/google/ads/a/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/ads/a/n;->d:Landroid/webkit/WebView;

    iput-object p3, p0, Lcom/google/ads/a/n;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/ads/a/n;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    iget-object v0, p0, Lcom/google/ads/a/n;->c:Ljava/lang/String;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/ads/a/n;->d:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/google/ads/a/n;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/ads/a/n;->c:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_12
    return-void

    :cond_13
    iget-object v0, p0, Lcom/google/ads/a/n;->d:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/google/ads/a/n;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_12
.end method
