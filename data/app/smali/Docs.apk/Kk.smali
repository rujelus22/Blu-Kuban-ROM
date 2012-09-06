.class public LKk;
.super Ljava/lang/Object;
.source "KixWebViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/view/MenuItem;

.field final synthetic a:Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;Landroid/view/MenuItem;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 803
    iput-object p1, p0, LKk;->a:Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;

    iput-object p2, p0, LKk;->a:Landroid/view/MenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 806
    iget-object v0, p0, LKk;->a:Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:Lck;

    iget-object v1, p0, LKk;->a:Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 807
    iget-object v0, p0, LKk;->a:Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->f(Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 813
    :goto_11
    return-void

    .line 810
    :cond_12
    iget-object v0, p0, LKk;->a:Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->c(Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;Z)Z

    .line 811
    iget-object v0, p0, LKk;->a:Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;

    iget-object v1, p0, LKk;->a:Landroid/view/MenuItem;

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a(Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;Landroid/view/MenuItem;)V

    .line 812
    iget-object v0, p0, LKk;->a:Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->e(Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;)V

    goto :goto_11
.end method
