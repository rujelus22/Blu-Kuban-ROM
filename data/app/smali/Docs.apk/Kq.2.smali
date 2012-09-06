.class public LKq;
.super Landroid/webkit/WebChromeClient;
.source "KixWebViewActivity.java"


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 295
    iput-object p1, p0, LKq;->a:Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 298
    iget-object v0, p0, LKq;->a:Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:Lck;

    iget-object v1, p0, LKq;->a:Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 299
    iget-object v0, p0, LKq;->a:Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a()LIi;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, p2, v1}, LIi;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, LKq;->a:Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->d(Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;)V

    .line 301
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 302
    return-void
.end method
