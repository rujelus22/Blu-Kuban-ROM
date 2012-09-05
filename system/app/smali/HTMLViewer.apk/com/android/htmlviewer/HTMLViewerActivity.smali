.class public Lcom/android/htmlviewer/HTMLViewerActivity;
.super Landroid/app/Activity;
.source "HTMLViewerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htmlviewer/HTMLViewerActivity$WebChrome;
    }
.end annotation


# instance fields
.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 164
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 65
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 73
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lcom/android/htmlviewer/HTMLViewerActivity;->requestWindowFeature(I)Z

    .line 75
    new-instance v5, Landroid/webkit/WebView;

    invoke-direct {v5, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/htmlviewer/HTMLViewerActivity;->mWebView:Landroid/webkit/WebView;

    .line 76
    iget-object v5, p0, Lcom/android/htmlviewer/HTMLViewerActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0, v5}, Lcom/android/htmlviewer/HTMLViewerActivity;->setContentView(Landroid/view/View;)V

    .line 79
    iget-object v5, p0, Lcom/android/htmlviewer/HTMLViewerActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v6, Lcom/android/htmlviewer/HTMLViewerActivity$WebChrome;

    invoke-direct {v6, p0}, Lcom/android/htmlviewer/HTMLViewerActivity$WebChrome;-><init>(Lcom/android/htmlviewer/HTMLViewerActivity;)V

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 82
    iget-object v5, p0, Lcom/android/htmlviewer/HTMLViewerActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    .line 84
    .local v3, s:Landroid/webkit/WebSettings;
    if-eqz v3, :cond_54

    .line 86
    sget-object v5, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v3, v5}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 87
    invoke-virtual {v3, v8}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 88
    invoke-virtual {v3, v7}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 89
    invoke-virtual {v3, v7}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 90
    invoke-virtual {v3, v8}, Landroid/webkit/WebSettings;->setBlockNetworkLoads(Z)V

    .line 92
    const-string v5, "AutoDetect"

    invoke-virtual {v3, v5}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v3, v8}, Landroid/webkit/WebSettings;->setAdvancedCopyPasteFeature(Z)V

    .line 102
    invoke-virtual {v3, v7}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 105
    invoke-virtual {v3, v8}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 106
    invoke-virtual {v3, v7}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 115
    :goto_4c
    if-eqz p1, :cond_5c

    .line 116
    iget-object v5, p0, Lcom/android/htmlviewer/HTMLViewerActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 132
    :cond_53
    :goto_53
    return-void

    .line 111
    :cond_54
    const-string v5, "HTMLViewerActivity"

    const-string v6, "WebSettings object is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c

    .line 119
    :cond_5c
    invoke-virtual {p0}, Lcom/android/htmlviewer/HTMLViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 120
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_53

    .line 121
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 122
    .local v4, uri:Landroid/net/Uri;
    const-string v5, "file"

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://com.android.htmlfileprovider"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, contentUri:Ljava/lang/String;
    :goto_8d
    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    .line 126
    .local v2, intentType:Ljava/lang/String;
    if-eqz v2, :cond_aa

    .line 127
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 129
    :cond_aa
    iget-object v5, p0, Lcom/android/htmlviewer/HTMLViewerActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_53

    .line 122
    .end local v0           #contentUri:Ljava/lang/String;
    .end local v2           #intentType:Ljava/lang/String;
    :cond_b0
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8d
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 160
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 161
    iget-object v0, p0, Lcom/android/htmlviewer/HTMLViewerActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 162
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 136
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 137
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->startSync()V

    .line 138
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .parameter "outState"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/htmlviewer/HTMLViewerActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 148
    return-void
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 152
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 154
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->stopSync()V

    .line 155
    iget-object v0, p0, Lcom/android/htmlviewer/HTMLViewerActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 156
    return-void
.end method
