.class public Lcom/google/android/apps/docs/kixwebview/KixWebViewFragment;
.super Lcom/google/android/apps/docs/fragment/WebViewFragment;
.source "KixWebViewFragment.java"


# instance fields
.field private a:LKB;

.field private a:Lcom/google/android/apps/docs/kixwebview/KixWebView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/google/android/apps/docs/fragment/WebViewFragment;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewFragment;->a:LKB;

    return-void
.end method


# virtual methods
.method public a()Landroid/webkit/WebView;
    .registers 3

    .prologue
    .line 35
    new-instance v0, Lcom/google/android/apps/docs/kixwebview/KixWebView;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/kixwebview/KixWebViewFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/docs/kixwebview/KixWebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewFragment;->a:Lcom/google/android/apps/docs/kixwebview/KixWebView;

    .line 36
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewFragment;->a:Lcom/google/android/apps/docs/kixwebview/KixWebView;

    return-object v0
.end method

.method public a()Lcom/google/android/apps/docs/kixwebview/KixWebView;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewFragment;->a:Lcom/google/android/apps/docs/kixwebview/KixWebView;

    return-object v0
.end method

.method public a(LKB;)V
    .registers 2
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewFragment;->a:LKB;

    .line 48
    return-void
.end method

.method public f()V
    .registers 2

    .prologue
    .line 60
    invoke-super {p0}, Lcom/google/android/apps/docs/fragment/WebViewFragment;->f()V

    .line 61
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewFragment;->a:LKB;

    if-eqz v0, :cond_c

    .line 62
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewFragment;->a:LKB;

    invoke-interface {v0}, LKB;->h()V

    .line 64
    :cond_c
    return-void
.end method

.method public g()V
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewFragment;->a:LKB;

    if-eqz v0, :cond_9

    .line 53
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewFragment;->a:LKB;

    invoke-interface {v0}, LKB;->g()V

    .line 55
    :cond_9
    invoke-super {p0}, Lcom/google/android/apps/docs/fragment/WebViewFragment;->g()V

    .line 56
    return-void
.end method
