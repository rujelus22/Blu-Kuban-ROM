.class public Lcom/dropbox/android/activity/DropboxWebViewActivity;
.super Lcom/dropbox/android/activity/WebViewActivity;
.source "panda.py"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/dropbox/android/activity/WebViewActivity;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/android/activity/DropboxWebViewActivity;->a:Z

    return-void
.end method


# virtual methods
.method protected final a()Z
    .registers 2

    .prologue
    .line 17
    const/4 v0, 0x1

    return v0
.end method

.method public final e_()Z
    .registers 2

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/dropbox/android/activity/DropboxWebViewActivity;->a:Z

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 27
    invoke-virtual {p0}, Lcom/dropbox/android/activity/DropboxWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 30
    invoke-virtual {p0}, Lcom/dropbox/android/activity/DropboxWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "EXTRA_REQUIRES_AUTH"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_19

    :goto_13
    iput-boolean v0, p0, Lcom/dropbox/android/activity/DropboxWebViewActivity;->a:Z

    .line 32
    :cond_15
    invoke-super {p0, p1}, Lcom/dropbox/android/activity/WebViewActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    return-void

    .line 30
    :cond_19
    const/4 v0, 0x0

    goto :goto_13
.end method
