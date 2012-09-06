.class public LrH;
.super Landroid/webkit/WebChromeClient;
.source "WebViewOpenActivity.java"


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;

.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;)V
    .registers 3
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, LrH;->a:Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, LrH;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 163
    iget-object v0, p0, LrH;->a:Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a(Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;)Lry;

    move-result-object v0

    if-nez v0, :cond_b

    .line 185
    :cond_a
    :goto_a
    return-void

    .line 169
    :cond_b
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 170
    iget-object v0, p0, LrH;->a:Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a(Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;)Lry;

    move-result-object v0

    invoke-virtual {v0}, Lry;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6f

    iget-object v0, p0, LrH;->a:Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a(Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;)Lry;

    move-result-object v0

    invoke-virtual {v0}, Lry;->a()Ljava/lang/String;

    move-result-object v0

    .line 172
    :goto_25
    if-eqz v1, :cond_4a

    iget-object v2, p0, LrH;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4a

    .line 173
    iput-object v1, p0, LrH;->a:Ljava/lang/String;

    .line 174
    iget-object v1, p0, LrH;->a:Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;

    invoke-virtual {v1}, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, LcY;->opening_document:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 176
    iget-object v2, p0, LrH;->a:Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 178
    :cond_4a
    iget-object v1, p0, LrH;->a:Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;

    mul-int/lit8 v2, p2, 0x64

    invoke-virtual {v1, v2}, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->setProgress(I)V

    .line 181
    const/16 v1, 0x64

    if-ne p2, v1, :cond_a

    .line 182
    iget-object v1, p0, LrH;->a:Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;

    invoke-virtual {v1}, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, LcY;->opened_document:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 183
    iget-object v2, p0, LrH;->a:Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_a

    :cond_6f
    move-object v0, v1

    .line 170
    goto :goto_25
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 190
    iget-object v0, p0, LrH;->a:Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a(Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;)Landroid/webkit/WebView;

    move-result-object v0

    const-string v1, "javascript:var styleElement = document.createElement(\"style\");var cssCode=\"#og_head { visibility:hidden; height:0px; } .mobile-footer {display:none}  td.links {display:none} #page-footer {display:none} \"; styleElement.type = \"text/css\";styleElement.appendChild(document.createTextNode(cssCode));document.getElementsByTagName(\"head\")[0].appendChild(styleElement);"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, LrH;->a:Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "javascriptCode"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 192
    if-eqz v0, :cond_35

    .line 193
    iget-object v1, p0, LrH;->a:Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;

    invoke-static {v1}, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a(Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;)Landroid/webkit/WebView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 195
    :cond_35
    return-void
.end method
