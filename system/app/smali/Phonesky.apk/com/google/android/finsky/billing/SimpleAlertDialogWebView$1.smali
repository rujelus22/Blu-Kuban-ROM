.class Lcom/google/android/finsky/billing/SimpleAlertDialogWebView$1;
.super Landroid/webkit/WebViewClient;
.source "SimpleAlertDialogWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/SimpleAlertDialogWebView;->configureView(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/SimpleAlertDialogWebView;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/SimpleAlertDialogWebView;)V
    .registers 2
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/google/android/finsky/billing/SimpleAlertDialogWebView$1;->this$0:Lcom/google/android/finsky/billing/SimpleAlertDialogWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5
    .parameter "view"
    .parameter "url"

    .prologue
    .line 58
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/google/android/finsky/billing/SimpleAlertDialogWebView$1;->this$0:Lcom/google/android/finsky/billing/SimpleAlertDialogWebView;

    const v1, 0x7f0800d5

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/SimpleAlertDialogWebView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 60
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 61
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 6
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 49
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 50
    iget-object v0, p0, Lcom/google/android/finsky/billing/SimpleAlertDialogWebView$1;->this$0:Lcom/google/android/finsky/billing/SimpleAlertDialogWebView;

    #getter for: Lcom/google/android/finsky/billing/SimpleAlertDialogWebView;->mUrl:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/finsky/billing/SimpleAlertDialogWebView;->access$000(Lcom/google/android/finsky/billing/SimpleAlertDialogWebView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 51
    iget-object v0, p0, Lcom/google/android/finsky/billing/SimpleAlertDialogWebView$1;->this$0:Lcom/google/android/finsky/billing/SimpleAlertDialogWebView;

    const v1, 0x7f0800d5

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/SimpleAlertDialogWebView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 52
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 54
    :cond_21
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "view"
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    const/16 v2, 0x8

    .line 66
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 68
    iget-object v0, p0, Lcom/google/android/finsky/billing/SimpleAlertDialogWebView$1;->this$0:Lcom/google/android/finsky/billing/SimpleAlertDialogWebView;

    const v1, 0x7f0800d5

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/SimpleAlertDialogWebView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 69
    iget-object v0, p0, Lcom/google/android/finsky/billing/SimpleAlertDialogWebView$1;->this$0:Lcom/google/android/finsky/billing/SimpleAlertDialogWebView;

    const v1, 0x7f080040

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/SimpleAlertDialogWebView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 70
    return-void
.end method
