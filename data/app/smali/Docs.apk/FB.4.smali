.class public LFB;
.super Ljava/lang/Object;
.source "GViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/experiments/gview/GViewActivity;

.field final synthetic a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/experiments/gview/GViewActivity;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 405
    iput-object p1, p0, LFB;->a:Lcom/google/android/apps/docs/experiments/gview/GViewActivity;

    iput-object p2, p0, LFB;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/16 v4, 0x8

    .line 408
    iget-object v0, p0, LFB;->a:Ljava/lang/String;

    .line 409
    if-nez v0, :cond_e

    .line 410
    iget-object v0, p0, LFB;->a:Lcom/google/android/apps/docs/experiments/gview/GViewActivity;

    sget v1, LcY;->error_opening_document:I

    invoke-virtual {v0, v1}, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 412
    :cond_e
    iget-object v1, p0, LFB;->a:Lcom/google/android/apps/docs/experiments/gview/GViewActivity;

    invoke-static {v1}, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->a(Lcom/google/android/apps/docs/experiments/gview/GViewActivity;)Landroid/webkit/WebView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 413
    iget-object v1, p0, LFB;->a:Lcom/google/android/apps/docs/experiments/gview/GViewActivity;

    invoke-static {v1}, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->a(Lcom/google/android/apps/docs/experiments/gview/GViewActivity;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 414
    iget-object v1, p0, LFB;->a:Lcom/google/android/apps/docs/experiments/gview/GViewActivity;

    iget-object v1, v1, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->a:LXJ;

    iget-object v2, p0, LFB;->a:Lcom/google/android/apps/docs/experiments/gview/GViewActivity;

    invoke-static {v2}, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->a(Lcom/google/android/apps/docs/experiments/gview/GViewActivity;)Landroid/webkit/WebView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3}, LXJ;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 415
    iget-object v0, p0, LFB;->a:Lcom/google/android/apps/docs/experiments/gview/GViewActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->a(Lcom/google/android/apps/docs/experiments/gview/GViewActivity;)Lcom/google/android/apps/docs/experiments/gview/TouchImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->setVisibility(I)V

    .line 416
    iget-object v0, p0, LFB;->a:Lcom/google/android/apps/docs/experiments/gview/GViewActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->a(Lcom/google/android/apps/docs/experiments/gview/GViewActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 417
    return-void
.end method
