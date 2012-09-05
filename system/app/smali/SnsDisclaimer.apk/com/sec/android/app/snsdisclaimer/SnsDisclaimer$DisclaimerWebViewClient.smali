.class Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer$DisclaimerWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "SnsDisclaimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisclaimerWebViewClient"
.end annotation


# instance fields
.field mbFirstLoading:Z

.field mbOverrideUrlLoading:Z

.field private pd:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;Landroid/app/ProgressDialog;)V
    .registers 4
    .parameter
    .parameter "pd"

    .prologue
    .line 288
    iput-object p1, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer$DisclaimerWebViewClient;->this$0:Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 284
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer$DisclaimerWebViewClient;->mbOverrideUrlLoading:Z

    .line 286
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer$DisclaimerWebViewClient;->mbFirstLoading:Z

    .line 289
    iput-object p2, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer$DisclaimerWebViewClient;->pd:Landroid/app/ProgressDialog;

    .line 290
    #calls: Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->countTimeout()V
    invoke-static {p1}, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->access$200(Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;)V

    .line 291
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 6
    .parameter "view"
    .parameter "url"

    .prologue
    .line 374
    invoke-static {}, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimerUtil;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 375
    const-string v0, "SnsDisclaimer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageFinished : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :goto_1e
    iget-object v0, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer$DisclaimerWebViewClient;->this$0:Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->setProgressBarIndeterminateVisibility(Z)V

    .line 382
    iget-object v0, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer$DisclaimerWebViewClient;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_46

    iget-boolean v0, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer$DisclaimerWebViewClient;->mbOverrideUrlLoading:Z

    if-nez v0, :cond_46

    .line 383
    iget-object v0, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer$DisclaimerWebViewClient;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 385
    iget-object v0, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer$DisclaimerWebViewClient;->this$0:Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;

    #getter for: Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->mTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->access$700(Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_46

    .line 386
    iget-object v0, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer$DisclaimerWebViewClient;->this$0:Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;

    #getter for: Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->mTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->access$700(Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 389
    :cond_46
    return-void

    .line 377
    :cond_47
    const-string v0, "SnsDisclaimer"

    const-string v1, "onPageFinished : "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 9
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 295
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 297
    invoke-static {}, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimerUtil;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 298
    const-string v0, "SnsDisclaimer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageStarted : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :goto_23
    iget-object v0, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer$DisclaimerWebViewClient;->this$0:Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;

    #calls: Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->IsSocialhubWebpage(Ljava/lang/String;)Z
    invoke-static {v0, p2}, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->access$300(Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_46

    iget-boolean v0, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer$DisclaimerWebViewClient;->mbFirstLoading:Z

    if-ne v0, v3, :cond_46

    .line 304
    const-string v0, "SnsDisclaimer"

    const-string v1, "onPageStarted - This is not social hub web page"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v0, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer$DisclaimerWebViewClient;->this$0:Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;

    #getter for: Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->access$500(Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer$DisclaimerWebViewClient;->this$0:Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;

    const/4 v2, 0x0

    #calls: Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->newDeliverResponseRunnable(ILjava/lang/String;)Ljava/lang/Runnable;
    invoke-static {v1, v3, v2}, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->access$400(Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;ILjava/lang/String;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 309
    :cond_46
    iput-boolean v4, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer$DisclaimerWebViewClient;->mbFirstLoading:Z

    .line 311
    iget-object v0, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer$DisclaimerWebViewClient;->this$0:Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;

    #getter for: Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->mProgDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->access$600(Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_59

    .line 312
    iget-object v0, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer$DisclaimerWebViewClient;->this$0:Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->setProgressBarIndeterminateVisibility(Z)V

    .line 314
    :cond_59
    iput-boolean v4, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer$DisclaimerWebViewClient;->mbOverrideUrlLoading:Z

    .line 316
    return-void

    .line 300
    :cond_5c
    const-string v0, "SnsDisclaimer"

    const-string v1, "onPageStarted : "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "view"
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 357
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 359
    invoke-static {}, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimerUtil;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 360
    const-string v0, "SnsDisclaimer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceivedError - errorCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", description : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", failingUrl : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :goto_35
    iget-object v0, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer$DisclaimerWebViewClient;->this$0:Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;

    #getter for: Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->access$500(Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer$DisclaimerWebViewClient;->this$0:Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;

    const/4 v2, 0x2

    #calls: Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->newDeliverResponseRunnable(ILjava/lang/String;)Ljava/lang/Runnable;
    invoke-static {v1, v2, p3}, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->access$400(Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;ILjava/lang/String;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 369
    return-void

    .line 363
    :cond_46
    const-string v0, "SnsDisclaimer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceivedError - errorCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", description : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 4
    .parameter "view"
    .parameter "handler"
    .parameter "error"

    .prologue
    .line 349
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 351
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 352
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 8
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 321
    invoke-static {}, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimerUtil;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 322
    const-string v2, "SnsDisclaimer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shouldOverrideUrlLoading : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :goto_20
    if-nez p1, :cond_2b

    .line 344
    :goto_22
    return v0

    .line 324
    :cond_23
    const-string v2, "SnsDisclaimer"

    const-string v3, "shouldOverrideUrlLoading : "

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    .line 333
    :cond_2b
    invoke-virtual {p1}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v2

    if-lez v2, :cond_43

    .line 334
    const-string v2, "SnsDisclaimer"

    const-string v3, "shouldOverrideUrlLoading - Linked Url"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iput-boolean v0, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer$DisclaimerWebViewClient;->mbFirstLoading:Z

    .line 342
    :goto_3e
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    move v0, v1

    .line 344
    goto :goto_22

    .line 337
    :cond_43
    const-string v0, "SnsDisclaimer"

    const-string v2, "shouldOverrideUrlLoading - Redirect Url"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iput-boolean v1, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer$DisclaimerWebViewClient;->mbFirstLoading:Z

    .line 339
    iput-boolean v1, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer$DisclaimerWebViewClient;->mbOverrideUrlLoading:Z

    goto :goto_3e
.end method
