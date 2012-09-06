.class public LrG;
.super Ljava/lang/Object;
.source "WebViewOpenActivity.java"

# interfaces
.implements Lrz;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, LrG;->a:Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LrA;
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, LrG;->a:Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a(Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;)Lry;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 3

    .prologue
    .line 122
    iget-object v0, p0, LrG;->a:Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a:Lck;

    iget-object v1, p0, LrG;->a:Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 123
    iget-object v0, p0, LrG;->a:Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->finish()V

    .line 124
    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .registers 4
    .parameter

    .prologue
    .line 116
    iget-object v0, p0, LrG;->a:Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a:Lck;

    iget-object v1, p0, LrG;->a:Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 117
    iget-object v0, p0, LrG;->a:Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->startActivity(Landroid/content/Intent;)V

    .line 118
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 133
    iget-object v0, p0, LrG;->a:Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a:Lck;

    iget-object v1, p0, LrG;->a:Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 134
    iget-object v0, p0, LrG;->a:Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a:LFX;

    const-string v1, "enableWebViewAccessibilityWorkaround"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, LFX;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 135
    iget-object v0, p0, LrG;->a:Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 137
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 138
    new-instance v1, LrJ;

    invoke-direct {v1, v0}, LrJ;-><init>(Landroid/view/accessibility/AccessibilityManager;)V

    .line 140
    iget-object v0, p0, LrG;->a:Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a(Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;)Landroid/webkit/WebView;

    move-result-object v0

    const-string v2, "accessibility"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    :cond_36
    iget-object v0, p0, LrG;->a:Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a(Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public a(LnQ;)V
    .registers 4
    .parameter

    .prologue
    .line 153
    iget-object v0, p0, LrG;->a:Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;

    invoke-static {v0, p1}, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a(Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;LnQ;)LnQ;

    .line 154
    iget-object v0, p0, LrG;->a:Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->showDialog(I)V

    .line 155
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 148
    iget-object v0, p0, LrG;->a:Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;

    invoke-static {v0, p1}, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a(Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;Ljava/lang/String;)V

    .line 149
    return-void
.end method
