.class public Lcom/google/android/youtube/core/LicensesActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .registers 4
    .parameter

    .prologue
    .line 31
    const-string v0, "file:///android_asset/licenses.html"

    const-class v1, Lcom/google/android/youtube/core/LicensesActivity;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "licensesUrl"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v0, 0x7f040037

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/LicensesActivity;->setContentView(I)V

    .line 49
    invoke-virtual {p0}, Lcom/google/android/youtube/core/LicensesActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 50
    invoke-virtual {p0}, Lcom/google/android/youtube/core/LicensesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "licensesUrl"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 51
    if-nez v1, :cond_26

    .line 52
    const-string v0, "LicensesActivity missing licenses URL, finishing."

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->c(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/google/android/youtube/core/LicensesActivity;->finish()V

    .line 67
    :goto_25
    return-void

    .line 56
    :cond_26
    const v0, 0x7f08007d

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/LicensesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 57
    new-instance v2, Lcom/google/android/youtube/core/i;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/core/i;-><init>(Lcom/google/android/youtube/core/LicensesActivity;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 66
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_25
.end method
