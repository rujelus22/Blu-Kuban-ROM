.class public abstract Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;
.super Lcom/google/android/plus1/BasePlusOneWebSignupActivity;
.source "SourceFile"


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Ljava/lang/Runnable;

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/android/plus1/BasePlusOneWebSignupActivity;-><init>()V

    .line 200
    return-void
.end method

.method static synthetic a(Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;)Z
    .registers 2
    .parameter

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;->d:Z

    return v0
.end method

.method static synthetic a(Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;Z)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;->d:Z

    return v0
.end method

.method static synthetic b(Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;)Ljava/lang/Runnable;
    .registers 2
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;->b:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;)Landroid/os/Handler;
    .registers 2
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;->a:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method protected final a(ILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;->n()Ljava/lang/CharSequence;

    move-result-object v0

    .line 149
    if-eqz v0, :cond_e

    .line 150
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 152
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;->finish()V

    .line 153
    return-void
.end method

.method protected abstract l()Landroid/webkit/WebView;
.end method

.method protected abstract m()V
.end method

.method protected abstract n()Ljava/lang/CharSequence;
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/google/android/plus1/BasePlusOneWebSignupActivity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;->a:Landroid/os/Handler;

    .line 80
    new-instance v0, Lcom/google/android/plus1/q;

    invoke-direct {v0, p0}, Lcom/google/android/plus1/q;-><init>(Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;)V

    iput-object v0, p0, Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;->b:Ljava/lang/Runnable;

    .line 89
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 93
    invoke-super {p0, p1}, Lcom/google/android/plus1/BasePlusOneWebSignupActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 94
    invoke-virtual {p0}, Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;->l()Landroid/webkit/WebView;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 96
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 97
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 98
    new-instance v1, Lcom/google/android/plus1/t;

    invoke-direct {v1, p0}, Lcom/google/android/plus1/t;-><init>(Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 99
    new-instance v1, Lcom/google/android/plus1/s;

    invoke-direct {v1, p0}, Lcom/google/android/plus1/s;-><init>(Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 103
    new-instance v1, Lcom/google/android/plus1/r;

    invoke-direct {v1, p0}, Lcom/google/android/plus1/r;-><init>(Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 117
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 118
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 120
    if-nez p1, :cond_4d

    const/4 v0, 0x0

    .line 122
    :goto_37
    if-eqz v0, :cond_4c

    .line 123
    const-string v0, "PlusOneActivity"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 124
    const-string v0, "PlusOneActivity"

    const-string v1, "Activity restarted; restarting signup process"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_49
    invoke-virtual {p0}, Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;->c()V

    .line 128
    :cond_4c
    return-void

    .line 120
    :cond_4d
    const-string v0, "signupStarted"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_37
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 132
    invoke-super {p0, p1}, Lcom/google/android/plus1/BasePlusOneWebSignupActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 133
    const-string v0, "signupStarted"

    iget-boolean v1, p0, Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;->c:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 134
    return-void
.end method
