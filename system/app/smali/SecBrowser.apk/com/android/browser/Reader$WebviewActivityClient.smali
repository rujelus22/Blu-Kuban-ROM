.class Lcom/android/browser/Reader$WebviewActivityClient;
.super Landroid/webkit/WebViewClient;
.source "Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebviewActivityClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/Reader;


# direct methods
.method private constructor <init>(Lcom/android/browser/Reader;)V
    .registers 2
    .parameter

    .prologue
    .line 366
    iput-object p1, p0, Lcom/android/browser/Reader$WebviewActivityClient;->this$0:Lcom/android/browser/Reader;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/browser/Reader;Lcom/android/browser/Reader$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 366
    invoke-direct {p0, p1}, Lcom/android/browser/Reader$WebviewActivityClient;-><init>(Lcom/android/browser/Reader;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 7
    .parameter "view"
    .parameter "url"

    .prologue
    .line 393
    iget-object v1, p0, Lcom/android/browser/Reader$WebviewActivityClient;->this$0:Lcom/android/browser/Reader;

    invoke-virtual {v1}, Lcom/android/browser/Reader;->convertScriptToString()Ljava/lang/String;

    move-result-object v0

    .line 395
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/browser/Reader$WebviewActivityClient;->this$0:Lcom/android/browser/Reader;

    #getter for: Lcom/android/browser/Reader;->mController:Lcom/android/browser/Controller;
    invoke-static {v1}, Lcom/android/browser/Reader;->access$400(Lcom/android/browser/Reader;)Lcom/android/browser/Controller;

    move-result-object v1

    iget-object v1, v1, Lcom/android/browser/Controller;->nextcontent:Ljava/lang/String;

    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_59

    .line 396
    iget-object v1, p0, Lcom/android/browser/Reader$WebviewActivityClient;->this$0:Lcom/android/browser/Reader;

    #getter for: Lcom/android/browser/Reader;->mWebView:Landroid/webkit/WebView;
    invoke-static {v1}, Lcom/android/browser/Reader;->access$500(Lcom/android/browser/Reader;)Landroid/webkit/WebView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "adjustWidthForFirstPage();appendNextPage(\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/browser/Reader$WebviewActivityClient;->this$0:Lcom/android/browser/Reader;

    #getter for: Lcom/android/browser/Reader;->mController:Lcom/android/browser/Controller;
    invoke-static {v3}, Lcom/android/browser/Reader;->access$400(Lcom/android/browser/Reader;)Lcom/android/browser/Controller;

    move-result-object v3

    iget-object v3, v3, Lcom/android/browser/Controller;->nextcontent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\');"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 402
    :goto_4a
    iget-object v1, p0, Lcom/android/browser/Reader$WebviewActivityClient;->this$0:Lcom/android/browser/Reader;

    #getter for: Lcom/android/browser/Reader;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/browser/Reader;->access$300(Lcom/android/browser/Reader;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 403
    iget-object v1, p0, Lcom/android/browser/Reader$WebviewActivityClient;->this$0:Lcom/android/browser/Reader;

    invoke-virtual {v1}, Lcom/android/browser/Reader;->showReader()V

    .line 404
    return-void

    .line 399
    :cond_59
    const-string v1, "Reader onPageFinished"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "else part = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget-object v1, p0, Lcom/android/browser/Reader$WebviewActivityClient;->this$0:Lcom/android/browser/Reader;

    #getter for: Lcom/android/browser/Reader;->mWebView:Landroid/webkit/WebView;
    invoke-static {v1}, Lcom/android/browser/Reader;->access$500(Lcom/android/browser/Reader;)Landroid/webkit/WebView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "adjustWidthForFirstPage();"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_4a
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 6
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 385
    iget-object v0, p0, Lcom/android/browser/Reader$WebviewActivityClient;->this$0:Lcom/android/browser/Reader;

    #getter for: Lcom/android/browser/Reader;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/browser/Reader;->access$300(Lcom/android/browser/Reader;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 386
    iget-object v0, p0, Lcom/android/browser/Reader$WebviewActivityClient;->this$0:Lcom/android/browser/Reader;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/browser/Reader;->flag:Z

    .line 389
    :cond_d
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 7
    .parameter "view"
    .parameter "url"

    .prologue
    .line 371
    const-string v1, "/www.youtube.com/"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 372
    const-string v1, "Reader shouldOverrideUrlLoading"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "yPos = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 374
    .local v0, videoClient:Landroid/content/Intent;
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 375
    const-string v1, "com.google.android.youtube"

    const-string v2, "com.google.android.youtube.WatchActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 376
    iget-object v1, p0, Lcom/android/browser/Reader$WebviewActivityClient;->this$0:Lcom/android/browser/Reader;

    #getter for: Lcom/android/browser/Reader;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/browser/Reader;->access$200(Lcom/android/browser/Reader;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 377
    const/4 v1, 0x1

    .line 379
    .end local v0           #videoClient:Landroid/content/Intent;
    :goto_3f
    return v1

    :cond_40
    const/4 v1, 0x0

    goto :goto_3f
.end method
