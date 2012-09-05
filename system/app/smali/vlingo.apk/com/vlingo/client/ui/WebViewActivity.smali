.class public Lcom/vlingo/client/ui/WebViewActivity;
.super Lcom/vlingo/client/ui/VLActivity;
.source "WebViewActivity.java"


# static fields
.field public static final EXTRA_HTML:Ljava/lang/String; = "com.vlingo.client.html"

.field public static final EXTRA_SCREEN_TITLE:Ljava/lang/String; = "com.vlingo.client.title"

.field public static final EXTRA_SCREEN_TITLE_ENABLED:Ljava/lang/String; = "com.vlingo.client.enabled"

.field public static final EXTRA_URL:Ljava/lang/String; = "com.vlingo.client.url"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/vlingo/client/ui/VLActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 11
    .parameter "icicle"

    .prologue
    const/4 v8, 0x1

    .line 36
    invoke-super {p0, p1}, Lcom/vlingo/client/ui/VLActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Lcom/vlingo/client/ui/WebViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/view/Window;->requestFeature(I)Z

    .line 40
    invoke-virtual {p0}, Lcom/vlingo/client/ui/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 42
    .local v1, intent:Landroid/content/Intent;
    const-string v6, "com.vlingo.client.enabled"

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 44
    .local v3, screenTitleEnabled:Z
    if-eqz v3, :cond_25

    .line 45
    invoke-virtual {p0, v8}, Lcom/vlingo/client/ui/WebViewActivity;->requestWindowFeature(I)Z

    .line 46
    const-string v6, "com.vlingo.client.title"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 47
    .local v2, screenTitle:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/vlingo/client/ui/WebViewActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 50
    .end local v2           #screenTitle:Ljava/lang/String;
    :cond_25
    new-instance v5, Landroid/webkit/WebView;

    invoke-direct {v5, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 51
    .local v5, webview:Landroid/webkit/WebView;
    invoke-virtual {p0, v5}, Lcom/vlingo/client/ui/WebViewActivity;->setContentView(Landroid/view/View;)V

    .line 52
    invoke-virtual {v5}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 54
    const-string v6, "com.vlingo.client.html"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, html:Ljava/lang/String;
    const-string v6, "com.vlingo.client.url"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 56
    .local v4, url:Ljava/lang/String;
    if-eqz v4, :cond_4b

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_4b

    .line 57
    invoke-virtual {v5, v4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 60
    :cond_4b
    if-eqz v0, :cond_5a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_5a

    .line 61
    const-string v6, "text/html"

    const-string v7, "UTF-8"

    invoke-virtual {v5, v0, v6, v7}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :cond_5a
    new-instance v6, Lcom/vlingo/client/ui/WebViewActivity$1;

    invoke-direct {v6, p0}, Lcom/vlingo/client/ui/WebViewActivity$1;-><init>(Lcom/vlingo/client/ui/WebViewActivity;)V

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 71
    new-instance v6, Lcom/vlingo/client/ui/WebViewActivity$2;

    invoke-direct {v6, p0}, Lcom/vlingo/client/ui/WebViewActivity$2;-><init>(Lcom/vlingo/client/ui/WebViewActivity;)V

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 79
    return-void
.end method
