.class Lcom/android/browser/Tab$2;
.super Landroid/webkit/WebViewClient;
.source "Tab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/Tab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mDontResend:Landroid/os/Message;

.field private mResend:Landroid/os/Message;

.field final synthetic this$0:Lcom/android/browser/Tab;


# direct methods
.method constructor <init>(Lcom/android/browser/Tab;)V
    .registers 2
    .parameter

    .prologue
    .line 572
    iput-object p1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/browser/Tab$2;)Landroid/os/Message;
    .registers 2
    .parameter "x0"

    .prologue
    .line 572
    iget-object v0, p0, Lcom/android/browser/Tab$2;->mDontResend:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/browser/Tab$2;Landroid/os/Message;)Landroid/os/Message;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 572
    iput-object p1, p0, Lcom/android/browser/Tab$2;->mDontResend:Landroid/os/Message;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/browser/Tab$2;)Landroid/os/Message;
    .registers 2
    .parameter "x0"

    .prologue
    .line 572
    iget-object v0, p0, Lcom/android/browser/Tab$2;->mResend:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/browser/Tab$2;Landroid/os/Message;)Landroid/os/Message;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 572
    iput-object p1, p0, Lcom/android/browser/Tab$2;->mResend:Landroid/os/Message;

    return-object p1
.end method


# virtual methods
.method public doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .registers 6
    .parameter "view"
    .parameter "url"
    .parameter "isReload"

    .prologue
    .line 799
    iget-object v0, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    iget-object v0, v0, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    invoke-interface {v0, v1, p3}, Lcom/android/browser/WebViewController;->doUpdateVisitedHistory(Lcom/android/browser/Tab;Z)V

    .line 800
    return-void
.end method

.method public onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .registers 7
    .parameter "view"
    .parameter "dontResend"
    .parameter "resend"

    .prologue
    .line 744
    iget-object v0, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    #getter for: Lcom/android/browser/Tab;->mInForeground:Z
    invoke-static {v0}, Lcom/android/browser/Tab;->access$800(Lcom/android/browser/Tab;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 745
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 788
    :goto_b
    return-void

    .line 748
    :cond_c
    iget-object v0, p0, Lcom/android/browser/Tab$2;->mDontResend:Landroid/os/Message;

    if-eqz v0, :cond_1b

    .line 749
    const-string v0, "Tab"

    const-string v1, "onFormResubmission should not be called again while dialog is still up"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_b

    .line 754
    :cond_1b
    iput-object p2, p0, Lcom/android/browser/Tab$2;->mDontResend:Landroid/os/Message;

    .line 755
    iput-object p3, p0, Lcom/android/browser/Tab$2;->mResend:Landroid/os/Message;

    .line 756
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    iget-object v1, v1, Lcom/android/browser/Tab;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0103

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0104

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0013

    new-instance v2, Lcom/android/browser/Tab$2$3;

    invoke-direct {v2, p0}, Lcom/android/browser/Tab$2$3;-><init>(Lcom/android/browser/Tab$2;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0012

    new-instance v2, Lcom/android/browser/Tab$2$2;

    invoke-direct {v2, p0}, Lcom/android/browser/Tab$2$2;-><init>(Lcom/android/browser/Tab$2;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/browser/Tab$2$1;

    invoke-direct {v1, p0}, Lcom/android/browser/Tab$2$1;-><init>(Lcom/android/browser/Tab$2;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_b
.end method

.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5
    .parameter "view"
    .parameter "url"

    .prologue
    .line 679
    if-eqz p2, :cond_2c

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2c

    .line 682
    iget-object v0, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    iget-object v0, v0, Lcom/android/browser/Tab;->mCurrentState:Lcom/android/browser/Tab$PageState;

    iget-object v0, v0, Lcom/android/browser/Tab$PageState;->mSecurityState:Lcom/android/browser/Tab$SecurityState;

    sget-object v1, Lcom/android/browser/Tab$SecurityState;->SECURITY_STATE_SECURE:Lcom/android/browser/Tab$SecurityState;

    if-ne v0, v1, :cond_2c

    .line 684
    invoke-static {p2}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2c

    invoke-static {p2}, Landroid/webkit/URLUtil;->isDataUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2c

    invoke-static {p2}, Landroid/webkit/URLUtil;->isAboutUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 686
    iget-object v0, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    iget-object v0, v0, Lcom/android/browser/Tab;->mCurrentState:Lcom/android/browser/Tab$PageState;

    sget-object v1, Lcom/android/browser/Tab$SecurityState;->SECURITY_STATE_MIXED:Lcom/android/browser/Tab$SecurityState;

    iput-object v1, v0, Lcom/android/browser/Tab$PageState;->mSecurityState:Lcom/android/browser/Tab$SecurityState;

    .line 690
    :cond_2c
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 7
    .parameter "view"
    .parameter "url"

    .prologue
    .line 632
    iget-object v0, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    #getter for: Lcom/android/browser/Tab;->mInPageLoad:Z
    invoke-static {v0}, Lcom/android/browser/Tab;->access$100(Lcom/android/browser/Tab;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 645
    :goto_8
    return-void

    .line 637
    :cond_9
    iget-object v0, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    invoke-virtual {v0}, Lcom/android/browser/Tab;->isPrivateBrowsingEnabled()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 638
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    #getter for: Lcom/android/browser/Tab;->mLoadStartTime:J
    invoke-static {v2}, Lcom/android/browser/Tab;->access$300(Lcom/android/browser/Tab;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {p2, v0, v1}, Lcom/android/browser/LogTag;->logPageFinishedLoading(Ljava/lang/String;J)V

    .line 641
    :cond_1f
    iget-object v0, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    const/4 v1, 0x0

    #setter for: Lcom/android/browser/Tab;->mInPageLoad:Z
    invoke-static {v0, v1}, Lcom/android/browser/Tab;->access$102(Lcom/android/browser/Tab;Z)Z

    .line 643
    iget-object v0, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    #calls: Lcom/android/browser/Tab;->syncCurrentState(Landroid/webkit/WebView;Ljava/lang/String;)V
    invoke-static {v0, p1, p2}, Lcom/android/browser/Tab;->access$700(Lcom/android/browser/Tab;Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 644
    iget-object v0, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    iget-object v0, v0, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    invoke-interface {v0, v1}, Lcom/android/browser/WebViewController;->onPageFinished(Lcom/android/browser/Tab;)V

    goto :goto_8
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 11
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 585
    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    #setter for: Lcom/android/browser/Tab;->mInPageLoad:Z
    invoke-static {v1, v6}, Lcom/android/browser/Tab;->access$102(Lcom/android/browser/Tab;Z)Z

    .line 586
    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    const/4 v2, 0x5

    #setter for: Lcom/android/browser/Tab;->mPageLoadProgress:I
    invoke-static {v1, v2}, Lcom/android/browser/Tab;->access$202(Lcom/android/browser/Tab;I)I

    .line 587
    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    new-instance v2, Lcom/android/browser/Tab$PageState;

    iget-object v3, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    iget-object v3, v3, Lcom/android/browser/Tab;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/webkit/WebView;->isPrivateBrowsingEnabled()Z

    move-result v4

    invoke-direct {v2, v3, v4, p2, p3}, Lcom/android/browser/Tab$PageState;-><init>(Landroid/content/Context;ZLjava/lang/String;Landroid/graphics/Bitmap;)V

    iput-object v2, v1, Lcom/android/browser/Tab;->mCurrentState:Lcom/android/browser/Tab$PageState;

    .line 589
    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    #setter for: Lcom/android/browser/Tab;->mLoadStartTime:J
    invoke-static {v1, v2, v3}, Lcom/android/browser/Tab;->access$302(Lcom/android/browser/Tab;J)J

    .line 590
    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    #getter for: Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;
    invoke-static {v1}, Lcom/android/browser/Tab;->access$400(Lcom/android/browser/Tab;)Lcom/android/browser/Tab$VoiceSearchData;

    move-result-object v1

    if-eqz v1, :cond_5f

    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    #getter for: Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;
    invoke-static {v1}, Lcom/android/browser/Tab;->access$400(Lcom/android/browser/Tab;)Lcom/android/browser/Tab$VoiceSearchData;

    move-result-object v1

    iget-object v1, v1, Lcom/android/browser/Tab$VoiceSearchData;->mLastVoiceSearchUrl:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5f

    .line 593
    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    #getter for: Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;
    invoke-static {v1}, Lcom/android/browser/Tab;->access$400(Lcom/android/browser/Tab;)Lcom/android/browser/Tab$VoiceSearchData;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/browser/Tab$VoiceSearchData;->mSourceIsGoogle:Z

    if-eqz v1, :cond_5a

    .line 594
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.common.speech.LOG_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 595
    .local v0, i:Landroid/content/Intent;
    const-string v1, "flush"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 596
    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    iget-object v1, v1, Lcom/android/browser/Tab;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 598
    .end local v0           #i:Landroid/content/Intent;
    :cond_5a
    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    invoke-virtual {v1}, Lcom/android/browser/Tab;->revertVoiceSearchMode()V

    .line 605
    :cond_5f
    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    iget-object v1, v1, Lcom/android/browser/Tab;->mTouchIconLoader:Lcom/android/browser/DownloadTouchIcon;

    if-eqz v1, :cond_6f

    .line 606
    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    iget-object v1, v1, Lcom/android/browser/Tab;->mTouchIconLoader:Lcom/android/browser/DownloadTouchIcon;

    iput-object v5, v1, Lcom/android/browser/DownloadTouchIcon;->mTab:Lcom/android/browser/Tab;

    .line 607
    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    iput-object v5, v1, Lcom/android/browser/Tab;->mTouchIconLoader:Lcom/android/browser/DownloadTouchIcon;

    .line 611
    :cond_6f
    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    #getter for: Lcom/android/browser/Tab;->mErrorConsole:Lcom/android/browser/ErrorConsoleView;
    invoke-static {v1}, Lcom/android/browser/Tab;->access$500(Lcom/android/browser/Tab;)Lcom/android/browser/ErrorConsoleView;

    move-result-object v1

    if-eqz v1, :cond_94

    .line 612
    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    #getter for: Lcom/android/browser/Tab;->mErrorConsole:Lcom/android/browser/ErrorConsoleView;
    invoke-static {v1}, Lcom/android/browser/Tab;->access$500(Lcom/android/browser/Tab;)Lcom/android/browser/ErrorConsoleView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/ErrorConsoleView;->clearErrorMessages()V

    .line 613
    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    iget-object v1, v1, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    invoke-interface {v1}, Lcom/android/browser/WebViewController;->shouldShowErrorConsole()Z

    move-result v1

    if-eqz v1, :cond_94

    .line 614
    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    #getter for: Lcom/android/browser/Tab;->mErrorConsole:Lcom/android/browser/ErrorConsoleView;
    invoke-static {v1}, Lcom/android/browser/Tab;->access$500(Lcom/android/browser/Tab;)Lcom/android/browser/ErrorConsoleView;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/browser/ErrorConsoleView;->showConsole(I)V

    .line 619
    :cond_94
    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    #getter for: Lcom/android/browser/Tab;->mDeviceAccountLogin:Lcom/android/browser/DeviceAccountLogin;
    invoke-static {v1}, Lcom/android/browser/Tab;->access$600(Lcom/android/browser/Tab;)Lcom/android/browser/DeviceAccountLogin;

    move-result-object v1

    if-eqz v1, :cond_b3

    .line 620
    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    #getter for: Lcom/android/browser/Tab;->mDeviceAccountLogin:Lcom/android/browser/DeviceAccountLogin;
    invoke-static {v1}, Lcom/android/browser/Tab;->access$600(Lcom/android/browser/Tab;)Lcom/android/browser/DeviceAccountLogin;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/DeviceAccountLogin;->cancel()V

    .line 621
    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    #setter for: Lcom/android/browser/Tab;->mDeviceAccountLogin:Lcom/android/browser/DeviceAccountLogin;
    invoke-static {v1, v5}, Lcom/android/browser/Tab;->access$602(Lcom/android/browser/Tab;Lcom/android/browser/DeviceAccountLogin;)Lcom/android/browser/DeviceAccountLogin;

    .line 622
    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    iget-object v1, v1, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    iget-object v2, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    invoke-interface {v1, v2}, Lcom/android/browser/WebViewController;->hideAutoLogin(Lcom/android/browser/Tab;)V

    .line 626
    :cond_b3
    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    iget-object v1, v1, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    iget-object v2, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    invoke-interface {v1, v2, p1, p3}, Lcom/android/browser/WebViewController;->onPageStarted(Lcom/android/browser/Tab;Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V

    .line 627
    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    invoke-virtual {v1}, Lcom/android/browser/Tab;->updateBookmarkedStatus()V

    .line 628
    return-void
.end method

.method public onReceivedClientCertRequest(Landroid/webkit/WebView;Landroid/webkit/ClientCertRequestHandler;Ljava/lang/String;)V
    .registers 14
    .parameter "view"
    .parameter "handler"
    .parameter "host_and_port"

    .prologue
    const/4 v2, 0x0

    .line 864
    iget-object v0, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    #getter for: Lcom/android/browser/Tab;->mInForeground:Z
    invoke-static {v0}, Lcom/android/browser/Tab;->access$800(Lcom/android/browser/Tab;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 865
    invoke-virtual {p2}, Landroid/webkit/ClientCertRequestHandler;->ignore()V

    .line 894
    :goto_c
    return-void

    .line 868
    :cond_d
    const/16 v0, 0x3a

    invoke-virtual {p3, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    .line 871
    .local v7, colon:I
    const/4 v0, -0x1

    if-ne v7, v0, :cond_2b

    .line 872
    move-object v4, p3

    .line 873
    .local v4, host:Ljava/lang/String;
    const/4 v5, -0x1

    .line 884
    .local v5, port:I
    :goto_18
    iget-object v0, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    iget-object v0, v0, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    invoke-interface {v0}, Lcom/android/browser/WebViewController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/android/browser/Tab$2$8;

    invoke-direct {v1, p0, p2}, Lcom/android/browser/Tab$2$8;-><init>(Lcom/android/browser/Tab$2;Landroid/webkit/ClientCertRequestHandler;)V

    move-object v3, v2

    move-object v6, v2

    invoke-static/range {v0 .. v6}, Landroid/security/KeyChain;->choosePrivateKeyAlias(Landroid/app/Activity;Landroid/security/KeyChainAliasCallback;[Ljava/lang/String;[Ljava/security/Principal;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_c

    .line 875
    .end local v4           #host:Ljava/lang/String;
    .end local v5           #port:I
    :cond_2b
    add-int/lit8 v0, v7, 0x1

    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 877
    .local v9, portString:Ljava/lang/String;
    :try_start_31
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 878
    .restart local v5       #port:I
    const/4 v0, 0x0

    invoke-virtual {p3, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_39
    .catch Ljava/lang/NumberFormatException; {:try_start_31 .. :try_end_39} :catch_3b

    move-result-object v4

    .restart local v4       #host:Ljava/lang/String;
    goto :goto_18

    .line 879
    .end local v4           #host:Ljava/lang/String;
    .end local v5           #port:I
    :catch_3b
    move-exception v8

    .line 880
    .local v8, e:Ljava/lang/NumberFormatException;
    move-object v4, p3

    .line 881
    .restart local v4       #host:Ljava/lang/String;
    const/4 v5, -0x1

    .restart local v5       #port:I
    goto :goto_18
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "view"
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 699
    const/4 v0, -0x2

    if-eq p2, v0, :cond_17

    const/4 v0, -0x6

    if-eq p2, v0, :cond_17

    const/16 v0, -0xc

    if-eq p2, v0, :cond_17

    const/16 v0, -0xa

    if-eq p2, v0, :cond_17

    const/16 v0, -0xd

    if-eq p2, v0, :cond_17

    .line 704
    iget-object v0, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    #calls: Lcom/android/browser/Tab;->queueError(ILjava/lang/String;)V
    invoke-static {v0, p2, p3}, Lcom/android/browser/Tab;->access$900(Lcom/android/browser/Tab;ILjava/lang/String;)V

    .line 708
    :cond_17
    iget-object v0, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    invoke-virtual {v0}, Lcom/android/browser/Tab;->isPrivateBrowsingEnabled()Z

    move-result v0

    if-nez v0, :cond_41

    .line 709
    const-string v0, "Tab"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceivedError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    :cond_41
    return-void
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .parameter "view"
    .parameter "handler"
    .parameter "host"
    .parameter "realm"

    .prologue
    .line 907
    iget-object v0, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    iget-object v0, v0, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/browser/WebViewController;->onReceivedHttpAuthRequest(Lcom/android/browser/Tab;Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    return-void
.end method

.method public onReceivedLoginRequest(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "view"
    .parameter "realm"
    .parameter "account"
    .parameter "args"

    .prologue
    .line 937
    new-instance v0, Lcom/android/browser/DeviceAccountLogin;

    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    iget-object v1, v1, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    invoke-interface {v1}, Lcom/android/browser/WebViewController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    iget-object v3, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    iget-object v3, v3, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/android/browser/DeviceAccountLogin;-><init>(Landroid/app/Activity;Landroid/webkit/WebView;Lcom/android/browser/Tab;Lcom/android/browser/WebViewController;)V

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/browser/DeviceAccountLogin;->handleLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    return-void
.end method

.method public onReceivedReaderData(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 7
    .parameter "view"
    .parameter "readerData"

    .prologue
    .line 718
    if-eqz p2, :cond_25

    .line 720
    const-string v2, "</div>"

    invoke-virtual {p2, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 721
    .local v0, last:I
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/browser/BrowserSettings;->getController()Lcom/android/browser/Controller;

    move-result-object v1

    .line 722
    .local v1, mController:Lcom/android/browser/Controller;
    add-int/lit8 v2, v0, 0x6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/browser/Controller;->nextcontent:Ljava/lang/String;

    .line 723
    const/4 v2, 0x0

    add-int/lit8 v3, v0, 0x6

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/browser/Controller;->sReaderContent:Ljava/lang/String;

    .line 725
    .end local v0           #last:I
    .end local v1           #mController:Lcom/android/browser/Controller;
    :cond_25
    return-void
.end method

.method public onReceivedRecognizeData(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 7
    .parameter "view"
    .parameter "recogData"

    .prologue
    .line 731
    const-string v1, "Tab"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceivedRecognizeData"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/BrowserSettings;->getController()Lcom/android/browser/Controller;

    move-result-object v0

    .line 733
    .local v0, mController:Lcom/android/browser/Controller;
    invoke-virtual {v0, p1, p2}, Lcom/android/browser/Controller;->recognize(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 734
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 7
    .parameter "view"
    .parameter "handler"
    .parameter "error"

    .prologue
    .line 808
    iget-object v0, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    #getter for: Lcom/android/browser/Tab;->mInForeground:Z
    invoke-static {v0}, Lcom/android/browser/Tab;->access$800(Lcom/android/browser/Tab;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 809
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    .line 810
    iget-object v0, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    sget-object v1, Lcom/android/browser/Tab$SecurityState;->SECURITY_STATE_NOT_SECURE:Lcom/android/browser/Tab$SecurityState;

    #calls: Lcom/android/browser/Tab;->setSecurityState(Lcom/android/browser/Tab$SecurityState;)V
    invoke-static {v0, v1}, Lcom/android/browser/Tab;->access$1200(Lcom/android/browser/Tab;Lcom/android/browser/Tab$SecurityState;)V

    .line 856
    :goto_12
    return-void

    .line 813
    :cond_13
    iget-object v0, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    #getter for: Lcom/android/browser/Tab;->mSettings:Lcom/android/browser/BrowserSettings;
    invoke-static {v0}, Lcom/android/browser/Tab;->access$1300(Lcom/android/browser/Tab;)Lcom/android/browser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->showSecurityWarnings()Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 814
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    iget-object v1, v1, Lcom/android/browser/Tab;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c001b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0019

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c001a

    new-instance v2, Lcom/android/browser/Tab$2$7;

    invoke-direct {v2, p0, p2}, Lcom/android/browser/Tab$2$7;-><init>(Lcom/android/browser/Tab$2;Landroid/webkit/SslErrorHandler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c001c

    new-instance v2, Lcom/android/browser/Tab$2$6;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/android/browser/Tab$2$6;-><init>(Lcom/android/browser/Tab$2;Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c001d

    new-instance v2, Lcom/android/browser/Tab$2$5;

    invoke-direct {v2, p0}, Lcom/android/browser/Tab$2$5;-><init>(Lcom/android/browser/Tab$2;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/browser/Tab$2$4;

    invoke-direct {v1, p0, p2}, Lcom/android/browser/Tab$2$4;-><init>(Lcom/android/browser/Tab$2;Landroid/webkit/SslErrorHandler;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_12

    .line 854
    :cond_6e
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    goto :goto_12
.end method

.method public onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V
    .registers 4
    .parameter "view"
    .parameter "event"

    .prologue
    .line 928
    iget-object v0, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    #getter for: Lcom/android/browser/Tab;->mInForeground:Z
    invoke-static {v0}, Lcom/android/browser/Tab;->access$800(Lcom/android/browser/Tab;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 932
    :goto_8
    return-void

    .line 931
    :cond_9
    iget-object v0, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    iget-object v0, v0, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    invoke-interface {v0, p2}, Lcom/android/browser/WebViewController;->onUnhandledKeyEvent(Landroid/view/KeyEvent;)V

    goto :goto_8
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .registers 5
    .parameter "view"
    .parameter "url"

    .prologue
    .line 913
    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    iget-object v1, v1, Lcom/android/browser/Tab;->mContext:Landroid/content/Context;

    invoke-static {v1, p2}, Lcom/android/browser/homepages/HomeProvider;->shouldInterceptRequest(Landroid/content/Context;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    .line 915
    .local v0, res:Landroid/webkit/WebResourceResponse;
    return-object v0
.end method

.method public shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z
    .registers 4
    .parameter "view"
    .parameter "event"

    .prologue
    .line 920
    iget-object v0, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    #getter for: Lcom/android/browser/Tab;->mInForeground:Z
    invoke-static {v0}, Lcom/android/browser/Tab;->access$800(Lcom/android/browser/Tab;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 921
    const/4 v0, 0x0

    .line 923
    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    iget-object v0, v0, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    invoke-interface {v0, p2}, Lcom/android/browser/WebViewController;->shouldOverrideKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_9
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 6
    .parameter "view"
    .parameter "url"

    .prologue
    .line 650
    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    invoke-virtual {v1}, Lcom/android/browser/Tab;->voiceSearchSourceIsGoogle()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 657
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.common.speech.LOG_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 658
    .local v0, logIntent:Landroid/content/Intent;
    const-string v1, "extra_event"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 660
    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    iget-object v1, v1, Lcom/android/browser/Tab;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 662
    .end local v0           #logIntent:Landroid/content/Intent;
    :cond_1c
    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    #getter for: Lcom/android/browser/Tab;->mInForeground:Z
    invoke-static {v1}, Lcom/android/browser/Tab;->access$800(Lcom/android/browser/Tab;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 663
    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    iget-object v1, v1, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    iget-object v2, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    invoke-interface {v1, v2, p1, p2}, Lcom/android/browser/WebViewController;->shouldOverrideUrlLoading(Lcom/android/browser/Tab;Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v1

    .line 666
    :goto_2e
    return v1

    :cond_2f
    const/4 v1, 0x0

    goto :goto_2e
.end method
