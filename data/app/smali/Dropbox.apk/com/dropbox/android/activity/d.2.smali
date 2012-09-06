.class final Lcom/dropbox/android/activity/d;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dropbox/android/activity/CameraUploadDetailsFragment;


# direct methods
.method constructor <init>(Lcom/dropbox/android/activity/CameraUploadDetailsFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/dropbox/android/activity/d;->a:Lcom/dropbox/android/activity/CameraUploadDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    .line 109
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/dropbox/android/activity/d;->a:Lcom/dropbox/android/activity/CameraUploadDetailsFragment;

    invoke-virtual {v1}, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->i()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/dropbox/android/activity/DropboxWebViewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 110
    const-string v1, "TITLE"

    iget-object v2, p0, Lcom/dropbox/android/activity/d;->a:Lcom/dropbox/android/activity/CameraUploadDetailsFragment;

    const v3, 0x7f090149

    invoke-virtual {v2, v3}, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    iget-object v1, p0, Lcom/dropbox/android/activity/d;->a:Lcom/dropbox/android/activity/CameraUploadDetailsFragment;

    const v2, 0x7f09000a

    invoke-virtual {v1, v2}, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 112
    iget-object v1, p0, Lcom/dropbox/android/activity/d;->a:Lcom/dropbox/android/activity/CameraUploadDetailsFragment;

    invoke-virtual {v1, v0}, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->a(Landroid/content/Intent;)V

    .line 113
    return-void
.end method
