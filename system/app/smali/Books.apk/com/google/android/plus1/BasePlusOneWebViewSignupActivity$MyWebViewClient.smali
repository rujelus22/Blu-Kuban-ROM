.class Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity$MyWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "BasePlusOneWebViewSignupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity$MyWebViewClient;->this$0:Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity$MyWebViewClient;-><init>(Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 7
    .parameter "view"
    .parameter "url"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity$MyWebViewClient;->this$0:Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;

    #getter for: Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;->access$400(Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity$MyWebViewClient;->this$0:Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;

    #getter for: Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;->mShowWebViewRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;->access$300(Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 172
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity$MyWebViewClient;->this$0:Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;

    #getter for: Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;->access$400(Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity$MyWebViewClient;->this$0:Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;

    #getter for: Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;->mShowWebViewRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;->access$300(Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 173
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 7
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 162
    const-string v0, "PlusOneActivity"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 163
    const-string v0, "PlusOneActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WebView loading "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_21
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity$MyWebViewClient;->this$0:Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;

    #getter for: Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;->access$400(Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity$MyWebViewClient;->this$0:Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;

    #getter for: Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;->mShowWebViewRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;->access$300(Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 166
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 167
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "view"
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 179
    const-string v0, "PlusOneActivity"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 180
    const-string v0, "PlusOneActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SignupActivity received an error when opening "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_35
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity$MyWebViewClient;->this$0:Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;

    invoke-virtual {v0, p2, p3, p4}, Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;->displayErrorAndFinish(ILjava/lang/String;Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 5
    .parameter "view"
    .parameter "url"

    .prologue
    .line 188
    const-string v0, "plusone://continue"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 189
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity$MyWebViewClient;->this$0:Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;->processSignupResultUriAndFinish(Landroid/net/Uri;)V

    .line 190
    const/4 v0, 0x1

    .line 192
    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method
