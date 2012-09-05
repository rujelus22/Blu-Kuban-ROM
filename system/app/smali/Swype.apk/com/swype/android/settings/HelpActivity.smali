.class public Lcom/swype/android/settings/HelpActivity;
.super Landroid/app/Activity;
.source "HelpActivity.java"


# static fields
.field public static EXTRA_DATA:Ljava/lang/String;

.field public static EXTRA_PATH:Ljava/lang/String;


# instance fields
.field protected webView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const-string v0, "DATA"

    sput-object v0, Lcom/swype/android/settings/HelpActivity;->EXTRA_DATA:Ljava/lang/String;

    .line 26
    const-string v0, "PATH"

    sput-object v0, Lcom/swype/android/settings/HelpActivity;->EXTRA_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private getInterfaceLanguage()Ljava/lang/String;
    .registers 3

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/swype/android/settings/HelpActivity;->getApplication()Landroid/app/Application;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/swype/android/inputmethod/SwypeApplication;

    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeApplication;->getSwypeCore()Lcom/swype/android/jni/SwypeCore;

    move-result-object v0

    .line 72
    .local v0, core:Lcom/swype/android/jni/SwypeCore;
    invoke-virtual {v0}, Lcom/swype/android/jni/SwypeCore;->onCreateDefault()V

    .line 74
    :try_start_d
    invoke-virtual {v0}, Lcom/swype/android/jni/SwypeCore;->getInterfaceLanguage()Ljava/lang/String;
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_15

    move-result-object v1

    .line 76
    invoke-virtual {v0}, Lcom/swype/android/jni/SwypeCore;->onDestroy()V

    return-object v1

    :catchall_15
    move-exception v1

    invoke-virtual {v0}, Lcom/swype/android/jni/SwypeCore;->onDestroy()V

    throw v1
.end method

.method private isInAssets(Ljava/lang/String;)Z
    .registers 7
    .parameter

    .prologue
    .line 86
    const/4 v0, 0x0

    .line 87
    invoke-virtual {p0}, Lcom/swype/android/settings/HelpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/swype/android/inputmethod/SwypeApplication;

    .line 88
    if-eqz p0, :cond_23

    .line 90
    :try_start_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "files/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/swype/android/inputmethod/SwypeApplication;->isInAssets(Ljava/lang/String;)Z
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1f} :catch_24

    move-result v1

    if-eqz v1, :cond_23

    .line 91
    const/4 v0, 0x1

    .line 98
    :cond_23
    :goto_23
    return v0

    .line 94
    :catch_24
    move-exception v1

    .line 95
    const-string v2, "Swype"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception while getting assets list: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23
.end method

.method private load(Landroid/content/Intent;)V
    .registers 8
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 48
    sget-object v0, Lcom/swype/android/settings/HelpActivity;->EXTRA_DATA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 49
    sget-object v0, Lcom/swype/android/settings/HelpActivity;->EXTRA_DATA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 50
    iget-object v0, p0, Lcom/swype/android/settings/HelpActivity;->webView:Landroid/webkit/WebView;

    sget-object v1, Lcom/swype/android/inputmethod/SwypeApplication;->BASE_HELP_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "utf-8"

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :goto_1d
    return-void

    .line 53
    :cond_1e
    sget-object v0, Lcom/swype/android/settings/HelpActivity;->EXTRA_PATH:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 54
    invoke-virtual {p0}, Lcom/swype/android/settings/HelpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/swype/android/settings/HelpActivity;->EXTRA_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    :goto_30
    sget-object v1, Lcom/swype/android/inputmethod/SwypeApplication;->BASE_HELP_URI:Landroid/net/Uri;

    invoke-static {v1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 60
    invoke-direct {p0, v0}, Lcom/swype/android/settings/HelpActivity;->isInAssets(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_68

    .line 61
    sget-object v1, Lcom/swype/android/inputmethod/SwypeApplication;->NATIVE_DATA_FILE_URI:Landroid/net/Uri;

    invoke-static {v1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    :goto_4a
    iget-object v1, p0, Lcom/swype/android/settings/HelpActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1d

    .line 56
    :cond_50
    invoke-direct {p0}, Lcom/swype/android/settings/HelpActivity;->getInterfaceLanguage()Ljava/lang/String;

    move-result-object v0

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-full.htm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_30

    :cond_68
    move-object v0, v1

    goto :goto_4a
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/swype/android/settings/HelpActivity;->webView:Landroid/webkit/WebView;

    .line 34
    iget-object v0, p0, Lcom/swype/android/settings/HelpActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 36
    iget-object v0, p0, Lcom/swype/android/settings/HelpActivity;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 37
    iget-object v0, p0, Lcom/swype/android/settings/HelpActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/swype/android/settings/HelpActivity;->setContentView(Landroid/view/View;)V

    .line 38
    invoke-virtual {p0}, Lcom/swype/android/settings/HelpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/swype/android/settings/HelpActivity;->load(Landroid/content/Intent;)V

    .line 39
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 2
    .parameter "intent"

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 44
    invoke-direct {p0, p1}, Lcom/swype/android/settings/HelpActivity;->load(Landroid/content/Intent;)V

    .line 45
    return-void
.end method
