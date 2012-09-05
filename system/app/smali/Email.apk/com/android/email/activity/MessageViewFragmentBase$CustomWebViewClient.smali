.class Lcom/android/email/activity/MessageViewFragmentBase$CustomWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "MessageViewFragmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageViewFragmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageViewFragmentBase;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase;)V
    .registers 2
    .parameter

    .prologue
    .line 8596
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$CustomWebViewClient;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8596
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$CustomWebViewClient;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 11
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 8629
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$CustomWebViewClient;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v3, v3, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v2

    .line 8631
    .local v2, settingValue:Lcom/android/email/Preferences;
    const/4 v0, 0x0

    .line 8632
    .local v0, color:I
    const/4 v1, 0x0

    .line 8634
    .local v1, fontcolor:I
    invoke-virtual {v2}, Lcom/android/email/Preferences;->getBGColor()I

    move-result v0

    .line 8635
    invoke-virtual {v2}, Lcom/android/email/Preferences;->getFontColor()I

    move-result v1

    .line 8637
    const-string v3, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPageFinished color = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " url = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 8662
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$CustomWebViewClient;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mIsPatternMatchingEnd:Z
    invoke-static {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$4000(Lcom/android/email/activity/MessageViewFragmentBase;)Z

    move-result v3

    if-ne v3, v6, :cond_79

    .line 8663
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$CustomWebViewClient;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v3, v0, v7, v6, v7}, Lcom/android/email/activity/MessageViewFragmentBase;->ControlBgColor(IZZZ)V

    .line 8671
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseCheckAfterPageFinished()Z

    move-result v3

    if-eqz v3, :cond_69

    .line 8672
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$CustomWebViewClient;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mResetView:Z
    invoke-static {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$6700(Lcom/android/email/activity/MessageViewFragmentBase;)Z

    move-result v3

    if-ne v3, v6, :cond_69

    .line 8673
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$CustomWebViewClient;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->showingLoadMore:Z
    invoke-static {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$6800(Lcom/android/email/activity/MessageViewFragmentBase;)Z

    move-result v3

    if-ne v3, v6, :cond_64

    .line 8674
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$CustomWebViewClient;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v3, v6}, Lcom/android/email/activity/MessageViewFragmentBase;->showLoadMoreButton(Z)V

    .line 8688
    :cond_64
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$CustomWebViewClient;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #setter for: Lcom/android/email/activity/MessageViewFragmentBase;->mResetView:Z
    invoke-static {v3, v7}, Lcom/android/email/activity/MessageViewFragmentBase;->access$6702(Lcom/android/email/activity/MessageViewFragmentBase;Z)Z

    .line 8697
    :cond_69
    :goto_69
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseMessageWebViewSizeChange()Z

    move-result v3

    if-nez v3, :cond_78

    .line 8698
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$CustomWebViewClient;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mHandler:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;
    invoke-static {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2800(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->setMessageWebView()V

    .line 8706
    :cond_78
    return-void

    .line 8692
    :cond_79
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$CustomWebViewClient;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v3, v0, v7}, Lcom/android/email/activity/MessageViewFragmentBase;->ControlBgColor(IZ)V

    .line 8693
    invoke-virtual {v2, v0}, Lcom/android/email/Preferences;->setBGColor(I)V

    .line 8694
    invoke-virtual {v2, v1}, Lcom/android/email/Preferences;->setFontColor(I)V

    goto :goto_69
.end method

.method public onScaleChanged(Landroid/webkit/WebView;FF)V
    .registers 6
    .parameter "view"
    .parameter "oldScale"
    .parameter "newScale"

    .prologue
    .line 8710
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseEmailViewPort()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWideViewPort()Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_c
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$CustomWebViewClient;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mIsPatternMatchingEnd:Z
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$4000(Lcom/android/email/activity/MessageViewFragmentBase;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1c

    .line 8712
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$CustomWebViewClient;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageWebView;->setDoubleTabWebView()V

    .line 8714
    :cond_1c
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 13
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v6, 0x1

    .line 8600
    if-eqz p2, :cond_73

    const-string v0, "file:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 8601
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$CustomWebViewClient;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->IsEAS()Z

    move-result v0

    if-eqz v0, :cond_73

    .line 8602
    const/4 v8, 0x0

    .line 8603
    .local v8, index:I
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$CustomWebViewClient;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$CustomWebViewClient;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J
    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1800(Lcom/android/email/activity/MessageViewFragmentBase;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v7

    .line 8604
    .local v7, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    iget-object v9, v7, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    .line 8606
    .local v9, protocolVer:Ljava/lang/String;
    if-eqz v9, :cond_3c

    const-string v0, "2.5"

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 8607
    const-string v0, "12."

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 8608
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 8613
    :cond_3c
    :goto_3c
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$CustomWebViewClient;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$CustomWebViewClient;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mController:Lcom/android/email/Controller;
    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$800(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/Controller;

    move-result-object v1

    iget-wide v2, v7, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v0, v1, v2, v3}, Lcom/android/email/activity/ActivityHelper;->clearDocumentsDB(Landroid/content/Context;Lcom/android/email/Controller;J)V

    .line 8615
    invoke-virtual {p2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 8616
    .local v5, searchStr:Ljava/lang/String;
    const-string v0, "/"

    const-string v1, "\\"

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 8617
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$CustomWebViewClient;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$CustomWebViewClient;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J
    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1800(Lcom/android/email/activity/MessageViewFragmentBase;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$CustomWebViewClient;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$500(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v3

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static/range {v0 .. v6}, Lcom/android/email/activity/EmailDocSearchQuery;->startActivity(Landroid/app/Activity;JJLjava/lang/String;I)V

    .line 8623
    .end local v5           #searchStr:Ljava/lang/String;
    .end local v7           #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v8           #index:I
    .end local v9           #protocolVer:Ljava/lang/String;
    :goto_70
    return v6

    .line 8611
    .restart local v7       #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    .restart local v8       #index:I
    .restart local v9       #protocolVer:Ljava/lang/String;
    :cond_71
    const/4 v8, 0x7

    goto :goto_3c

    .line 8623
    .end local v7           #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v8           #index:I
    .end local v9           #protocolVer:Ljava/lang/String;
    :cond_73
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$CustomWebViewClient;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mCallback:Lcom/android/email/activity/MessageViewFragmentBase$Callback;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2400(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$Callback;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/email/activity/MessageViewFragmentBase$Callback;->onUrlInMessageClicked(Ljava/lang/String;)Z

    move-result v6

    goto :goto_70
.end method
