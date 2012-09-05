.class public Lcom/google/android/youtube/core/LicensesActivity;
.super Landroid/app/Activity;
.source "LicensesActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static createIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 2
    .parameter "context"

    .prologue
    .line 28
    const-string v0, "file:///android_asset/licenses.html"

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/LicensesActivity;->createIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static createIntent(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;
    .registers 5
    .parameter "context"
    .parameter
    .parameter "licensesUrl"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/youtube/core/LicensesActivity;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 37
    .local p1, cls:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/google/android/youtube/core/LicensesActivity;>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "licensesUrl"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static createIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 32
    const-class v0, Lcom/google/android/youtube/core/LicensesActivity;

    invoke-static {p0, v0, p1}, Lcom/google/android/youtube/core/LicensesActivity;->createIntent(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected getContentViewId()I
    .registers 2

    .prologue
    .line 62
    const v0, 0x7f040002

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, -0x1

    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lcom/google/android/youtube/core/LicensesActivity;->getContentViewId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/youtube/core/LicensesActivity;->setContentView(I)V

    .line 46
    invoke-virtual {p0}, Lcom/google/android/youtube/core/LicensesActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v3, v3}, Landroid/view/Window;->setLayout(II)V

    .line 47
    invoke-virtual {p0}, Lcom/google/android/youtube/core/LicensesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "licensesUrl"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, licensesUrl:Ljava/lang/String;
    if-nez v0, :cond_27

    .line 49
    const-string v2, "LicensesActivity missing licenses URL, finishing."

    invoke-static {v2}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Lcom/google/android/youtube/core/LicensesActivity;->finish()V

    .line 55
    :goto_26
    return-void

    .line 53
    :cond_27
    const v2, 0x7f0d0009

    invoke-virtual {p0, v2}, Lcom/google/android/youtube/core/LicensesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    .line 54
    .local v1, webView:Landroid/webkit/WebView;
    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_26
.end method
