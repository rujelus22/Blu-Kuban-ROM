.class public Lcom/sprint/dsa/widget/WebViewDialog;
.super Landroid/app/Dialog;
.source "WebViewDialog.java"


# instance fields
.field private okBtn:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .parameter "context"
    .parameter "title"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 19
    invoke-virtual {p0, p2}, Lcom/sprint/dsa/widget/WebViewDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 20
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sprint/dsa/widget/WebViewDialog;->setCancelable(Z)V

    .line 21
    const v0, 0x7f030015

    invoke-virtual {p0, v0}, Lcom/sprint/dsa/widget/WebViewDialog;->setContentView(I)V

    .line 23
    const v0, 0x7f0b0050

    invoke-virtual {p0, v0}, Lcom/sprint/dsa/widget/WebViewDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sprint/dsa/widget/WebViewDialog;->okBtn:Landroid/widget/Button;

    .line 24
    iget-object v0, p0, Lcom/sprint/dsa/widget/WebViewDialog;->okBtn:Landroid/widget/Button;

    new-instance v1, Lcom/sprint/dsa/widget/WebViewDialog$1;

    invoke-direct {v1, p0}, Lcom/sprint/dsa/widget/WebViewDialog$1;-><init>(Lcom/sprint/dsa/widget/WebViewDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "context"
    .parameter "title"
    .parameter "html"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/sprint/dsa/widget/WebViewDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0, p3}, Lcom/sprint/dsa/widget/WebViewDialog;->setWebViewContent(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method static synthetic access$0(Lcom/sprint/dsa/widget/WebViewDialog;)Landroid/widget/Button;
    .registers 2
    .parameter

    .prologue
    .line 14
    iget-object v0, p0, Lcom/sprint/dsa/widget/WebViewDialog;->okBtn:Landroid/widget/Button;

    return-object v0
.end method


# virtual methods
.method public setWebViewContent(Ljava/lang/String;)V
    .registers 7
    .parameter "html"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 39
    const v2, 0x7f0b004f

    invoke-virtual {p0, v2}, Lcom/sprint/dsa/widget/WebViewDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    .line 40
    .local v1, webView:Landroid/webkit/WebView;
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 41
    .local v0, webSettings:Landroid/webkit/WebSettings;
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 42
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 43
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 44
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 45
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 46
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setPluginsEnabled(Z)V

    .line 48
    const-string v2, "text/html"

    const-string v3, "utf-8"

    invoke-virtual {v1, p1, v2, v3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public setWebViewContentAsUrl(Ljava/lang/String;)V
    .registers 8
    .parameter "url"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 52
    const v3, 0x7f0b004f

    invoke-virtual {p0, v3}, Lcom/sprint/dsa/widget/WebViewDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    .line 54
    .local v2, webView:Landroid/webkit/WebView;
    const-string v3, "file://"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 55
    .local v0, localContent:Z
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 57
    .local v1, webSettings:Landroid/webkit/WebSettings;
    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 58
    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 59
    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 60
    if-eqz v0, :cond_33

    move v3, v4

    :goto_21
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 61
    if-eqz v0, :cond_35

    move v3, v4

    :goto_27
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 62
    if-eqz v0, :cond_37

    :goto_2c
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setPluginsEnabled(Z)V

    .line 64
    invoke-virtual {v2, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 65
    return-void

    :cond_33
    move v3, v5

    .line 60
    goto :goto_21

    :cond_35
    move v3, v5

    .line 61
    goto :goto_27

    :cond_37
    move v4, v5

    .line 62
    goto :goto_2c
.end method
