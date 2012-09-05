.class public Lcom/android/browser/WebViewScreenShot;
.super Lcom/android/browser/AnimView;
.source "WebViewScreenShot.java"


# instance fields
.field private mScreenShot:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/browser/AnimView;-><init>(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/browser/AnimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/android/browser/AnimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 5
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 49
    iget-object v1, p0, Lcom/android/browser/WebViewScreenShot;->mScreenShot:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1a

    .line 50
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 51
    .local v0, paint:Landroid/graphics/Paint;
    iget-object v1, p0, Lcom/android/browser/WebViewScreenShot;->mScreenShot:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1, v2, v2, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 53
    invoke-virtual {p0}, Lcom/android/browser/WebViewScreenShot;->getShadowEnabled()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 56
    iget-object v1, p0, Lcom/android/browser/WebViewScreenShot;->mScreenShot:Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, v1}, Lcom/android/browser/WebViewScreenShot;->onDrawReflectionInShadow(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    .line 68
    .end local v0           #paint:Landroid/graphics/Paint;
    :cond_1a
    return-void
.end method

.method public recycleCache()V
    .registers 2

    .prologue
    .line 25
    invoke-super {p0}, Lcom/android/browser/AnimView;->recycleCache()V

    .line 26
    iget-object v0, p0, Lcom/android/browser/WebViewScreenShot;->mScreenShot:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_a

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/WebViewScreenShot;->mScreenShot:Landroid/graphics/Bitmap;

    .line 28
    :cond_a
    return-void
.end method

.method public setScreenShot(Landroid/webkit/WebView;)V
    .registers 3
    .parameter "webView"

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/android/browser/WebViewScreenShot;->getBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/WebViewScreenShot;->mScreenShot:Landroid/graphics/Bitmap;

    .line 44
    return-void
.end method
