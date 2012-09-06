.class public Lcom/dropbox/android/activity/CameraUploadDetailsActivity;
.super Lcom/dropbox/android/activity/lock/LockableBetterFragmentActivity;
.source "panda.py"


# instance fields
.field private final m:Lcom/dropbox/android/activity/delegate/x;

.field private n:Z

.field private p:Landroid/os/Bundle;

.field private final q:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/dropbox/android/activity/lock/LockableBetterFragmentActivity;-><init>()V

    .line 18
    new-instance v0, Lcom/dropbox/android/activity/delegate/x;

    invoke-direct {v0}, Lcom/dropbox/android/activity/delegate/x;-><init>()V

    iput-object v0, p0, Lcom/dropbox/android/activity/CameraUploadDetailsActivity;->m:Lcom/dropbox/android/activity/delegate/x;

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/android/activity/CameraUploadDetailsActivity;->n:Z

    .line 22
    const-string v0, "details"

    iput-object v0, p0, Lcom/dropbox/android/activity/CameraUploadDetailsActivity;->q:Ljava/lang/String;

    return-void
.end method

.method private b(Z)V
    .registers 6
    .parameter

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/dropbox/android/activity/CameraUploadDetailsActivity;->d()Landroid/support/v4/app/j;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/j;->a()Landroid/support/v4/app/s;

    move-result-object v0

    .line 107
    new-instance v1, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;

    invoke-direct {v1}, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;-><init>()V

    .line 108
    iget-object v2, p0, Lcom/dropbox/android/activity/CameraUploadDetailsActivity;->p:Landroid/os/Bundle;

    if-eqz v2, :cond_19

    .line 109
    iget-object v2, p0, Lcom/dropbox/android/activity/CameraUploadDetailsActivity;->p:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/Fragment;->f(Landroid/os/Bundle;)V

    .line 110
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/dropbox/android/activity/CameraUploadDetailsActivity;->p:Landroid/os/Bundle;

    .line 114
    :cond_19
    const v2, 0x7f0d0053

    const-string v3, "details"

    invoke-virtual {v0, v2, v1, v3}, Landroid/support/v4/app/s;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/s;

    .line 115
    if-eqz p1, :cond_27

    .line 116
    invoke-virtual {v0}, Landroid/support/v4/app/s;->a()I

    .line 120
    :goto_26
    return-void

    .line 118
    :cond_27
    invoke-virtual {v0}, Landroid/support/v4/app/s;->b()I

    goto :goto_26
.end method

.method private f()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 69
    iget-boolean v0, p0, Lcom/dropbox/android/activity/CameraUploadDetailsActivity;->n:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/dropbox/android/activity/CameraUploadDetailsActivity;->o:Lcom/dropbox/android/activity/base/a;

    invoke-virtual {v0}, Lcom/dropbox/android/activity/base/a;->g()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 70
    iput-boolean v1, p0, Lcom/dropbox/android/activity/CameraUploadDetailsActivity;->n:Z

    .line 72
    const/4 v0, 0x1

    :try_start_11
    invoke-direct {p0, v0}, Lcom/dropbox/android/activity/CameraUploadDetailsActivity;->b(Z)V
    :try_end_14
    .catch Ljava/lang/IllegalStateException; {:try_start_11 .. :try_end_14} :catch_15

    .line 84
    :cond_14
    :goto_14
    return-void

    .line 73
    :catch_15
    move-exception v0

    .line 80
    iput-boolean v2, p0, Lcom/dropbox/android/activity/CameraUploadDetailsActivity;->n:Z

    .line 81
    invoke-direct {p0, v1}, Lcom/dropbox/android/activity/CameraUploadDetailsActivity;->b(Z)V

    goto :goto_14
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/dropbox/android/activity/lock/LockableBetterFragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dropbox/android/activity/CameraUploadDetailsActivity;->n:Z

    .line 54
    invoke-virtual {p0}, Lcom/dropbox/android/activity/CameraUploadDetailsActivity;->d()Landroid/support/v4/app/j;

    move-result-object v0

    const-string v1, "details"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/j;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 55
    if-eqz v0, :cond_1e

    .line 56
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/dropbox/android/activity/CameraUploadDetailsActivity;->p:Landroid/os/Bundle;

    .line 57
    iget-object v1, p0, Lcom/dropbox/android/activity/CameraUploadDetailsActivity;->p:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->e(Landroid/os/Bundle;)V

    .line 59
    :cond_1e
    invoke-direct {p0}, Lcom/dropbox/android/activity/CameraUploadDetailsActivity;->f()V

    .line 60
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/dropbox/android/activity/lock/LockableBetterFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const v0, 0x7f030012

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/CameraUploadDetailsActivity;->setContentView(I)V

    .line 28
    iget-object v0, p0, Lcom/dropbox/android/activity/CameraUploadDetailsActivity;->m:Lcom/dropbox/android/activity/delegate/x;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/dropbox/android/activity/delegate/x;->a(I)V

    .line 30
    if-nez p1, :cond_32

    .line 31
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/dropbox/android/activity/CameraUploadDetailsActivity;->b(Z)V

    move-object v0, p0

    .line 38
    :goto_16
    if-eqz v0, :cond_32

    .line 39
    const-string v1, "ACTION_CAMERA_UPLOAD_GALLERY"

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 40
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dropbox/android/activity/CameraUploadGridActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 41
    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/CameraUploadDetailsActivity;->startActivity(Landroid/content/Intent;)V

    .line 48
    :cond_32
    return-void

    .line 44
    :cond_33
    invoke-virtual {v0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v0

    goto :goto_16
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/dropbox/android/activity/CameraUploadDetailsActivity;->m:Lcom/dropbox/android/activity/delegate/x;

    invoke-virtual {v0, p0, p1}, Lcom/dropbox/android/activity/delegate/x;->a(Landroid/app/Activity;Landroid/view/Menu;)V

    .line 89
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/dropbox/android/activity/CameraUploadDetailsActivity;->m:Lcom/dropbox/android/activity/delegate/x;

    invoke-virtual {v0, p0, p1}, Lcom/dropbox/android/activity/delegate/x;->a(Landroid/app/Activity;Landroid/view/MenuItem;)Z

    move-result v0

    .line 95
    if-eqz v0, :cond_a

    .line 96
    const/4 v0, 0x1

    .line 98
    :goto_9
    return v0

    :cond_a
    invoke-super {p0, p1}, Lcom/dropbox/android/activity/lock/LockableBetterFragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_9
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 64
    invoke-super {p0}, Lcom/dropbox/android/activity/lock/LockableBetterFragmentActivity;->onResume()V

    .line 65
    invoke-direct {p0}, Lcom/dropbox/android/activity/CameraUploadDetailsActivity;->f()V

    .line 66
    return-void
.end method
