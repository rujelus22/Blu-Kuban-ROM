.class public LND;
.super Ljava/lang/Object;
.source "PunchWebViewFragment.java"

# interfaces
.implements Lrz;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 353
    iput-object p1, p0, LND;->a:Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LrA;
    .registers 3

    .prologue
    .line 371
    iget-object v0, p0, LND;->a:Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;

    invoke-static {v0}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->i(Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;)Lck;

    move-result-object v0

    iget-object v1, p0, LND;->a:Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 372
    iget-object v0, p0, LND;->a:Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;

    invoke-static {v0}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a(Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;)LrA;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 3

    .prologue
    .line 364
    iget-object v0, p0, LND;->a:Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;

    invoke-static {v0}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->h(Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;)Lck;

    move-result-object v0

    iget-object v1, p0, LND;->a:Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 365
    invoke-static {}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "in finishActivity"

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iget-object v0, p0, LND;->a:Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 367
    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .registers 4
    .parameter

    .prologue
    .line 357
    iget-object v0, p0, LND;->a:Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;

    invoke-static {v0}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->g(Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;)Lck;

    move-result-object v0

    iget-object v1, p0, LND;->a:Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 358
    invoke-static {}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "in startActivity"

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    iget-object v0, p0, LND;->a:Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 360
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 377
    iget-object v0, p0, LND;->a:Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;

    invoke-static {v0}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->j(Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;)Lck;

    move-result-object v0

    iget-object v1, p0, LND;->a:Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 378
    invoke-static {}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in loadUrlInWebView "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object v0, p0, LND;->a:Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, LXH;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 380
    iget-object v0, p0, LND;->a:Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;

    invoke-static {v0}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a(Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;)V

    .line 384
    :goto_3a
    return-void

    .line 382
    :cond_3b
    iget-object v0, p0, LND;->a:Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;

    invoke-static {v0}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a(Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_3a
.end method

.method public a(LnQ;)V
    .registers 4
    .parameter

    .prologue
    .line 395
    iget-object v0, p0, LND;->a:Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;

    invoke-static {v0}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->l(Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;)Lck;

    move-result-object v0

    iget-object v1, p0, LND;->a:Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 396
    invoke-static {}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "in showLoginSpinner"

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object v0, p0, LND;->a:Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;

    invoke-static {v0}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a(Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;)Lnb;

    move-result-object v0

    if-nez v0, :cond_38

    const/4 v0, 0x1

    :goto_21
    invoke-static {v0}, LafQ;->b(Z)V

    .line 398
    iget-object v0, p0, LND;->a:Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;

    new-instance v1, Lnb;

    invoke-direct {v1, p1}, Lnb;-><init>(LnQ;)V

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a(Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;Lnb;)Lnb;

    .line 399
    iget-object v0, p0, LND;->a:Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;

    invoke-static {v0}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a(Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;)Lnb;

    move-result-object v0

    invoke-virtual {v0}, Lnb;->start()V

    .line 400
    return-void

    .line 397
    :cond_38
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public b(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 388
    iget-object v0, p0, LND;->a:Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;

    invoke-static {v0}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->k(Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;)Lck;

    move-result-object v0

    iget-object v1, p0, LND;->a:Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 389
    invoke-static {}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in showError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    iget-object v0, p0, LND;->a:Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;

    invoke-static {v0}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a(Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;)V

    .line 391
    return-void
.end method
