.class final Lcom/dropbox/android/activity/e;
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
    .line 116
    iput-object p1, p0, Lcom/dropbox/android/activity/e;->a:Lcom/dropbox/android/activity/CameraUploadDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    .line 119
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/dropbox/android/activity/e;->a:Lcom/dropbox/android/activity/CameraUploadDetailsFragment;

    invoke-virtual {v1}, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->i()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/dropbox/android/activity/CameraUploadGridActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 120
    iget-object v1, p0, Lcom/dropbox/android/activity/e;->a:Lcom/dropbox/android/activity/CameraUploadDetailsFragment;

    invoke-virtual {v1, v0}, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->a(Landroid/content/Intent;)V

    .line 121
    return-void
.end method
