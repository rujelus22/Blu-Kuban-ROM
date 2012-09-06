.class public LKx;
.super LrB;
.source "KixWebViewActivity.java"


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;Lrz;Ljava/lang/String;)V
    .registers 14
    .parameter
    .parameter
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, LKx;->a:Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;

    .line 158
    iget-object v4, p1, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:LFX;

    iget-object v5, p1, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:Ljava/lang/Class;

    iget-object v6, p1, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:LLz;

    const-string v0, "webview"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    iget-object v8, p1, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:LIG;

    iget-object v9, p1, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->b:Landroid/os/Handler;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v9}, LrB;-><init>(Landroid/content/Context;Lrz;Ljava/lang/String;LFX;Ljava/lang/Class;LLz;Landroid/content/SharedPreferences;LIG;Landroid/os/Handler;)V

    .line 160
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 174
    iget-object v0, p0, LKx;->a:Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:Lck;

    iget-object v1, p0, LKx;->a:Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 175
    const-string v0, "KixWebViewActivity"

    const-string v1, "PageFinished"

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-super {p0, p1, p2}, LrB;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method public onScaleChanged(Landroid/webkit/WebView;FF)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 166
    iget-object v0, p0, LKx;->a:Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:Lck;

    iget-object v1, p0, LKx;->a:Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 167
    invoke-super {p0, p1, p2, p3}, LrB;->onScaleChanged(Landroid/webkit/WebView;FF)V

    .line 168
    const-string v0, "KixWebViewActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scale: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v0, p0, LKx;->a:Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a(Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;)LKF;

    move-result-object v0

    invoke-interface {v0, p3}, LKF;->a(F)V

    .line 170
    return-void
.end method
