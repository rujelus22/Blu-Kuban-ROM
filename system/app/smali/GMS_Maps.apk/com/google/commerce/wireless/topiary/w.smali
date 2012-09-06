.class public Lcom/google/commerce/wireless/topiary/w;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field a:Lcom/google/commerce/wireless/topiary/HybridWebView;


# direct methods
.method public constructor <init>(Lcom/google/commerce/wireless/topiary/HybridWebView;)V
    .registers 2
    .parameter

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/google/commerce/wireless/topiary/w;->a:Lcom/google/commerce/wireless/topiary/HybridWebView;

    .line 24
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/w;->a:Lcom/google/commerce/wireless/topiary/HybridWebView;

    invoke-virtual {v0, p2}, Lcom/google/commerce/wireless/topiary/HybridWebView;->c(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/w;->a:Lcom/google/commerce/wireless/topiary/HybridWebView;

    invoke-virtual {v0, p2}, Lcom/google/commerce/wireless/topiary/HybridWebView;->a(Ljava/lang/String;)V

    .line 47
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 48
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/w;->a:Lcom/google/commerce/wireless/topiary/HybridWebView;

    invoke-virtual {v0, p2, p3, p4}, Lcom/google/commerce/wireless/topiary/HybridWebView;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 32
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/w;->a:Lcom/google/commerce/wireless/topiary/HybridWebView;

    invoke-virtual {v0, p2}, Lcom/google/commerce/wireless/topiary/HybridWebView;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 38
    const/4 v0, 0x1

    .line 40
    :goto_9
    return v0

    :cond_a
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_9
.end method
