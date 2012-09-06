.class public abstract Lcom/google/googlenav/ui/view/dialog/cO;
.super Lcom/google/googlenav/ui/view/android/V;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/CharSequence;

.field private b:Ljava/lang/Integer;

.field protected n:Landroid/webkit/WebView;

.field protected o:Landroid/webkit/WebViewClient;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/g;ILjava/lang/CharSequence;I)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/view/android/V;-><init>(Lcom/google/googlenav/ui/g;I)V

    .line 57
    iput-object p3, p0, Lcom/google/googlenav/ui/view/dialog/cO;->a:Ljava/lang/CharSequence;

    .line 58
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cO;->b:Ljava/lang/Integer;

    .line 59
    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/ui/g;Ljava/lang/CharSequence;Ljava/lang/Integer;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/V;-><init>(Lcom/google/googlenav/ui/g;)V

    .line 43
    iput-object p2, p0, Lcom/google/googlenav/ui/view/dialog/cO;->a:Ljava/lang/CharSequence;

    .line 44
    iput-object p3, p0, Lcom/google/googlenav/ui/view/dialog/cO;->b:Ljava/lang/Integer;

    .line 45
    return-void
.end method


# virtual methods
.method protected a(Landroid/app/ActionBar;)V
    .registers 3
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cO;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_d

    .line 64
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cO;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setIcon(I)V

    .line 66
    :cond_d
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cO;->a:Ljava/lang/CharSequence;

    if-eqz v0, :cond_16

    .line 67
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cO;->a:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 69
    :cond_16
    return-void
.end method

.method protected a(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 107
    const v0, 0x7f100014

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cO;->n:Landroid/webkit/WebView;

    .line 108
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cO;->n:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 109
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cO;->n:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 110
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cO;->o:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_26

    .line 111
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cO;->n:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/cO;->o:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 117
    :cond_26
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-nez v0, :cond_3d

    .line 118
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cO;->n:Landroid/webkit/WebView;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->requestFocus(I)Z

    .line 119
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cO;->n:Landroid/webkit/WebView;

    new-instance v1, Lcom/google/googlenav/ui/view/dialog/cP;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/dialog/cP;-><init>(Lcom/google/googlenav/ui/view/dialog/cO;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 134
    :cond_3d
    return-void
.end method

.method public a(Landroid/webkit/WebViewClient;)V
    .registers 2
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/cO;->o:Landroid/webkit/WebViewClient;

    .line 100
    return-void
.end method

.method protected c()Landroid/view/View;
    .registers 4

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/cO;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/cO;->l()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 148
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/dialog/cO;->a(Landroid/view/View;)V

    .line 149
    return-object v0
.end method

.method protected l()I
    .registers 2

    .prologue
    .line 75
    const v0, 0x7f0401ed

    return v0
.end method

.method public o()Landroid/webkit/WebView;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cO;->n:Landroid/webkit/WebView;

    return-object v0
.end method

.method protected v()V
    .registers 2

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/cO;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 141
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 142
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 143
    return-void
.end method
