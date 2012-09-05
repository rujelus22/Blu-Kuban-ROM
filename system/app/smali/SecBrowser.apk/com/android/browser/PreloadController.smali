.class public Lcom/android/browser/PreloadController;
.super Ljava/lang/Object;
.source "PreloadController.java"

# interfaces
.implements Lcom/android/browser/WebViewController;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "ctx"

    .prologue
    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/PreloadController;->mContext:Landroid/content/Context;

    .line 47
    return-void
.end method


# virtual methods
.method public activateVoiceSearchMode(Ljava/lang/String;Ljava/util/List;)V
    .registers 3
    .parameter "title"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 199
    .local p2, results:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public bookmarkedStatusHasChanged(Lcom/android/browser/Tab;)V
    .registers 2
    .parameter "tab"

    .prologue
    .line 275
    return-void
.end method

.method public closeTab(Lcom/android/browser/Tab;)V
    .registers 2
    .parameter "tab"

    .prologue
    .line 265
    return-void
.end method

.method public doUpdateVisitedHistory(Lcom/android/browser/Tab;Z)V
    .registers 3
    .parameter "tab"
    .parameter "isReload"

    .prologue
    .line 141
    return-void
.end method

.method public endActionMode()V
    .registers 1

    .prologue
    .line 225
    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .registers 2

    .prologue
    .line 57
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/browser/PreloadController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDefaultVideoPoster()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 176
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTabControl()Lcom/android/browser/TabControl;
    .registers 2

    .prologue
    .line 63
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVideoLoadingProgressView()Landroid/view/View;
    .registers 2

    .prologue
    .line 182
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVisitedHistory(Landroid/webkit/ValueCallback;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 146
    .local p1, callback:Landroid/webkit/ValueCallback;,"Landroid/webkit/ValueCallback<[Ljava/lang/String;>;"
    return-void
.end method

.method public getWebViewFactory()Lcom/android/browser/WebViewFactory;
    .registers 2

    .prologue
    .line 69
    const/4 v0, 0x0

    return-object v0
.end method

.method public hideAutoLogin(Lcom/android/browser/Tab;)V
    .registers 2
    .parameter "tab"

    .prologue
    .line 285
    return-void
.end method

.method public hideCustomView()V
    .registers 1

    .prologue
    .line 171
    return-void
.end method

.method public onDownloadStart(Lcom/android/browser/Tab;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 8
    .parameter "tab"
    .parameter "url"
    .parameter "useragent"
    .parameter "contentDisposition"
    .parameter "mimeType"
    .parameter "contentLength"

    .prologue
    .line 160
    return-void
.end method

.method public onFavicon(Lcom/android/browser/Tab;Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V
    .registers 4
    .parameter "tab"
    .parameter "view"
    .parameter "icon"

    .prologue
    .line 119
    return-void
.end method

.method public onPageFinished(Lcom/android/browser/Tab;)V
    .registers 3
    .parameter "tab"

    .prologue
    .line 96
    if-eqz p1, :cond_b

    .line 97
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 98
    .local v0, view:Landroid/webkit/WebView;
    if-eqz v0, :cond_b

    .line 101
    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 104
    .end local v0           #view:Landroid/webkit/WebView;
    :cond_b
    return-void
.end method

.method public onPageStarted(Lcom/android/browser/Tab;Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V
    .registers 4
    .parameter "tab"
    .parameter "view"
    .parameter "favicon"

    .prologue
    .line 85
    if-eqz p2, :cond_5

    .line 89
    invoke-virtual {p2}, Landroid/webkit/WebView;->clearHistory()V

    .line 91
    :cond_5
    return-void
.end method

.method public onProgressChanged(Lcom/android/browser/Tab;)V
    .registers 2
    .parameter "tab"

    .prologue
    .line 109
    return-void
.end method

.method public onReceivedHttpAuthRequest(Lcom/android/browser/Tab;Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "tab"
    .parameter "view"
    .parameter "handler"
    .parameter "host"
    .parameter "realm"

    .prologue
    .line 153
    return-void
.end method

.method public onReceivedTitle(Lcom/android/browser/Tab;Ljava/lang/String;)V
    .registers 3
    .parameter "tab"
    .parameter "title"

    .prologue
    .line 114
    return-void
.end method

.method public onSetWebView(Lcom/android/browser/Tab;Landroid/webkit/WebView;)V
    .registers 3
    .parameter "tab"
    .parameter "view"

    .prologue
    .line 75
    return-void
.end method

.method public onUnhandledKeyEvent(Landroid/view/KeyEvent;)V
    .registers 2
    .parameter "event"

    .prologue
    .line 136
    return-void
.end method

.method public onUpdateUrl(Ljava/lang/String;)V
    .registers 2
    .parameter "url"

    .prologue
    .line 296
    return-void
.end method

.method public onUpdatedSecurityState(Lcom/android/browser/Tab;)V
    .registers 2
    .parameter "tab"

    .prologue
    .line 215
    return-void
.end method

.method public onUserCanceledSsl(Lcom/android/browser/Tab;)V
    .registers 2
    .parameter "tab"

    .prologue
    .line 194
    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter "acceptType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 220
    .local p1, uploadMsg:Landroid/webkit/ValueCallback;,"Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    return-void
.end method

.method public openTab(Ljava/lang/String;Lcom/android/browser/Tab;ZZ)Lcom/android/browser/Tab;
    .registers 6
    .parameter "url"
    .parameter "parent"
    .parameter "setActive"
    .parameter "useCurrent"

    .prologue
    .line 246
    const/4 v0, 0x0

    return-object v0
.end method

.method public openTabAndShow(Landroid/os/Bundle;Z)Lcom/android/browser/Tab;
    .registers 4
    .parameter "state"
    .parameter "incognito"

    .prologue
    .line 253
    const/4 v0, 0x0

    return-object v0
.end method

.method public revertVoiceSearchMode(Lcom/android/browser/Tab;)V
    .registers 2
    .parameter "tab"

    .prologue
    .line 204
    return-void
.end method

.method public setupAutoFill(Landroid/os/Message;)V
    .registers 2
    .parameter "message"

    .prologue
    .line 270
    return-void
.end method

.method public shouldCaptureThumbnails()Z
    .registers 2

    .prologue
    .line 289
    const/4 v0, 0x0

    return v0
.end method

.method public shouldOverrideKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method public shouldOverrideUrlLoading(Lcom/android/browser/Tab;Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 5
    .parameter "tab"
    .parameter "view"
    .parameter "url"

    .prologue
    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public shouldShowErrorConsole()Z
    .registers 2

    .prologue
    .line 209
    const/4 v0, 0x0

    return v0
.end method

.method public showAutoLogin(Lcom/android/browser/Tab;)V
    .registers 2
    .parameter "tab"

    .prologue
    .line 280
    return-void
.end method

.method public showCustomView(Lcom/android/browser/Tab;Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V
    .registers 5
    .parameter "tab"
    .parameter "view"
    .parameter "requestedOrientation"
    .parameter "callback"

    .prologue
    .line 166
    return-void
.end method

.method public showSslCertificateOnError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 4
    .parameter "view"
    .parameter "handler"
    .parameter "error"

    .prologue
    .line 189
    return-void
.end method

.method public switchToTab(Lcom/android/browser/Tab;)Z
    .registers 3
    .parameter "tab"

    .prologue
    .line 259
    const/4 v0, 0x0

    return v0
.end method
