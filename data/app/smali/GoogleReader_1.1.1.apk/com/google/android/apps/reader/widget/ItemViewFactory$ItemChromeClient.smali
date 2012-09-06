.class Lcom/google/android/apps/reader/widget/ItemViewFactory$ItemChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "ItemViewFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/reader/widget/ItemViewFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ItemChromeClient"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 224
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/reader/widget/ItemViewFactory$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 224
    invoke-direct {p0}, Lcom/google/android/apps/reader/widget/ItemViewFactory$ItemChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .registers 8
    .parameter "view"
    .parameter "dialog"
    .parameter "userGesture"
    .parameter "resultMsg"

    .prologue
    .line 238
    if-eqz p3, :cond_17

    .line 239
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 240
    .local v0, context:Landroid/content/Context;
    iget-object v1, p4, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/webkit/WebView$WebViewTransport;

    .line 248
    .local v1, transport:Landroid/webkit/WebView$WebViewTransport;
    new-instance v2, Landroid/webkit/WebView;

    invoke-direct {v2, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView$WebViewTransport;->setWebView(Landroid/webkit/WebView;)V

    .line 250
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    .line 251
    const/4 v2, 0x1

    .line 253
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #transport:Landroid/webkit/WebView$WebViewTransport;
    :goto_16
    return v2

    :cond_17
    const/4 v2, 0x0

    goto :goto_16
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .registers 7
    .parameter "view"
    .parameter "newProgress"

    .prologue
    .line 228
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 229
    .local v1, context:Landroid/content/Context;
    instance-of v3, v1, Lcom/google/android/apps/reader/widget/ItemViewFactory$OnProgressChangeListener;

    if-eqz v3, :cond_f

    .line 230
    move-object v0, v1

    check-cast v0, Lcom/google/android/apps/reader/widget/ItemViewFactory$OnProgressChangeListener;

    move-object v2, v0

    .line 231
    .local v2, listener:Lcom/google/android/apps/reader/widget/ItemViewFactory$OnProgressChangeListener;
    invoke-interface {v2, p1, p2}, Lcom/google/android/apps/reader/widget/ItemViewFactory$OnProgressChangeListener;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 233
    .end local v2           #listener:Lcom/google/android/apps/reader/widget/ItemViewFactory$OnProgressChangeListener;
    :cond_f
    return-void
.end method
