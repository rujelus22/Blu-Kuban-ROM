.class public Lcom/android/browser/WebViewLiveProxy;
.super Lcom/android/browser/AnimView;
.source "WebViewLiveProxy.java"


# instance fields
.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/android/browser/AnimView;-><init>(Landroid/content/Context;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/android/browser/AnimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/android/browser/AnimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 6
    .parameter "canvas"

    .prologue
    const/4 v3, 0x0

    .line 41
    iget-object v2, p0, Lcom/android/browser/WebViewLiveProxy;->mWebView:Landroid/webkit/WebView;

    if-eqz v2, :cond_1c

    .line 43
    iget-object v2, p0, Lcom/android/browser/WebViewLiveProxy;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0, v2}, Lcom/android/browser/WebViewLiveProxy;->getBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 44
    .local v1, webViewBitmap:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 45
    .local v0, paint:Landroid/graphics/Paint;
    invoke-virtual {p1, v1, v3, v3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 49
    invoke-virtual {p0}, Lcom/android/browser/WebViewLiveProxy;->getShadowEnabled()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 52
    invoke-virtual {p0, p1, v1}, Lcom/android/browser/WebViewLiveProxy;->onDrawReflectionInShadow(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    .line 71
    .end local v0           #paint:Landroid/graphics/Paint;
    .end local v1           #webViewBitmap:Landroid/graphics/Bitmap;
    :cond_1c
    return-void
.end method

.method public recycleCache()V
    .registers 2

    .prologue
    .line 18
    invoke-super {p0}, Lcom/android/browser/AnimView;->recycleCache()V

    .line 19
    iget-object v0, p0, Lcom/android/browser/WebViewLiveProxy;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_a

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/WebViewLiveProxy;->mWebView:Landroid/webkit/WebView;

    .line 21
    :cond_a
    return-void
.end method

.method public setWebView(Landroid/webkit/WebView;)V
    .registers 2
    .parameter "webView"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/browser/WebViewLiveProxy;->mWebView:Landroid/webkit/WebView;

    .line 37
    return-void
.end method
