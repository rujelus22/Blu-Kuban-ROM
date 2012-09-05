.class public Lcom/sprint/dsa/dss/DsaWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "DsaWebViewClient.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SprintZone_DSA"


# instance fields
.field private dsaClient:Lcom/sprint/dsa/dss/DsaClient;

.field private images:I

.field private page:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sprint/dsa/dss/DsaClient;)V
    .registers 3
    .parameter "activity"

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprint/dsa/dss/DsaWebViewClient;->page:Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/sprint/dsa/dss/DsaWebViewClient;->images:I

    .line 28
    iput-object p1, p0, Lcom/sprint/dsa/dss/DsaWebViewClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    .line 29
    return-void
.end method

.method static synthetic access$0(Lcom/sprint/dsa/dss/DsaWebViewClient;)Lcom/sprint/dsa/dss/DsaClient;
    .registers 2
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaWebViewClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    return-object v0
.end method

.method static synthetic access$1(Lcom/sprint/dsa/dss/DsaWebViewClient;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaWebViewClient;->page:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getFirstPage()V
    .registers 4

    .prologue
    .line 245
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaWebViewClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    iget-boolean v0, v0, Lcom/sprint/dsa/dss/DsaClient;->dsaDebug:Z

    if-eqz v0, :cond_d

    const-string v0, "SprintZone_DSA"

    const-string v1, "DsaWebViewClient.getFirstPage()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_d
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaWebViewClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sprint/dsa/dss/DsaClient;->loading:Z

    .line 248
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaWebViewClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    iget-object v0, v0, Lcom/sprint/dsa/dss/DsaClient;->nextURL:Ljava/lang/String;

    if-nez v0, :cond_23

    .line 249
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaWebViewClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    new-instance v1, Lcom/sprint/dsa/dss/DsaWebViewClient$6;

    invoke-direct {v1, p0}, Lcom/sprint/dsa/dss/DsaWebViewClient$6;-><init>(Lcom/sprint/dsa/dss/DsaWebViewClient;)V

    invoke-virtual {v0, v1}, Lcom/sprint/dsa/dss/DsaClient;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 262
    :goto_22
    return-void

    .line 258
    :cond_23
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaWebViewClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    iget-object v0, v0, Lcom/sprint/dsa/dss/DsaClient;->dsaHttpClient:Lcom/sprint/dsa/dss/DsaHttpClient;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sprint/dsa/dss/DsaWebViewClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    iget-object v2, v2, Lcom/sprint/dsa/dss/DsaClient;->nextURL:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sprint/dsa/dss/DsaWebViewClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    iget-object v2, v2, Lcom/sprint/dsa/dss/DsaClient;->query:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sprint/dsa/dss/DsaHttpClient;->execute(Ljava/lang/String;)V

    goto :goto_22
.end method

.method public loadData(Ljava/lang/String;)V
    .registers 5
    .parameter "str"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaWebViewClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    iget-boolean v0, v0, Lcom/sprint/dsa/dss/DsaClient;->dsaDebug:Z

    if-eqz v0, :cond_1a

    const-string v0, "SprintZone_DSA"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DsaWebViewClient.loadData(): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_1a
    if-nez p1, :cond_24

    .line 211
    const-string v0, "SprintZone_DSA"

    const-string v1, "HttpClient returned null string"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :goto_23
    return-void

    .line 214
    :cond_24
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaWebViewClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    new-instance v1, Lcom/sprint/dsa/dss/DsaWebViewClient$4;

    invoke-direct {v1, p0, p1}, Lcom/sprint/dsa/dss/DsaWebViewClient$4;-><init>(Lcom/sprint/dsa/dss/DsaWebViewClient;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sprint/dsa/dss/DsaClient;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 226
    iput-object p1, p0, Lcom/sprint/dsa/dss/DsaWebViewClient;->page:Ljava/lang/String;

    goto :goto_23
.end method

.method public loadImages()V
    .registers 3

    .prologue
    .line 230
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaWebViewClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    new-instance v1, Lcom/sprint/dsa/dss/DsaWebViewClient$5;

    invoke-direct {v1, p0}, Lcom/sprint/dsa/dss/DsaWebViewClient$5;-><init>(Lcom/sprint/dsa/dss/DsaWebViewClient;)V

    invoke-virtual {v0, v1}, Lcom/sprint/dsa/dss/DsaClient;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 242
    return-void
.end method

.method public onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .registers 6
    .parameter "view"
    .parameter "dontResend"
    .parameter "resend"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaWebViewClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    iget-boolean v0, v0, Lcom/sprint/dsa/dss/DsaClient;->dsaDebug:Z

    if-eqz v0, :cond_d

    const-string v0, "SprintZone_DSA"

    const-string v1, "DsaWebViewClient.onFormResubmission()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_d
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    .line 78
    return-void
.end method

.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 8
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v4, -0x1

    .line 95
    const-string v1, "http"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 111
    :cond_9
    :goto_9
    return-void

    .line 97
    :cond_a
    iget-object v1, p0, Lcom/sprint/dsa/dss/DsaWebViewClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    iget-boolean v1, v1, Lcom/sprint/dsa/dss/DsaClient;->dsaDebug:Z

    if-eqz v1, :cond_24

    const-string v1, "SprintZone_DSA"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DsaWebViewClient.onLoadResource(): "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_24
    const-string v1, "image"

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v4, :cond_9

    .line 102
    :try_start_2c
    iget-object v1, p0, Lcom/sprint/dsa/dss/DsaWebViewClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    iget-object v1, v1, Lcom/sprint/dsa/dss/DsaClient;->dsaHttpClient:Lcom/sprint/dsa/dss/DsaHttpClient;

    invoke-virtual {v1, p2}, Lcom/sprint/dsa/dss/DsaHttpClient;->getResource(Ljava/lang/String;)V

    .line 103
    const-string v1, "image"

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v4, :cond_41

    iget v1, p0, Lcom/sprint/dsa/dss/DsaWebViewClient;->images:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sprint/dsa/dss/DsaWebViewClient;->images:I
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_41} :catch_45

    .line 110
    :cond_41
    :goto_41
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_9

    .line 104
    :catch_45
    move-exception v0

    .line 105
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SprintZone_DSA"

    const-string v2, "getResource"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_41
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 7
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v3, 0x0

    .line 39
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaWebViewClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    iget-boolean v0, v0, Lcom/sprint/dsa/dss/DsaClient;->dsaDebug:Z

    if-eqz v0, :cond_1b

    const-string v0, "SprintZone_DSA"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DsaWebViewClient.onPageFinished(): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :cond_1b
    iget v0, p0, Lcom/sprint/dsa/dss/DsaWebViewClient;->images:I

    if-lez v0, :cond_25

    .line 42
    invoke-virtual {p0}, Lcom/sprint/dsa/dss/DsaWebViewClient;->loadImages()V

    .line 43
    iput v3, p0, Lcom/sprint/dsa/dss/DsaWebViewClient;->images:I

    .line 72
    :goto_24
    return-void

    .line 46
    :cond_25
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaWebViewClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    iput-boolean v3, v0, Lcom/sprint/dsa/dss/DsaClient;->loading:Z

    .line 48
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaWebViewClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    iget-object v0, v0, Lcom/sprint/dsa/dss/DsaClient;->dsaWebView:Landroid/webkit/WebView;

    const-string v1, "javascript: (function() {var elem = document.getElementsByName (\'SELFACTIVATION_leftsoft\');if(elem.length > 0){try{window.dsa.setLeftSoftKey(elem[0].value) ;window.dsa.setExitMessage(elem[0].getAttribute(\'message\'));}catch(err){ }}elem = document.getElementsByName(\'SELFACTIVATION_nextURL\');if(elem.length > 0)window.dsa.setNextURL(elem[0].value);elem = document.getElementsByName(\'SELFACTIVATION_rightsoft\');if(elem.length > 0){try{window.dsa.setRightSoftKey(elem[0].value);window.dsa.setExitMessage(elem[0].getAttribute(\'message\'));}catch(err){ }}elem = document.getElementsByName(\'SELFACTIVATION_title\');if(elem.length > 0)window.dsa.setTitle(elem[0].value);var myvar;myvar = document.getElementsByName(\'SELFACTIVATION_back\');if(myvar.length > 0){window.dsa.setBackMessage(myvar[0].value);window.dsa.setBackMessage(myvar[0].getAttribute(\'message\'));}var index;var i;var Size=0;myvar=document.getElementsByName(\'SELFACTIVATION_write\');Size = myvar.length;if(Size>0){for(i=Size;i>0;i--){window.dsa.setSysProp(myvar[i-1].value);}}window.dsa.doneWrite(Size);})()"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaWebViewClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    iget-object v0, v0, Lcom/sprint/dsa/dss/DsaClient;->dsaWebViewClient:Lcom/sprint/dsa/dss/DsaWebViewClient;

    invoke-virtual {v0}, Lcom/sprint/dsa/dss/DsaWebViewClient;->restoreFormData()V

    .line 68
    invoke-virtual {p1}, Landroid/webkit/WebView;->invalidate()V

    goto :goto_24
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 7
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaWebViewClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    iget-boolean v0, v0, Lcom/sprint/dsa/dss/DsaClient;->dsaDebug:Z

    if-eqz v0, :cond_1a

    const-string v0, "SprintZone_DSA"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DsaWebViewClient.onPageStarted(): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :cond_1a
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 35
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "view"
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 83
    const-string v0, "SprintZone_DSA"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DsaWebViewClient.onReceivedError():"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaWebViewClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    new-instance v1, Lcom/sprint/dsa/dss/DsaWebViewClient$1;

    invoke-direct {v1, p0}, Lcom/sprint/dsa/dss/DsaWebViewClient$1;-><init>(Lcom/sprint/dsa/dss/DsaWebViewClient;)V

    invoke-virtual {v0, v1}, Lcom/sprint/dsa/dss/DsaClient;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 90
    return-void
.end method

.method public restoreElement(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "name"
    .parameter "value"

    .prologue
    .line 286
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaWebViewClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    iget-object v0, v0, Lcom/sprint/dsa/dss/DsaClient;->dsaWebView:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "javascript: (function (var1,var2){window.dsa.logError(var1,var2);myvar=document.getElementsByName(var1);myvar[0].value = var2;})(\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 288
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\',\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 286
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 289
    return-void
.end method

.method public restoreFormData()V
    .registers 6

    .prologue
    .line 275
    const-string v1, ""

    .line 276
    .local v1, script:Ljava/lang/String;
    iget-object v2, p0, Lcom/sprint/dsa/dss/DsaWebViewClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    iget-object v2, v2, Lcom/sprint/dsa/dss/DsaClient;->dsaJavascript:Lcom/sprint/dsa/dss/DsaJavaScriptInterface;

    iget-object v2, v2, Lcom/sprint/dsa/dss/DsaJavaScriptInterface;->formData:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 283
    :goto_e
    return-void

    .line 277
    :cond_f
    iget-object v2, p0, Lcom/sprint/dsa/dss/DsaWebViewClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    iget-object v2, v2, Lcom/sprint/dsa/dss/DsaClient;->dsaJavascript:Lcom/sprint/dsa/dss/DsaJavaScriptInterface;

    iget-object v2, v2, Lcom/sprint/dsa/dss/DsaJavaScriptInterface;->formData:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_40

    .line 282
    iget-object v2, p0, Lcom/sprint/dsa/dss/DsaWebViewClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    iget-object v2, v2, Lcom/sprint/dsa/dss/DsaClient;->dsaWebView:Landroid/webkit/WebView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "javascript: (function (){"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "})()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_e

    .line 277
    :cond_40
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 279
    .local v0, key:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "myvar=document.getElementsByName(\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\');"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "myvar[0].value = \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 280
    iget-object v2, p0, Lcom/sprint/dsa/dss/DsaWebViewClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    iget-object v2, v2, Lcom/sprint/dsa/dss/DsaClient;->dsaJavascript:Lcom/sprint/dsa/dss/DsaJavaScriptInterface;

    iget-object v2, v2, Lcom/sprint/dsa/dss/DsaJavaScriptInterface;->formData:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\';"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 279
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1d
.end method

.method public saveFormData()V
    .registers 3

    .prologue
    .line 265
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaWebViewClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    iget-object v0, v0, Lcom/sprint/dsa/dss/DsaClient;->dsaJavascript:Lcom/sprint/dsa/dss/DsaJavaScriptInterface;

    iget-object v0, v0, Lcom/sprint/dsa/dss/DsaJavaScriptInterface;->formData:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 266
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaWebViewClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    iget-object v0, v0, Lcom/sprint/dsa/dss/DsaClient;->dsaWebView:Landroid/webkit/WebView;

    const-string v1, "javascript: (function() {myvar=document.getElementsByTagName(\'INPUT\');Size = myvar.length;for(i=Size;i>0;i--){if(myvar[i-1].type != \'hidden\'){if(myvar[i-1].value.length > 0){window.dsa.saveformelement(myvar[i-1].name,myvar[i-1].value)}}}})()"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 272
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 16
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v12, 0x0

    const/16 v11, 0x3d

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 115
    iget-object v6, p0, Lcom/sprint/dsa/dss/DsaWebViewClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    iget-boolean v6, v6, Lcom/sprint/dsa/dss/DsaClient;->dsaDebug:Z

    if-eqz v6, :cond_1f

    const-string v6, "SprintZone_DSA"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "DsaWebViewClient.shouldOverrideUrlLoading():"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_1f
    iget-object v6, p0, Lcom/sprint/dsa/dss/DsaWebViewClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    iget-object v6, v6, Lcom/sprint/dsa/dss/DsaClient;->dsaStateManager:Lcom/sprint/dsa/dss/StateManager;

    invoke-virtual {v6}, Lcom/sprint/dsa/dss/StateManager;->getUIState()Lcom/sprint/dsa/dss/StateManager$dsaUIState;

    move-result-object v6

    sget-object v7, Lcom/sprint/dsa/dss/StateManager$dsaUIState;->DSA_GOT_USER_ACTION:Lcom/sprint/dsa/dss/StateManager$dsaUIState;

    if-ne v6, v7, :cond_2c

    .line 204
    :cond_2b
    :goto_2b
    return v9

    .line 120
    :cond_2c
    iget-object v6, p0, Lcom/sprint/dsa/dss/DsaWebViewClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    iget-object v6, v6, Lcom/sprint/dsa/dss/DsaClient;->dsaStateManager:Lcom/sprint/dsa/dss/StateManager;

    sget-object v7, Lcom/sprint/dsa/dss/StateManager$dsaUIState;->DSA_GOT_USER_ACTION:Lcom/sprint/dsa/dss/StateManager$dsaUIState;

    invoke-virtual {v6, v7}, Lcom/sprint/dsa/dss/StateManager;->setUIState(Lcom/sprint/dsa/dss/StateManager$dsaUIState;)V

    .line 123
    if-eqz p2, :cond_2b

    .line 124
    const-string v6, "tel:"

    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2b

    .line 126
    const-string v6, "dsatel:"

    invoke-virtual {p2, v6, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_99

    .line 127
    iget-object v6, p0, Lcom/sprint/dsa/dss/DsaWebViewClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    iput-boolean v9, v6, Lcom/sprint/dsa/dss/DsaClient;->exitAction:Z

    .line 128
    const/4 v4, 0x0

    .line 129
    .local v4, telIntent:Landroid/content/Intent;
    const-string v6, "911"

    invoke-virtual {p2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_7b

    .line 131
    const/4 v6, 0x3

    :try_start_55
    invoke-virtual {p2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/content/Intent;->getIntent(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_5c
    .catch Ljava/net/URISyntaxException; {:try_start_55 .. :try_end_5c} :catch_6e

    move-result-object v4

    .line 136
    iget-object v6, p0, Lcom/sprint/dsa/dss/DsaWebViewClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    const-string v7, "option=tel_911"

    iput-object v7, v6, Lcom/sprint/dsa/dss/DsaClient;->option:Ljava/lang/String;

    .line 149
    :goto_63
    iget-object v6, p0, Lcom/sprint/dsa/dss/DsaWebViewClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    invoke-virtual {v6, v4}, Lcom/sprint/dsa/dss/DsaClient;->startActivity(Landroid/content/Intent;)V

    .line 150
    iget-object v6, p0, Lcom/sprint/dsa/dss/DsaWebViewClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    invoke-virtual {v6, v10}, Lcom/sprint/dsa/dss/DsaClient;->close(I)V

    goto :goto_2b

    .line 132
    :catch_6e
    move-exception v0

    .line 133
    .local v0, e:Ljava/net/URISyntaxException;
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b

    .line 140
    .end local v0           #e:Ljava/net/URISyntaxException;
    :cond_7b
    const/4 v6, 0x3

    :try_start_7c
    invoke-virtual {p2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/content/Intent;->getIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 141
    const-string v6, "android.intent.action.CALL"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_89} :catch_90

    .line 146
    :goto_89
    iget-object v6, p0, Lcom/sprint/dsa/dss/DsaWebViewClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    const-string v7, "option=tel_*2"

    iput-object v7, v6, Lcom/sprint/dsa/dss/DsaClient;->option:Ljava/lang/String;

    goto :goto_63

    .line 142
    :catch_90
    move-exception v0

    .line 143
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "SprintZone_DSA"

    const-string v7, "dialing"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_89

    .line 153
    .end local v0           #e:Ljava/lang/Exception;
    .end local v4           #telIntent:Landroid/content/Intent;
    :cond_99
    const-string v6, "dm:"

    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_a9

    const-string v6, "ciq:"

    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_116

    .line 154
    :cond_a9
    iget-object v6, p0, Lcom/sprint/dsa/dss/DsaWebViewClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    iput-boolean v9, v6, Lcom/sprint/dsa/dss/DsaClient;->exitAction:Z

    .line 155
    iget-object v6, p0, Lcom/sprint/dsa/dss/DsaWebViewClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    iget-boolean v6, v6, Lcom/sprint/dsa/dss/DsaClient;->DEVICE:Z

    if-nez v6, :cond_bf

    .line 157
    iget-object v6, p0, Lcom/sprint/dsa/dss/DsaWebViewClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    new-instance v7, Lcom/sprint/dsa/dss/DsaWebViewClient$2;

    invoke-direct {v7, p0}, Lcom/sprint/dsa/dss/DsaWebViewClient$2;-><init>(Lcom/sprint/dsa/dss/DsaWebViewClient;)V

    invoke-virtual {v6, v7}, Lcom/sprint/dsa/dss/DsaClient;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_2b

    .line 167
    :cond_bf
    :try_start_bf
    const-string v6, "dm:cidc"

    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e9

    .line 168
    iget-object v6, p0, Lcom/sprint/dsa/dss/DsaWebViewClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    const-string v7, "option=dm_cidc"

    iput-object v7, v6, Lcom/sprint/dsa/dss/DsaClient;->option:Ljava/lang/String;

    .line 176
    :cond_cd
    :goto_cd
    iget-object v6, p0, Lcom/sprint/dsa/dss/DsaWebViewClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    iget-object v6, v6, Lcom/sprint/dsa/dss/DsaClient;->dsaJavascript:Lcom/sprint/dsa/dss/DsaJavaScriptInterface;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/sprint/dsa/dss/DsaJavaScriptInterface;->processFormData(Ljava/lang/String;)V
    :try_end_d5
    .catch Ljava/lang/Exception; {:try_start_bf .. :try_end_d5} :catch_d7

    goto/16 :goto_2b

    .line 177
    :catch_d7
    move-exception v0

    .line 178
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2b

    .line 169
    .end local v0           #e:Ljava/lang/Exception;
    :cond_e9
    :try_start_e9
    const-string v6, "dm:cifumo"

    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f8

    .line 170
    iget-object v6, p0, Lcom/sprint/dsa/dss/DsaWebViewClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    const-string v7, "option=dm_cifumo"

    iput-object v7, v6, Lcom/sprint/dsa/dss/DsaClient;->option:Ljava/lang/String;

    goto :goto_cd

    .line 171
    :cond_f8
    const-string v6, "dm:ciprl"

    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_107

    .line 172
    iget-object v6, p0, Lcom/sprint/dsa/dss/DsaWebViewClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    const-string v7, "option=dm_ciprl"

    iput-object v7, v6, Lcom/sprint/dsa/dss/DsaClient;->option:Ljava/lang/String;

    goto :goto_cd

    .line 173
    :cond_107
    const-string v6, "ciq:"

    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_cd

    .line 174
    iget-object v6, p0, Lcom/sprint/dsa/dss/DsaWebViewClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    const-string v7, "option=ciq_report"

    iput-object v7, v6, Lcom/sprint/dsa/dss/DsaClient;->option:Ljava/lang/String;
    :try_end_115
    .catch Ljava/lang/Exception; {:try_start_e9 .. :try_end_115} :catch_d7

    goto :goto_cd

    .line 182
    :cond_116
    const-string v6, "popup:"

    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_15d

    .line 183
    invoke-virtual {p2, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    add-int/lit8 v2, v6, 0x1

    .line 184
    .local v2, index:I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v2, v6, :cond_2b

    .line 185
    const/4 v5, 0x0

    .line 186
    .local v5, title:Ljava/lang/String;
    const-string v6, "title="

    invoke-virtual {p2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-le v6, v7, :cond_148

    .line 187
    const/16 v6, 0x26

    invoke-virtual {p2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    invoke-virtual {p2, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 188
    invoke-virtual {p2, v11, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    add-int/lit8 v2, v6, 0x1

    .line 190
    :cond_148
    move-object v1, v5

    .line 191
    .local v1, finalTitle:Ljava/lang/String;
    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 192
    .local v3, msg:Ljava/lang/String;
    iget-object v6, p0, Lcom/sprint/dsa/dss/DsaWebViewClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    new-instance v7, Lcom/sprint/dsa/dss/DsaWebViewClient$3;

    invoke-direct {v7, p0, v3, v1}, Lcom/sprint/dsa/dss/DsaWebViewClient$3;-><init>(Lcom/sprint/dsa/dss/DsaWebViewClient;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/sprint/dsa/dss/DsaClient;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_2b

    .line 201
    .end local v1           #finalTitle:Ljava/lang/String;
    .end local v2           #index:I
    .end local v3           #msg:Ljava/lang/String;
    .end local v5           #title:Ljava/lang/String;
    :cond_15d
    iget-object v6, p0, Lcom/sprint/dsa/dss/DsaWebViewClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    iput-object p2, v6, Lcom/sprint/dsa/dss/DsaClient;->nextURL:Ljava/lang/String;

    .line 203
    iget-object v6, p0, Lcom/sprint/dsa/dss/DsaWebViewClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    iget-object v6, v6, Lcom/sprint/dsa/dss/DsaClient;->dsaJavascript:Lcom/sprint/dsa/dss/DsaJavaScriptInterface;

    invoke-virtual {v6, v12}, Lcom/sprint/dsa/dss/DsaJavaScriptInterface;->processFormData(Ljava/lang/String;)V

    goto/16 :goto_2b
.end method
