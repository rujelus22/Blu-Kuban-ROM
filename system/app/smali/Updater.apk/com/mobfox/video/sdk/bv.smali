.class public final Lcom/mobfox/video/sdk/bv;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Lcom/mobfox/video/sdk/w;


# instance fields
.field private a:Landroid/webkit/WebView;

.field private b:Lcom/mobfox/video/sdk/by;

.field private c:Landroid/app/Activity;

.field private d:Landroid/widget/ImageView;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;ZZZLcom/mobfox/video/sdk/ci;)V
    .registers 13

    const/16 v6, 0x11

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, -0x1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v4, p0, Lcom/mobfox/video/sdk/bv;->e:Z

    iput-object p1, p0, Lcom/mobfox/video/sdk/bv;->c:Landroid/app/Activity;

    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mobfox/video/sdk/bv;->a:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/mobfox/video/sdk/bv;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, p3}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/bv;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, p3}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/bv;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setPluginsEnabled(Z)V

    iget-boolean v1, p0, Lcom/mobfox/video/sdk/bv;->e:Z

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    iget-boolean v1, p0, Lcom/mobfox/video/sdk/bv;->e:Z

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    new-instance v0, Lcom/mobfox/video/sdk/by;

    iget-object v1, p0, Lcom/mobfox/video/sdk/bv;->c:Landroid/app/Activity;

    invoke-direct {v0, v1, p2}, Lcom/mobfox/video/sdk/by;-><init>(Landroid/app/Activity;Z)V

    iput-object v0, p0, Lcom/mobfox/video/sdk/bv;->b:Lcom/mobfox/video/sdk/by;

    iget-object v0, p0, Lcom/mobfox/video/sdk/bv;->a:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/mobfox/video/sdk/bv;->b:Lcom/mobfox/video/sdk/by;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/bv;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/mobfox/video/sdk/bu;

    iget-object v2, p0, Lcom/mobfox/video/sdk/bv;->c:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/mobfox/video/sdk/bu;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    if-eqz p4, :cond_c1

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v0, v1}, Lcom/mobfox/video/sdk/bv;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/bv;->a:Landroid/webkit/WebView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v0, v1}, Lcom/mobfox/video/sdk/bv;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mobfox/video/sdk/bv;->d:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/mobfox/video/sdk/bv;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/bv;->d:Landroid/widget/ImageView;

    new-instance v1, Lcom/mobfox/video/sdk/bw;

    invoke-direct {v1, p0, p1}, Lcom/mobfox/video/sdk/bw;-><init>(Lcom/mobfox/video/sdk/bv;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/high16 v0, 0x420c

    invoke-virtual {p0}, Lcom/mobfox/video/sdk/bv;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v4, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/mobfox/video/sdk/bv;->d:Landroid/widget/ImageView;

    const/16 v2, -0x12

    invoke-virtual {p5, v2}, Lcom/mobfox/video/sdk/ci;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x35

    invoke-direct {v1, v0, v0, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    const/high16 v0, 0x40c0

    invoke-virtual {p0}, Lcom/mobfox/video/sdk/bv;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v4, v0, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget-object v0, p0, Lcom/mobfox/video/sdk/bv;->d:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lcom/mobfox/video/sdk/bv;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_c0
    return-void

    :cond_c1
    iget-object v0, p0, Lcom/mobfox/video/sdk/bv;->a:Landroid/webkit/WebView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v0, v1}, Lcom/mobfox/video/sdk/bv;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_c0
.end method

.method static synthetic a(Lcom/mobfox/video/sdk/bv;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mobfox/video/sdk/bv;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/mobfox/video/sdk/bv;)Lcom/mobfox/video/sdk/by;
    .registers 2

    iget-object v0, p0, Lcom/mobfox/video/sdk/bv;->b:Lcom/mobfox/video/sdk/by;

    return-object v0
.end method

.method static synthetic c(Lcom/mobfox/video/sdk/bv;)Landroid/webkit/WebView;
    .registers 2

    iget-object v0, p0, Lcom/mobfox/video/sdk/bv;->a:Landroid/webkit/WebView;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .registers 5

    iget-object v0, p0, Lcom/mobfox/video/sdk/bv;->b:Lcom/mobfox/video/sdk/by;

    invoke-virtual {v0}, Lcom/mobfox/video/sdk/by;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    long-to-int v0, v0

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public final a(Lcom/mobfox/video/sdk/bz;)V
    .registers 3

    iget-object v0, p0, Lcom/mobfox/video/sdk/bv;->b:Lcom/mobfox/video/sdk/by;

    invoke-virtual {v0, p1}, Lcom/mobfox/video/sdk/by;->a(Lcom/mobfox/video/sdk/bz;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 5

    const/4 v2, 0x0

    new-instance v0, Lcom/mobfox/video/sdk/bx;

    invoke-direct {v0, p0, v2}, Lcom/mobfox/video/sdk/bx;-><init>(Lcom/mobfox/video/sdk/bv;B)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/mobfox/video/sdk/bx;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 6

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mobfox/video/sdk/bv;->b:Lcom/mobfox/video/sdk/by;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/mobfox/video/sdk/by;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mobfox/video/sdk/bv;->a:Landroid/webkit/WebView;

    const-string v2, "text/html"

    const-string v3, "UTF-8"

    invoke-virtual {v1, v0, v2, v3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b()Z
    .registers 2

    iget-object v0, p0, Lcom/mobfox/video/sdk/bv;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    return v0
.end method

.method public final c()Z
    .registers 2

    iget-object v0, p0, Lcom/mobfox/video/sdk/bv;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    return v0
.end method

.method public final d()V
    .registers 2

    iget-object v0, p0, Lcom/mobfox/video/sdk/bv;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    return-void
.end method

.method public final e()V
    .registers 2

    iget-object v0, p0, Lcom/mobfox/video/sdk/bv;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    return-void
.end method

.method public final f()V
    .registers 2

    iget-object v0, p0, Lcom/mobfox/video/sdk/bv;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    return-void
.end method

.method public final g()V
    .registers 4

    iget-object v0, p0, Lcom/mobfox/video/sdk/bv;->b:Lcom/mobfox/video/sdk/by;

    invoke-virtual {v0}, Lcom/mobfox/video/sdk/by;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_10

    :cond_e
    const-string v0, "about:blank"

    :cond_10
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/bv;->c:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final h()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mobfox/video/sdk/bv;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final i()V
    .registers 3

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mobfox/video/sdk/bv;->e:Z

    iget-object v0, p0, Lcom/mobfox/video/sdk/bv;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lcom/mobfox/video/sdk/bv;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 v0, 0x0

    return v0
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public final setBackgroundColor(I)V
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/bv;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    return-void
.end method
