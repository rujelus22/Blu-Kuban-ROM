.class public final Lcom/google/ads/a/c;
.super Landroid/webkit/WebView;


# instance fields
.field private a:Ljava/lang/ref/WeakReference;

.field private b:Lcom/google/ads/g;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/google/ads/am;Lcom/google/ads/g;)V
    .registers 11

    const/16 v7, 0xb

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v0, p1, Lcom/google/ads/am;->d:Lcom/google/ads/util/ab;

    invoke-virtual {v0}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/ads/a/c;->b:Lcom/google/ads/g;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/a/c;->a:Ljava/lang/ref/WeakReference;

    iput-boolean v6, p0, Lcom/google/ads/a/c;->c:Z

    invoke-virtual {p0, v6}, Lcom/google/ads/a/c;->setBackgroundColor(I)V

    invoke-static {p0}, Lcom/google/ads/util/AdUtil;->a(Landroid/webkit/WebView;)V

    invoke-virtual {p0}, Lcom/google/ads/a/c;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    new-instance v0, Lcom/google/ads/a/d;

    invoke-direct {v0, p0}, Lcom/google/ads/a/d;-><init>(Lcom/google/ads/a/c;)V

    invoke-virtual {p0, v0}, Lcom/google/ads/a/c;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    sget v0, Lcom/google/ads/util/AdUtil;->a:I

    if-lt v0, v7, :cond_73

    iget-object v0, p1, Lcom/google/ads/am;->d:Lcom/google/ads/util/ab;

    invoke-virtual {v0}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebSettings;->setAppCacheMaxSize(J)V

    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "admob"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    const-string v2, "admob"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    :cond_73
    const/high16 v0, 0x200

    invoke-virtual {p0, v0}, Lcom/google/ads/a/c;->setScrollBarStyle(I)V

    sget v0, Lcom/google/ads/util/AdUtil;->a:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_87

    new-instance v0, Lcom/google/ads/util/y;

    invoke-direct {v0, p1}, Lcom/google/ads/util/y;-><init>(Lcom/google/ads/am;)V

    invoke-virtual {p0, v0}, Lcom/google/ads/a/c;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    :cond_86
    :goto_86
    return-void

    :cond_87
    sget v0, Lcom/google/ads/util/AdUtil;->a:I

    if-lt v0, v7, :cond_86

    new-instance v0, Lcom/google/ads/util/p;

    invoke-direct {v0, p1}, Lcom/google/ads/util/p;-><init>(Lcom/google/ads/am;)V

    invoke-virtual {p0, v0}, Lcom/google/ads/a/c;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    goto :goto_86
.end method


# virtual methods
.method public final a()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/ads/a/c;->b()Lcom/google/ads/AdActivity;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/google/ads/AdActivity;->finish()V

    :cond_9
    return-void
.end method

.method public final a(Lcom/google/ads/AdActivity;)V
    .registers 3

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/a/c;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/ads/a/c;->c:Z

    return-void
.end method

.method public final b()Lcom/google/ads/AdActivity;
    .registers 2

    iget-object v0, p0, Lcom/google/ads/a/c;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/ads/a/c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/AdActivity;

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public final destroy()V
    .registers 3

    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    const-string v1, "An error occurred while destroying an AdWebView:"

    invoke-static {v1, v0}, Lcom/google/ads/util/d;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public final loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    :try_start_0
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    const-string v1, "An error occurred while loading data in AdWebView:"

    invoke-static {v1, v0}, Lcom/google/ads/util/d;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public final loadUrl(Ljava/lang/String;)V
    .registers 4

    :try_start_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    const-string v1, "An error occurred while loading a URL in AdWebView:"

    invoke-static {v1, v0}, Lcom/google/ads/util/d;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method protected final onMeasure(II)V
    .registers 13

    const v0, 0x7fffffff

    const/high16 v9, 0x4000

    const/high16 v8, -0x8000

    invoke-virtual {p0}, Lcom/google/ads/a/c;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V

    :goto_10
    return-void

    :cond_11
    iget-object v1, p0, Lcom/google/ads/a/c;->b:Lcom/google/ads/g;

    if-eqz v1, :cond_19

    iget-boolean v1, p0, Lcom/google/ads/a/c;->c:Z

    if-eqz v1, :cond_1d

    :cond_19
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V

    goto :goto_10

    :cond_1d
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/google/ads/a/c;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    iget-object v6, p0, Lcom/google/ads/a/c;->b:Lcom/google/ads/g;

    invoke-virtual {v6}, Lcom/google/ads/g;->a()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v5

    float-to-int v6, v6

    iget-object v7, p0, Lcom/google/ads/a/c;->b:Lcom/google/ads/g;

    invoke-virtual {v7}, Lcom/google/ads/g;->b()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v5

    float-to-int v7, v7

    if-eq v2, v8, :cond_51

    if-ne v2, v9, :cond_a8

    :cond_51
    move v2, v3

    :goto_52
    if-eq v4, v8, :cond_56

    if-ne v4, v9, :cond_57

    :cond_56
    move v0, v1

    :cond_57
    int-to-float v4, v6

    const/high16 v8, 0x40c0

    mul-float/2addr v5, v8

    sub-float/2addr v4, v5

    int-to-float v2, v2

    cmpl-float v2, v4, v2

    if-gtz v2, :cond_63

    if-le v7, v0, :cond_a3

    :cond_63
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Not enough space to show ad! Wants: <"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ">, Has: <"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/d;->e(Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/ads/a/c;->setVisibility(I)V

    invoke-virtual {p0, v3, v1}, Lcom/google/ads/a/c;->setMeasuredDimension(II)V

    goto/16 :goto_10

    :cond_a3
    invoke-virtual {p0, v6, v7}, Lcom/google/ads/a/c;->setMeasuredDimension(II)V

    goto/16 :goto_10

    :cond_a8
    move v2, v0

    goto :goto_52
.end method

.method public final stopLoading()V
    .registers 3

    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->stopLoading()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    const-string v1, "An error occurred while stopping loading in AdWebView:"

    invoke-static {v1, v0}, Lcom/google/ads/util/d;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method
