.class public LNE;
.super Landroid/webkit/WebChromeClient;
.source "PunchWebViewFragment.java"


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 403
    iput-object p1, p0, LNE;->a:Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 406
    iget-object v0, p0, LNE;->a:Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;

    invoke-static {v0}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->m(Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;)Lck;

    move-result-object v0

    iget-object v1, p0, LNE;->a:Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 408
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 409
    return-void
.end method
