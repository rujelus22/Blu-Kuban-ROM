.class public Lcom/google/googlenav/ui/wizard/hE;
.super Lcom/google/googlenav/ui/view/dialog/c;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/hA;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/hA;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/hE;->a:Lcom/google/googlenav/ui/wizard/hA;

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/dialog/c;-><init>(Lcom/google/googlenav/ui/p;)V

    return-void
.end method


# virtual methods
.method protected c()Landroid/view/View;
    .registers 6

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/hE;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03016d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hE;->a:Lcom/google/googlenav/ui/wizard/hA;

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/wizard/hA;->a(Landroid/view/View;)V

    const v0, 0x7f0f022e

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    const v0, 0x7f0f01ae

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    new-instance v1, Lcom/google/googlenav/ui/wizard/hF;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/hF;-><init>(Lcom/google/googlenav/ui/wizard/hE;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/M;->ak()Z

    move-result v1

    if-eqz v1, :cond_37

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setInitialScale(I)V

    :cond_37
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    :try_start_3f
    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/hE;->a:Lcom/google/googlenav/ui/wizard/hA;

    invoke-static {v3}, Lcom/google/googlenav/ui/wizard/hA;->a(Lcom/google/googlenav/ui/wizard/hA;)[B

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-direct {v1, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_4c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3f .. :try_end_4c} :catch_67

    :goto_4c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data:text/html;charset=utf-8,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-object v2

    :catch_67
    move-exception v1

    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/hE;->a:Lcom/google/googlenav/ui/wizard/hA;

    invoke-static {v3}, Lcom/google/googlenav/ui/wizard/hA;->a(Lcom/google/googlenav/ui/wizard/hA;)[B

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    goto :goto_4c
.end method

.method public f()Ljava/lang/String;
    .registers 2

    const/16 v0, 0x4b0

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
