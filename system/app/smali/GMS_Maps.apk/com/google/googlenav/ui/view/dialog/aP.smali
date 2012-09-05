.class public abstract Lcom/google/googlenav/ui/view/dialog/aP;
.super Lcom/google/googlenav/ui/view/android/ap;


# instance fields
.field private a:Ljava/lang/CharSequence;

.field protected b:Landroid/webkit/WebView;

.field protected c:Landroid/webkit/WebViewClient;

.field private d:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/p;ILjava/lang/CharSequence;I)V
    .registers 6

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/view/android/ap;-><init>(Lcom/google/googlenav/ui/p;I)V

    iput-object p3, p0, Lcom/google/googlenav/ui/view/dialog/aP;->a:Ljava/lang/CharSequence;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aP;->d:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method protected a(Landroid/app/ActionBar;)V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aP;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aP;->d:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setIcon(I)V

    :cond_d
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aP;->a:Ljava/lang/CharSequence;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aP;->a:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_16
    return-void
.end method

.method protected a(Landroid/view/View;)V
    .registers 4

    const v0, 0x7f0f01ae

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aP;->b:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aP;->b:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aP;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aP;->c:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aP;->b:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/aP;->c:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    :cond_26
    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v0

    if-nez v0, :cond_3d

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aP;->b:Landroid/webkit/WebView;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->requestFocus(I)Z

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aP;->b:Landroid/webkit/WebView;

    new-instance v1, Lcom/google/googlenav/ui/view/dialog/aQ;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/dialog/aQ;-><init>(Lcom/google/googlenav/ui/view/dialog/aP;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_3d
    return-void
.end method

.method public a(Landroid/webkit/WebViewClient;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/aP;->c:Landroid/webkit/WebViewClient;

    return-void
.end method

.method protected c()Landroid/view/View;
    .registers 4

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/aP;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/aP;->h()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/dialog/aP;->a(Landroid/view/View;)V

    return-object v0
.end method

.method protected h()I
    .registers 2

    const v0, 0x7f030193

    return v0
.end method

.method protected m()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/aP;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    return-void
.end method
