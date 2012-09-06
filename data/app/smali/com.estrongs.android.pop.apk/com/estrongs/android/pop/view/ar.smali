.class Lcom/estrongs/android/pop/view/ar;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;


# direct methods
.method private constructor <init>(Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/ar;->a:Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;Lcom/estrongs/android/pop/view/ar;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/view/ar;-><init>(Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 4

    const-string v0, "://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_e

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    :cond_e
    const-string v0, "www.estrongs.com"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2b

    const-string v0, "localhost"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2b

    invoke-static {}, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->c()Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;

    move-result-object v0

    if-eqz v0, :cond_2b

    invoke-static {}, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->c()Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->a()V

    :cond_2b
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/estrongs/android/pop/view/ar;->a:Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;

    invoke-static {v3}, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->e(Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "box"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    const-string v3, "http://127.0.0.1:50767"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c4

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ar;->a:Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;

    const-string v2, "auth_token"

    invoke-static {v0, p2, v2}, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->a(Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_21
    if-eqz v1, :cond_3f

    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    if-eqz v0, :cond_ad

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ar;->a:Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->a(Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;)Landroid/os/Handler;

    move-result-object v1

    sget v2, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->a:I

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ar;->a:Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->a(Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3f
    :goto_3f
    return-void

    :cond_40
    iget-object v3, p0, Lcom/estrongs/android/pop/view/ar;->a:Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;

    invoke-static {v3}, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->e(Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "baidu"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5c

    iget-object v3, p0, Lcom/estrongs/android/pop/view/ar;->a:Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;

    invoke-static {v3}, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->e(Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "skydrive"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8d

    :cond_5c
    const-string v3, "//wap.baidu.com"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7c

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ar;->a:Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->a(Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;)Landroid/os/Handler;

    move-result-object v0

    sget v1, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->f:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ar;->a:Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->a(Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_3f

    :cond_7c
    const-string v3, "http://www.estrongs.com"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c4

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ar;->a:Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;

    const-string v2, "code"

    invoke-static {v0, p2, v2}, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->a(Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_21

    :cond_8d
    iget-object v3, p0, Lcom/estrongs/android/pop/view/ar;->a:Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;

    invoke-static {v3}, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->e(Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "gdrive"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c4

    const-string v3, "http://localhost"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c4

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ar;->a:Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;

    const-string v2, "code"

    invoke-static {v0, p2, v2}, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->a(Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_21

    :cond_ad
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ar;->a:Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->a(Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;)Landroid/os/Handler;

    move-result-object v0

    sget v1, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->d:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ar;->a:Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->a(Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_3f

    :cond_c4
    move v1, v2

    goto/16 :goto_21
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    const-string v0, "://"

    invoke-virtual {p4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_e

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {p4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p4

    :cond_e
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ar;->a:Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->f(Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ar;->a:Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->a(Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;)Landroid/os/Handler;

    move-result-object v0

    sget v1, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->a:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ar;->a:Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->a(Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2f
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 4

    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method
