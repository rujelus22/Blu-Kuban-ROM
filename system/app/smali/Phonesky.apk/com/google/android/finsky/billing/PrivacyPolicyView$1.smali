.class Lcom/google/android/finsky/billing/PrivacyPolicyView$1;
.super Landroid/webkit/WebViewClient;
.source "PrivacyPolicyView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/PrivacyPolicyView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/PrivacyPolicyView;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/PrivacyPolicyView;)V
    .registers 2
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/google/android/finsky/billing/PrivacyPolicyView$1;->this$0:Lcom/google/android/finsky/billing/PrivacyPolicyView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5
    .parameter "view"
    .parameter "url"

    .prologue
    .line 57
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/google/android/finsky/billing/PrivacyPolicyView$1;->this$0:Lcom/google/android/finsky/billing/PrivacyPolicyView;

    const v1, 0x7f0800cf

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/PrivacyPolicyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 59
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 60
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 6
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 48
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 49
    iget-object v0, p0, Lcom/google/android/finsky/billing/PrivacyPolicyView$1;->this$0:Lcom/google/android/finsky/billing/PrivacyPolicyView;

    #getter for: Lcom/google/android/finsky/billing/PrivacyPolicyView;->mUrl:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/finsky/billing/PrivacyPolicyView;->access$000(Lcom/google/android/finsky/billing/PrivacyPolicyView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 50
    iget-object v0, p0, Lcom/google/android/finsky/billing/PrivacyPolicyView$1;->this$0:Lcom/google/android/finsky/billing/PrivacyPolicyView;

    const v1, 0x7f0800cf

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/PrivacyPolicyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 51
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 53
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

    .line 65
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 67
    iget-object v0, p0, Lcom/google/android/finsky/billing/PrivacyPolicyView$1;->this$0:Lcom/google/android/finsky/billing/PrivacyPolicyView;

    const v1, 0x7f0800cf

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/PrivacyPolicyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 68
    iget-object v0, p0, Lcom/google/android/finsky/billing/PrivacyPolicyView$1;->this$0:Lcom/google/android/finsky/billing/PrivacyPolicyView;

    const v1, 0x7f080045

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/PrivacyPolicyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 69
    return-void
.end method
