.class Lcom/android/browser/Tab$4$1;
.super Ljava/lang/Object;
.source "Tab.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/Tab$4;->createWindow(ZLandroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/browser/Tab$4;

.field final synthetic val$msg:Landroid/os/Message;

.field final synthetic val$transport:Landroid/webkit/WebView$WebViewTransport;


# direct methods
.method constructor <init>(Lcom/android/browser/Tab$4;Landroid/webkit/WebView$WebViewTransport;Landroid/os/Message;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1099
    iput-object p1, p0, Lcom/android/browser/Tab$4$1;->this$1:Lcom/android/browser/Tab$4;

    iput-object p2, p0, Lcom/android/browser/Tab$4$1;->val$transport:Landroid/webkit/WebView$WebViewTransport;

    iput-object p3, p0, Lcom/android/browser/Tab$4$1;->val$msg:Landroid/os/Message;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 1101
    iget-object v1, p0, Lcom/android/browser/Tab$4$1;->this$1:Lcom/android/browser/Tab$4;

    iget-object v1, v1, Lcom/android/browser/Tab$4;->this$0:Lcom/android/browser/Tab;

    iget-object v1, v1, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/browser/Tab$4$1;->this$1:Lcom/android/browser/Tab$4;

    iget-object v3, v3, Lcom/android/browser/Tab$4;->this$0:Lcom/android/browser/Tab;

    iget-object v3, v3, Lcom/android/browser/Tab;->mCurrentState:Lcom/android/browser/Tab$PageState;

    iget-boolean v3, v3, Lcom/android/browser/Tab$PageState;->mIncognito:Z

    invoke-interface {v1, v2, v3}, Lcom/android/browser/WebViewController;->openTabAndShow(Landroid/os/Bundle;Z)Lcom/android/browser/Tab;

    move-result-object v0

    .line 1102
    .local v0, newTab:Lcom/android/browser/Tab;
    iget-object v1, p0, Lcom/android/browser/Tab$4$1;->this$1:Lcom/android/browser/Tab$4;

    iget-object v1, v1, Lcom/android/browser/Tab$4;->this$0:Lcom/android/browser/Tab;

    if-eq v0, v1, :cond_20

    .line 1103
    iget-object v1, p0, Lcom/android/browser/Tab$4$1;->this$1:Lcom/android/browser/Tab$4;

    iget-object v1, v1, Lcom/android/browser/Tab$4;->this$0:Lcom/android/browser/Tab;

    invoke-virtual {v1, v0}, Lcom/android/browser/Tab;->addChildTab(Lcom/android/browser/Tab;)V

    .line 1105
    :cond_20
    iget-object v1, p0, Lcom/android/browser/Tab$4$1;->val$transport:Landroid/webkit/WebView$WebViewTransport;

    invoke-virtual {v0}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView$WebViewTransport;->setWebView(Landroid/webkit/WebView;)V

    .line 1106
    iget-object v1, p0, Lcom/android/browser/Tab$4$1;->val$msg:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1107
    return-void
.end method
