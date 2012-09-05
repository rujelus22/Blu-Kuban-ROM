.class Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity$MyWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "BasePlusOneWebViewSignupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyWebChromeClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 200
    iput-object p1, p0, Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity$MyWebChromeClient;->this$0:Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-direct {p0, p1}, Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity$MyWebChromeClient;-><init>(Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;)V

    return-void
.end method


# virtual methods
.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .registers 12
    .parameter "view"
    .parameter "dialog"
    .parameter "userGesture"
    .parameter "resultMsg"

    .prologue
    const/4 v2, 0x0

    .line 205
    if-eqz p3, :cond_1d

    invoke-virtual {p1}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v1

    .line 207
    .local v1, hitTestResult:Landroid/webkit/WebView$HitTestResult;
    :goto_7
    if-nez v1, :cond_1f

    .line 208
    .local v2, targetUrl:Ljava/lang/String;
    :goto_9
    if-eqz v2, :cond_1b

    .line 210
    :try_start_b
    iget-object v3, p0, Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity$MyWebChromeClient;->this$0:Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v3, v4}, Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_1b} :catch_24

    .line 217
    :cond_1b
    :goto_1b
    const/4 v3, 0x0

    return v3

    .end local v1           #hitTestResult:Landroid/webkit/WebView$HitTestResult;
    .end local v2           #targetUrl:Ljava/lang/String;
    :cond_1d
    move-object v1, v2

    .line 205
    goto :goto_7

    .line 207
    .restart local v1       #hitTestResult:Landroid/webkit/WebView$HitTestResult;
    :cond_1f
    invoke-virtual {v1}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v2

    goto :goto_9

    .line 211
    .restart local v2       #targetUrl:Ljava/lang/String;
    :catch_24
    move-exception v0

    .line 212
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v3, "PlusOneActivity"

    const/4 v4, 0x6

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 213
    const-string v3, "PlusOneActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error starting browser for URL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1b
.end method
