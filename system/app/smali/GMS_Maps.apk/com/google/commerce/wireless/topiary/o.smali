.class public Lcom/google/commerce/wireless/topiary/o;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# instance fields
.field protected final a:Lcom/google/commerce/wireless/topiary/HybridWebView;


# direct methods
.method public constructor <init>(Lcom/google/commerce/wireless/topiary/HybridWebView;)V
    .registers 2
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/google/commerce/wireless/topiary/o;->a:Lcom/google/commerce/wireless/topiary/HybridWebView;

    .line 26
    return-void
.end method


# virtual methods
.method protected a(Landroid/webkit/WebView;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 43
    return-void
.end method

.method public final onCloseWindow(Landroid/webkit/WebView;)V
    .registers 3
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/o;->a:Lcom/google/commerce/wireless/topiary/HybridWebView;

    iget-object v0, v0, Lcom/google/commerce/wireless/topiary/HybridWebView;->a:Lcom/google/commerce/wireless/topiary/v;

    if-eqz v0, :cond_d

    .line 80
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/o;->a:Lcom/google/commerce/wireless/topiary/HybridWebView;

    iget-object v0, v0, Lcom/google/commerce/wireless/topiary/HybridWebView;->a:Lcom/google/commerce/wireless/topiary/v;

    invoke-interface {v0, p1}, Lcom/google/commerce/wireless/topiary/v;->a(Landroid/webkit/WebView;)V

    .line 82
    :cond_d
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onCloseWindow(Landroid/webkit/WebView;)V

    .line 83
    return-void
.end method

.method public final onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 54
    if-eqz p2, :cond_9

    .line 55
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z

    move-result v0

    .line 73
    :cond_8
    :goto_8
    return v0

    .line 57
    :cond_9
    iget-object v2, p0, Lcom/google/commerce/wireless/topiary/o;->a:Lcom/google/commerce/wireless/topiary/HybridWebView;

    iget-object v2, v2, Lcom/google/commerce/wireless/topiary/HybridWebView;->a:Lcom/google/commerce/wireless/topiary/v;

    if-eqz v2, :cond_8

    .line 60
    const-string v2, "Create window"

    invoke-static {v1, v2}, Lcom/google/commerce/wireless/topiary/m;->a(ZLjava/lang/String;)V

    .line 62
    const-string v2, "HybridWebChromeClient"

    const-string v3, "Creating a new window"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v2, p0, Lcom/google/commerce/wireless/topiary/o;->a:Lcom/google/commerce/wireless/topiary/HybridWebView;

    iget-object v2, v2, Lcom/google/commerce/wireless/topiary/HybridWebView;->a:Lcom/google/commerce/wireless/topiary/v;

    iget-object v3, p0, Lcom/google/commerce/wireless/topiary/o;->a:Lcom/google/commerce/wireless/topiary/HybridWebView;

    invoke-interface {v2, v3}, Lcom/google/commerce/wireless/topiary/v;->a(Lcom/google/commerce/wireless/topiary/HybridWebView;)Landroid/webkit/WebView;

    move-result-object v2

    .line 66
    const-string v3, "Window created"

    invoke-static {v0, v3}, Lcom/google/commerce/wireless/topiary/m;->a(ZLjava/lang/String;)V

    .line 68
    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 69
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/o;->a:Lcom/google/commerce/wireless/topiary/HybridWebView;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/google/commerce/wireless/topiary/HybridWebView;->setVisibility(I)V

    .line 70
    iget-object v0, p4, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/webkit/WebView$WebViewTransport;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView$WebViewTransport;->setWebView(Landroid/webkit/WebView;)V

    .line 72
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    move v0, v1

    .line 73
    goto :goto_8
.end method

.method public onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 101
    const-wide/16 v0, 0x2

    mul-long/2addr v0, p5

    invoke-interface {p9, v0, v1}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    .line 102
    return-void
.end method

.method public final onProgressChanged(Landroid/webkit/WebView;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 36
    const/16 v0, 0x64

    if-lt p2, v0, :cond_c

    .line 37
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/o;->a:Lcom/google/commerce/wireless/topiary/HybridWebView;

    invoke-virtual {v0}, Lcom/google/commerce/wireless/topiary/HybridWebView;->g()V

    .line 39
    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/google/commerce/wireless/topiary/o;->a(Landroid/webkit/WebView;I)V

    .line 40
    return-void
.end method

.method public onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 89
    const-wide/16 v0, 0x2

    mul-long/2addr v0, p1

    invoke-interface {p5, v0, v1}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    .line 90
    return-void
.end method
