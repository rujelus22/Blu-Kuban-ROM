.class public Lcom/google/android/apps/plus/phone/LicenseActivity;
.super Landroid/app/Activity;
.source "LicenseActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "bundle"

    .prologue
    .line 20
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    const v1, 0x7f03003a

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/LicenseActivity;->setContentView(I)V

    .line 23
    const v1, 0x7f0d0063

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/LicenseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 24
    .local v0, webView:Landroid/webkit/WebView;
    const-string v1, "file:///android_asset/licenses.html"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 25
    return-void
.end method
