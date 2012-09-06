.class Lcom/dropbox/android/activity/ck;
.super Landroid/webkit/WebViewClient;
.source "panda.py"


# instance fields
.field final synthetic a:Lcom/dropbox/android/activity/WebViewActivity;

.field private b:Z


# direct methods
.method private constructor <init>(Lcom/dropbox/android/activity/WebViewActivity;)V
    .registers 3
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/dropbox/android/activity/ck;->a:Lcom/dropbox/android/activity/WebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/android/activity/ck;->b:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/dropbox/android/activity/WebViewActivity;Lcom/dropbox/android/activity/ch;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/dropbox/android/activity/ck;-><init>(Lcom/dropbox/android/activity/WebViewActivity;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Lcom/dropbox/android/activity/ck;->a:Lcom/dropbox/android/activity/WebViewActivity;

    invoke-static {v0}, Lcom/dropbox/android/activity/WebViewActivity;->b(Lcom/dropbox/android/activity/WebViewActivity;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/dropbox/android/activity/ck;->b:Z

    if-nez v0, :cond_16

    .line 93
    iget-object v0, p0, Lcom/dropbox/android/activity/ck;->a:Lcom/dropbox/android/activity/WebViewActivity;

    invoke-static {v0}, Lcom/dropbox/android/activity/WebViewActivity;->b(Lcom/dropbox/android/activity/WebViewActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 95
    :cond_16
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dropbox/android/activity/ck;->b:Z

    .line 60
    iget-object v0, p0, Lcom/dropbox/android/activity/ck;->a:Lcom/dropbox/android/activity/WebViewActivity;

    const/4 v1, 0x0

    invoke-static {v0, p3, v1}, Lcom/dropbox/android/util/aT;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 61
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 65
    invoke-static {p2}, Lcom/dropbox/android/util/aN;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 66
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 67
    invoke-static {v0}, Lcom/dropbox/android/util/aa;->a(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_54

    .line 71
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 72
    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 74
    :try_start_1d
    iget-object v0, p0, Lcom/dropbox/android/activity/ck;->a:Lcom/dropbox/android/activity/WebViewActivity;

    invoke-virtual {v0, v1}, Lcom/dropbox/android/activity/WebViewActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_22
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1d .. :try_end_22} :catch_23

    .line 87
    :cond_22
    :goto_22
    return v4

    .line 75
    :catch_23
    move-exception v0

    .line 76
    invoke-static {}, Ldbxyzptlk/h/b;->b()Ldbxyzptlk/h/b;

    move-result-object v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find any activity to open: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/dropbox/android/activity/ck;->a:Lcom/dropbox/android/activity/WebViewActivity;

    invoke-static {v3}, Lcom/dropbox/android/activity/WebViewActivity;->a(Lcom/dropbox/android/activity/WebViewActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ldbxyzptlk/h/b;->a(Ljava/lang/Throwable;)V

    goto :goto_22

    .line 82
    :cond_54
    iget-object v0, p0, Lcom/dropbox/android/activity/ck;->a:Lcom/dropbox/android/activity/WebViewActivity;

    invoke-static {v0, p2}, Lcom/dropbox/android/activity/WebViewActivity;->a(Lcom/dropbox/android/activity/WebViewActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lcom/dropbox/android/activity/ck;->a:Lcom/dropbox/android/activity/WebViewActivity;

    invoke-virtual {v0, v4}, Lcom/dropbox/android/activity/WebViewActivity;->setProgressBarVisibility(Z)V

    .line 84
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_22
.end method
