.class public abstract Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;
.super Lcom/google/android/plus1/BasePlusOneWebSignupActivity;
.source "BasePlusOneWebViewSignupActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity$MyWebChromeClient;,
        Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity$MyWebViewClient;
    }
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mShowWebViewRunnable:Ljava/lang/Runnable;

.field private mSignupStarted:Z

.field private mWebViewShown:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/android/plus1/BasePlusOneWebSignupActivity;-><init>()V

    .line 200
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;->mWebViewShown:Z

    return v0
.end method

.method static synthetic access$002(Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;->mWebViewShown:Z

    return p1
.end method

.method static synthetic access$300(Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;->mShowWebViewRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method protected displayErrorAndFinish(ILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 148
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;->getErrorMessage(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 149
    .local v0, errorMessage:Ljava/lang/CharSequence;
    if-eqz v0, :cond_e

    .line 150
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 152
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;->finish()V

    .line 153
    return-void
.end method

.method protected abstract getErrorMessage(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
.end method

.method protected abstract getWebView()Landroid/webkit/WebView;
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/google/android/plus1/BasePlusOneWebSignupActivity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;->mHandler:Landroid/os/Handler;

    .line 80
    new-instance v0, Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity$1;-><init>(Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;)V

    iput-object v0, p0, Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;->mShowWebViewRunnable:Ljava/lang/Runnable;

    .line 89
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 93
    invoke-super {p0, p1}, Lcom/google/android/plus1/BasePlusOneWebSignupActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 94
    invoke-virtual {p0}, Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    .line 95
    .local v2, webView:Landroid/webkit/WebView;
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 96
    .local v1, webSettings:Landroid/webkit/WebSettings;
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 97
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 98
    new-instance v3, Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity$MyWebViewClient;

    invoke-direct {v3, p0, v4}, Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity$MyWebViewClient;-><init>(Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity$1;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 99
    new-instance v3, Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity$MyWebChromeClient;

    invoke-direct {v3, p0, v4}, Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity$MyWebChromeClient;-><init>(Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity$1;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 103
    new-instance v3, Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity$2;

    invoke-direct {v3, p0}, Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity$2;-><init>(Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 117
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 118
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 120
    if-nez p1, :cond_4e

    const/4 v0, 0x0

    .line 122
    .local v0, signupStarted:Z
    :goto_38
    if-eqz v0, :cond_4d

    .line 123
    const-string v3, "PlusOneActivity"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 124
    const-string v3, "PlusOneActivity"

    const-string v4, "Activity restarted; restarting signup process"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_4a
    invoke-virtual {p0}, Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;->onSignupClicked()V

    .line 128
    :cond_4d
    return-void

    .line 120
    .end local v0           #signupStarted:Z
    :cond_4e
    const-string v3, "signupStarted"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_38
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 132
    invoke-super {p0, p1}, Lcom/google/android/plus1/BasePlusOneWebSignupActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 133
    const-string v0, "signupStarted"

    iget-boolean v1, p0, Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;->mSignupStarted:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 134
    return-void
.end method

.method protected abstract showWebView()V
.end method
