.class public LKp;
.super Ljava/lang/Object;
.source "KixWebViewActivity.java"

# interfaces
.implements Lrz;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 255
    iput-object p1, p0, LKp;->a:Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LrA;
    .registers 3

    .prologue
    .line 271
    iget-object v0, p0, LKp;->a:Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:Lck;

    iget-object v1, p0, LKp;->a:Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 272
    iget-object v0, p0, LKp;->a:Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a(Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;)LrA;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 3

    .prologue
    .line 265
    iget-object v0, p0, LKp;->a:Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:Lck;

    iget-object v1, p0, LKp;->a:Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 266
    iget-object v0, p0, LKp;->a:Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->finish()V

    .line 267
    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .registers 4
    .parameter

    .prologue
    .line 259
    iget-object v0, p0, LKp;->a:Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:Lck;

    iget-object v1, p0, LKp;->a:Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 260
    iget-object v0, p0, LKp;->a:Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 261
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 277
    iget-object v0, p0, LKp;->a:Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:Lck;

    iget-object v1, p0, LKp;->a:Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 278
    iget-object v0, p0, LKp;->a:Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a(Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;)Lcom/google/android/apps/docs/kixwebview/KixWebView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/apps/docs/kixwebview/KixWebView;->loadUrl(Ljava/lang/String;)V

    .line 279
    return-void
.end method

.method public a(LnQ;)V
    .registers 4
    .parameter

    .prologue
    .line 289
    iget-object v0, p0, LKp;->a:Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:Lck;

    iget-object v1, p0, LKp;->a:Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 290
    iget-object v0, p0, LKp;->a:Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;

    invoke-static {v0, p1}, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a(Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;LnQ;)LnQ;

    .line 291
    iget-object v0, p0, LKp;->a:Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->showDialog(I)V

    .line 292
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 283
    iget-object v0, p0, LKp;->a:Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:Lck;

    iget-object v1, p0, LKp;->a:Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 284
    iget-object v0, p0, LKp;->a:Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;

    invoke-static {v0, p1}, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a(Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;Ljava/lang/String;)V

    .line 285
    return-void
.end method
