.class public LKv;
.super Ljava/lang/Object;
.source "KixWebViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 660
    iput-object p1, p0, LKv;->a:Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 663
    iget-object v0, p0, LKv;->a:Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:Lck;

    iget-object v1, p0, LKv;->a:Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 666
    iget-object v0, p0, LKv;->a:Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->c(Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;)Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, LKv;->a:Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->d(Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 667
    iget-object v0, p0, LKv;->a:Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->f()V

    .line 668
    iget-object v0, p0, LKv;->a:Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->e()V

    .line 670
    :cond_23
    iget-object v0, p0, LKv;->a:Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->e(Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;)Z

    move-result v0

    if-nez v0, :cond_53

    .line 671
    iget-object v0, p0, LKv;->a:Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a(Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 672
    iget-object v0, p0, LKv;->a:Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a(Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_53

    .line 673
    iget-object v0, p0, LKv;->a:Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:LdE;

    iget-object v1, p0, LKv;->a:Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;

    invoke-static {v1}, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a(Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "webViewApiLoadedDuration"

    invoke-virtual {v0, v1, v2}, LdE;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 675
    iget-object v0, p0, LKv;->a:Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a(Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    :cond_53
    iget-object v0, p0, LKv;->a:Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->b(Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;Z)Z

    .line 679
    return-void
.end method
