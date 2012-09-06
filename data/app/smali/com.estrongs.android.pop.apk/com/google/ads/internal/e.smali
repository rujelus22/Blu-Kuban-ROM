.class public Lcom/google/ads/internal/e;
.super Landroid/webkit/WebView;


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/ads/AdActivity;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/google/ads/d;

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/google/ads/ah;Lcom/google/ads/d;)V
    .registers 7

    const/16 v3, 0xb

    const/4 v2, 0x0

    iget-object v0, p1, Lcom/google/ads/ah;->d:Lcom/google/ads/util/z;

    invoke-virtual {v0}, Lcom/google/ads/util/z;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/ads/internal/e;->b:Lcom/google/ads/d;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/internal/e;->a:Ljava/lang/ref/WeakReference;

    iput-boolean v2, p0, Lcom/google/ads/internal/e;->c:Z

    iput-boolean v2, p0, Lcom/google/ads/internal/e;->d:Z

    invoke-virtual {p0, v2}, Lcom/google/ads/internal/e;->setBackgroundColor(I)V

    invoke-static {p0}, Lcom/google/ads/util/AdUtil;->a(Landroid/webkit/WebView;)V

    invoke-virtual {p0}, Lcom/google/ads/internal/e;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    new-instance v1, Lcom/google/ads/internal/f;

    invoke-direct {v1, p0}, Lcom/google/ads/internal/f;-><init>(Lcom/google/ads/internal/e;)V

    invoke-virtual {p0, v1}, Lcom/google/ads/internal/e;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    sget v1, Lcom/google/ads/util/AdUtil;->a:I

    if-lt v1, v3, :cond_3a

    invoke-static {v0, p1}, Lcom/google/ads/util/k;->a(Landroid/webkit/WebSettings;Lcom/google/ads/ah;)V

    :cond_3a
    const/high16 v0, 0x200

    invoke-virtual {p0, v0}, Lcom/google/ads/internal/e;->setScrollBarStyle(I)V

    sget v0, Lcom/google/ads/util/AdUtil;->a:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_4e

    new-instance v0, Lcom/google/ads/util/v;

    invoke-direct {v0, p1}, Lcom/google/ads/util/v;-><init>(Lcom/google/ads/ah;)V

    invoke-virtual {p0, v0}, Lcom/google/ads/internal/e;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    :cond_4d
    :goto_4d
    return-void

    :cond_4e
    sget v0, Lcom/google/ads/util/AdUtil;->a:I

    if-lt v0, v3, :cond_4d

    new-instance v0, Lcom/google/ads/util/m;

    invoke-direct {v0, p1}, Lcom/google/ads/util/m;-><init>(Lcom/google/ads/ah;)V

    invoke-virtual {p0, v0}, Lcom/google/ads/internal/e;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    goto :goto_4d
.end method


# virtual methods
.method public a()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/ads/internal/e;->d()Lcom/google/ads/AdActivity;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/google/ads/AdActivity;->finish()V

    :cond_9
    return-void
.end method

.method public a(Lcom/google/ads/AdActivity;)V
    .registers 3

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/internal/e;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/ads/internal/e;->c:Z

    return-void
.end method

.method public b()V
    .registers 3

    sget v0, Lcom/google/ads/util/AdUtil;->a:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_9

    invoke-static {p0}, Lcom/google/ads/util/k;->a(Landroid/view/View;)V

    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/internal/e;->d:Z

    return-void
.end method

.method public c()V
    .registers 3

    iget-boolean v0, p0, Lcom/google/ads/internal/e;->d:Z

    if-eqz v0, :cond_d

    sget v0, Lcom/google/ads/util/AdUtil;->a:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_d

    invoke-static {p0}, Lcom/google/ads/util/k;->b(Landroid/view/View;)V

    :cond_d
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/internal/e;->d:Z

    return-void
.end method

.method public d()Lcom/google/ads/AdActivity;
    .registers 2

    iget-object v0, p0, Lcom/google/ads/internal/e;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/ads/internal/e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/AdActivity;

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public destroy()V
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

    invoke-static {v1, v0}, Lcom/google/ads/util/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public e()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/ads/internal/e;->d:Z

    return v0
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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

    invoke-static {v1, v0}, Lcom/google/ads/util/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public loadUrl(Ljava/lang/String;)V
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

    invoke-static {v1, v0}, Lcom/google/ads/util/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method protected onMeasure(II)V
    .registers 13

    const v0, 0x7fffffff

    const/high16 v9, 0x4000

    const/high16 v8, -0x8000

    invoke-virtual {p0}, Lcom/google/ads/internal/e;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V

    :goto_10
    return-void

    :cond_11
    iget-object v1, p0, Lcom/google/ads/internal/e;->b:Lcom/google/ads/d;

    if-eqz v1, :cond_19

    iget-boolean v1, p0, Lcom/google/ads/internal/e;->c:Z

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

    invoke-virtual {p0}, Lcom/google/ads/internal/e;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    iget-object v6, p0, Lcom/google/ads/internal/e;->b:Lcom/google/ads/d;

    invoke-virtual {v6}, Lcom/google/ads/d;->a()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v5

    float-to-int v6, v6

    iget-object v7, p0, Lcom/google/ads/internal/e;->b:Lcom/google/ads/d;

    invoke-virtual {v7}, Lcom/google/ads/d;->b()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v5

    float-to-int v7, v7

    if-eq v2, v8, :cond_51

    if-ne v2, v9, :cond_ac

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

    if-le v7, v0, :cond_a7

    :cond_63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not enough space to show ad! Wants: <"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

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

    invoke-static {v0}, Lcom/google/ads/util/b;->e(Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/ads/internal/e;->setVisibility(I)V

    invoke-virtual {p0, v3, v1}, Lcom/google/ads/internal/e;->setMeasuredDimension(II)V

    goto/16 :goto_10

    :cond_a7
    invoke-virtual {p0, v6, v7}, Lcom/google/ads/internal/e;->setMeasuredDimension(II)V

    goto/16 :goto_10

    :cond_ac
    move v2, v0

    goto :goto_52
.end method

.method public stopLoading()V
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

    invoke-static {v1, v0}, Lcom/google/ads/util/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method
