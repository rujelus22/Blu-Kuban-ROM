.class public Lcom/android/browser/preferences/FontSizePreview;
.super Lcom/android/browser/preferences/WebViewPreview;
.source "FontSizePreview.java"


# instance fields
.field mHtml:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/browser/preferences/WebViewPreview;-><init>(Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/android/browser/preferences/WebViewPreview;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/android/browser/preferences/WebViewPreview;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    return-void
.end method


# virtual methods
.method protected init(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/android/browser/preferences/WebViewPreview;->init(Landroid/content/Context;)V

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 54
    .local v0, res:Landroid/content/res/Resources;
    const v2, 0x7f080063

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, visualNames:[Ljava/lang/Object;
    const-string v2, "<!DOCTYPE html><html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" /><style type=\"text/css\">p { margin: 2px auto;}</style><body><p style=\"font-size: 4pt\">%s</p><p style=\"font-size: 8pt\">%s</p><p style=\"font-size: 10pt\">%s</p><p style=\"font-size: 14pt\">%s</p><p style=\"font-size: 18pt\">%s</p></body></html>"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/preferences/FontSizePreview;->mHtml:Ljava/lang/String;

    .line 57
    return-void
.end method

.method protected setupWebView(Landroid/webkit/WebView;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/android/browser/preferences/WebViewPreview;->setupWebView(Landroid/webkit/WebView;)V

    .line 76
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 77
    return-void
.end method

.method protected updatePreview()V
    .registers 7

    .prologue
    .line 61
    iget-object v2, p0, Lcom/android/browser/preferences/WebViewPreview;->mWebView:Landroid/webkit/WebView;

    if-nez v2, :cond_5

    .line 71
    :goto_4
    return-void

    .line 65
    :cond_5
    iget-object v2, p0, Lcom/android/browser/preferences/WebViewPreview;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 66
    .local v1, ws:Landroid/webkit/WebSettings;
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v0

    .line 67
    .local v0, bs:Lcom/android/browser/BrowserSettings;
    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->getMinimumFontSize()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    .line 68
    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->getTextZoom()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    .line 70
    iget-object v2, p0, Lcom/android/browser/preferences/WebViewPreview;->mWebView:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/android/browser/preferences/FontSizePreview;->mHtml:Ljava/lang/String;

    const-string v4, "text/html"

    const-string v5, "utf-8"

    invoke-virtual {v2, v3, v4, v5}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method
