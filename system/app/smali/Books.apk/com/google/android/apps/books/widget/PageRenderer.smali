.class public Lcom/google/android/apps/books/widget/PageRenderer;
.super Ljava/lang/Object;
.source "PageRenderer.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/widget/PageRenderer$Callback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/google/android/apps/books/widget/PageRenderer$Callback;

.field private mHandler:Landroid/os/Handler;

.field private mNumActiveRenderings:I

.field private mPageProvider:Lcom/google/android/apps/books/widget/PageProvider;

.field private mRequestQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method private getBitmap()Landroid/graphics/Bitmap;
    .registers 3

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageRenderer;->mWebView:Landroid/webkit/WebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDrawingCacheEnabled(Z)V

    .line 57
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageRenderer;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized serviceNextRequest()V
    .registers 7

    .prologue
    .line 84
    monitor-enter p0

    :try_start_1
    iget v3, p0, Lcom/google/android/apps/books/widget/PageRenderer;->mNumActiveRenderings:I

    if-lez v3, :cond_e

    .line 85
    const-string v3, ""

    const-string v4, "PageRenderer.serviceNextRequest(): Renderer is busy. Waiting..."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_58

    .line 103
    :cond_c
    :goto_c
    monitor-exit p0

    return-void

    .line 89
    :cond_e
    :try_start_e
    iget-object v3, p0, Lcom/google/android/apps/books/widget/PageRenderer;->mRequestQueue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 90
    .local v0, head:Ljava/lang/Integer;
    if-eqz v0, :cond_c

    .line 91
    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PageRenderer.serviceNextRequest(): Kicking off render of page "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget v3, p0, Lcom/google/android/apps/books/widget/PageRenderer;->mNumActiveRenderings:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/android/apps/books/widget/PageRenderer;->mNumActiveRenderings:I

    .line 95
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 96
    .local v2, page:I
    iget-object v3, p0, Lcom/google/android/apps/books/widget/PageRenderer;->mWebView:Landroid/webkit/WebView;

    iget-object v4, p0, Lcom/google/android/apps/books/widget/PageRenderer;->mPageProvider:Lcom/google/android/apps/books/widget/PageProvider;

    invoke-interface {v4, v2}, Lcom/google/android/apps/books/widget/PageProvider;->getDataUrl(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 98
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 99
    .local v1, message:Landroid/os/Message;
    const/16 v3, 0x39

    iput v3, v1, Landroid/os/Message;->what:I

    .line 100
    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 101
    iget-object v3, p0, Lcom/google/android/apps/books/widget/PageRenderer;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_57
    .catchall {:try_start_e .. :try_end_57} :catchall_58

    goto :goto_c

    .line 84
    .end local v0           #head:Ljava/lang/Integer;
    .end local v1           #message:Landroid/os/Message;
    .end local v2           #page:I
    :catchall_58
    move-exception v3

    monitor-exit p0

    throw v3
.end method


# virtual methods
.method public declared-synchronized handleMessage(Landroid/os/Message;)Z
    .registers 6
    .parameter "msg"

    .prologue
    .line 61
    monitor-enter p0

    const/4 v0, 0x0

    .line 63
    .local v0, result:Z
    :try_start_2
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_42

    .line 74
    :goto_7
    const/4 v0, 0x0

    .line 77
    invoke-direct {p0}, Lcom/google/android/apps/books/widget/PageRenderer;->serviceNextRequest()V
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_3e

    .line 78
    monitor-exit p0

    return v0

    .line 65
    :pswitch_d
    :try_start_d
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PageRenderer.handleMessage(): Got rendered page "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget v1, p0, Lcom/google/android/apps/books/widget/PageRenderer;->mNumActiveRenderings:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/apps/books/widget/PageRenderer;->mNumActiveRenderings:I

    .line 68
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageRenderer;->mCallback:Lcom/google/android/apps/books/widget/PageRenderer$Callback;

    if-eqz v1, :cond_3c

    .line 69
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageRenderer;->mCallback:Lcom/google/android/apps/books/widget/PageRenderer$Callback;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0}, Lcom/google/android/apps/books/widget/PageRenderer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/google/android/apps/books/widget/PageRenderer$Callback;->onRenderFinished(ILandroid/graphics/Bitmap;)V
    :try_end_3c
    .catchall {:try_start_d .. :try_end_3c} :catchall_3e

    .line 71
    :cond_3c
    const/4 v0, 0x1

    goto :goto_7

    .line 61
    :catchall_3e
    move-exception v1

    monitor-exit p0

    throw v1

    .line 63
    nop

    :pswitch_data_42
    .packed-switch 0x39
        :pswitch_d
    .end packed-switch
.end method
