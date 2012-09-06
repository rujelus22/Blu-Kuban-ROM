.class public Lcom/dropbox/android/activity/CameraUploadGridActivity;
.super Lcom/dropbox/android/activity/lock/LockableBetterFragmentActivity;
.source "panda.py"

# interfaces
.implements Lcom/dropbox/android/activity/w;


# instance fields
.field private final m:Lcom/dropbox/android/activity/delegate/x;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/dropbox/android/activity/lock/LockableBetterFragmentActivity;-><init>()V

    .line 22
    new-instance v0, Lcom/dropbox/android/activity/delegate/x;

    invoke-direct {v0}, Lcom/dropbox/android/activity/delegate/x;-><init>()V

    iput-object v0, p0, Lcom/dropbox/android/activity/CameraUploadGridActivity;->m:Lcom/dropbox/android/activity/delegate/x;

    return-void
.end method


# virtual methods
.method public final f()Lcom/dropbox/android/activity/delegate/x;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/dropbox/android/activity/CameraUploadGridActivity;->m:Lcom/dropbox/android/activity/delegate/x;

    return-object v0
.end method

.method public final i()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 90
    sget-object v0, Lcom/dropbox/android/provider/CameraUploadsProvider;->b:Landroid/net/Uri;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lcom/dropbox/android/activity/CameraUploadGridActivity;->m:Lcom/dropbox/android/activity/delegate/x;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/dropbox/android/activity/delegate/x;->a(Landroid/app/Activity;IILandroid/content/Intent;)V

    .line 103
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter

    .prologue
    .line 28
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/CameraUploadGridActivity;->requestWindowFeature(I)Z

    .line 30
    invoke-super {p0, p1}, Lcom/dropbox/android/activity/lock/LockableBetterFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    iget-object v0, p0, Lcom/dropbox/android/activity/CameraUploadGridActivity;->m:Lcom/dropbox/android/activity/delegate/x;

    invoke-virtual {v0, p1}, Lcom/dropbox/android/activity/delegate/x;->b(Landroid/os/Bundle;)V

    .line 33
    iget-object v0, p0, Lcom/dropbox/android/activity/CameraUploadGridActivity;->m:Lcom/dropbox/android/activity/delegate/x;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dropbox/android/activity/delegate/x;->a(I)V

    .line 35
    const v0, 0x7f030012

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/CameraUploadGridActivity;->setContentView(I)V

    .line 37
    invoke-static {p0}, Lcom/dropbox/android/util/a;->a(Landroid/app/Activity;)V

    .line 39
    invoke-virtual {p0}, Lcom/dropbox/android/activity/CameraUploadGridActivity;->d()Landroid/support/v4/app/j;

    move-result-object v0

    const-string v1, "CameraUploadGridActivity_Fragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/j;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/activity/CameraUploadGridFragment;

    .line 41
    if-nez v0, :cond_41

    .line 42
    new-instance v0, Lcom/dropbox/android/activity/CameraUploadGridFragment;

    invoke-direct {v0}, Lcom/dropbox/android/activity/CameraUploadGridFragment;-><init>()V

    .line 44
    invoke-virtual {p0}, Lcom/dropbox/android/activity/CameraUploadGridActivity;->d()Landroid/support/v4/app/j;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/j;->a()Landroid/support/v4/app/s;

    move-result-object v1

    .line 45
    const v2, 0x7f0d0053

    const-string v3, "CameraUploadGridActivity_Fragment"

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/s;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/s;

    .line 46
    invoke-virtual {v1}, Landroid/support/v4/app/s;->a()I

    .line 48
    :cond_41
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 3
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/dropbox/android/activity/CameraUploadGridActivity;->m:Lcom/dropbox/android/activity/delegate/x;

    invoke-virtual {v0, p0, p1}, Lcom/dropbox/android/activity/delegate/x;->a(Landroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/dropbox/android/activity/CameraUploadGridActivity;->m:Lcom/dropbox/android/activity/delegate/x;

    invoke-virtual {v0, p0, p1}, Lcom/dropbox/android/activity/delegate/x;->a(Landroid/app/Activity;Landroid/view/Menu;)V

    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/dropbox/android/activity/CameraUploadGridActivity;->m:Lcom/dropbox/android/activity/delegate/x;

    invoke-virtual {v0, p0, p1}, Lcom/dropbox/android/activity/delegate/x;->a(Landroid/app/Activity;Landroid/view/MenuItem;)Z

    move-result v0

    .line 76
    if-eqz v0, :cond_a

    .line 77
    const/4 v0, 0x1

    .line 79
    :goto_9
    return v0

    :cond_a
    invoke-super {p0, p1}, Lcom/dropbox/android/activity/lock/LockableBetterFragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_9
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-super {p0, p1, p2}, Lcom/dropbox/android/activity/lock/LockableBetterFragmentActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 65
    iget-object v0, p0, Lcom/dropbox/android/activity/CameraUploadGridActivity;->m:Lcom/dropbox/android/activity/delegate/x;

    invoke-virtual {v0, p0, p1, p2}, Lcom/dropbox/android/activity/delegate/x;->a(Landroid/app/Activity;ILandroid/app/Dialog;)V

    .line 66
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .parameter

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/dropbox/android/activity/lock/LockableBetterFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 53
    iget-object v0, p0, Lcom/dropbox/android/activity/CameraUploadGridActivity;->m:Lcom/dropbox/android/activity/delegate/x;

    invoke-virtual {v0, p1}, Lcom/dropbox/android/activity/delegate/x;->a(Landroid/os/Bundle;)V

    .line 54
    return-void
.end method
