.class final Lcom/google/android/plus1/s;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;)V
    .registers 3
    .parameter

    .prologue
    .line 200
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/plus1/s;-><init>(Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 200
    iput-object p1, p0, Lcom/google/android/plus1/s;->a:Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 205
    if-eqz p3, :cond_1e

    invoke-virtual {p1}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v1

    .line 207
    :goto_7
    if-nez v1, :cond_20

    move-object v1, v0

    .line 208
    :goto_a
    if-eqz v1, :cond_1c

    .line 210
    :try_start_c
    iget-object v0, p0, Lcom/google/android/plus1/s;->a:Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v2}, Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_1c} :catch_26

    .line 217
    :cond_1c
    :goto_1c
    const/4 v0, 0x0

    return v0

    :cond_1e
    move-object v1, v0

    .line 205
    goto :goto_7

    .line 207
    :cond_20
    invoke-virtual {v1}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_a

    .line 211
    :catch_26
    move-exception v0

    .line 212
    const-string v2, "PlusOneActivity"

    const/4 v3, 0x6

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 213
    const-string v2, "PlusOneActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error starting browser for URL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1c
.end method
