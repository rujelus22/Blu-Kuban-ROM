.class public Lcom/estrongs/android/pop/view/SearchPageActivity;
.super Lcom/estrongs/android/pop/esclasses/ESActivity;


# instance fields
.field private a:Landroid/webkit/WebView;

.field private b:Lcom/estrongs/android/pop/view/mb;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;-><init>()V

    iput-object v1, p0, Lcom/estrongs/android/pop/view/SearchPageActivity;->a:Landroid/webkit/WebView;

    new-instance v0, Lcom/estrongs/android/pop/view/mb;

    invoke-direct {v0, p0, v1}, Lcom/estrongs/android/pop/view/mb;-><init>(Lcom/estrongs/android/pop/view/SearchPageActivity;Lcom/estrongs/android/pop/view/mb;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/SearchPageActivity;->b:Lcom/estrongs/android/pop/view/mb;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    if-eqz p2, :cond_37

    invoke-static {p2}, Lcom/estrongs/android/util/ab;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    if-nez p1, :cond_1f

    move-object p1, v0

    :cond_b
    :goto_b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://m.baidu.com/s?from=1648a&word="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1e
    return-object v0

    :cond_1f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_b

    :cond_37
    if-eqz p1, :cond_4d

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://m.baidu.com/s?from=1648a&word="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1e

    :cond_4d
    const-string v0, "http://m.baidu.com/s?from=1648a"

    goto :goto_1e
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/view/SearchPageActivity;->requestWindowFeature(I)Z

    const v0, 0x7f030046

    invoke-super {p0, v0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->setContentView(I)V

    const v0, 0x7f07020c

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/SearchPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/SearchPageActivity;->a:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/SearchPageActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/SearchPageActivity;->a:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/estrongs/android/pop/view/SearchPageActivity;->b:Lcom/estrongs/android/pop/view/mb;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/SearchPageActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    const-string v2, "utf-8"

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    const v0, 0x7f07020b

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/SearchPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v2, Lcom/estrongs/android/pop/view/ma;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/view/ma;-><init>(Lcom/estrongs/android/pop/view/SearchPageActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/SearchPageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_60

    invoke-virtual {p0, v3, v1}, Lcom/estrongs/android/pop/view/SearchPageActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/SearchPageActivity;->finish()V

    :goto_5f
    return-void

    :cond_60
    const-string v2, "keyword"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "type"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v3, Lcom/estrongs/android/pop/view/FileExplorerActivity;->u:I

    if-nez v3, :cond_7a

    invoke-direct {p0, v2, v0}, Lcom/estrongs/android/pop/view/SearchPageActivity;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_74
    iget-object v1, p0, Lcom/estrongs/android/pop/view/SearchPageActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_5f

    :cond_7a
    move-object v0, v1

    goto :goto_74
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_16

    iget-object v1, p0, Lcom/estrongs/android/pop/view/SearchPageActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/estrongs/android/pop/view/SearchPageActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->goBack()V

    :goto_11
    return v0

    :cond_12
    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/SearchPageActivity;->finish()V

    goto :goto_11

    :cond_16
    const/4 v0, 0x0

    goto :goto_11
.end method
