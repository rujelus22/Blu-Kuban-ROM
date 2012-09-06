.class final Lcom/dropbox/android/activity/g;
.super Landroid/database/ContentObserver;
.source "panda.py"


# instance fields
.field final synthetic a:Lcom/dropbox/android/activity/CameraUploadDetailsFragment;


# direct methods
.method public constructor <init>(Lcom/dropbox/android/activity/CameraUploadDetailsFragment;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 352
    iput-object p1, p0, Lcom/dropbox/android/activity/g;->a:Lcom/dropbox/android/activity/CameraUploadDetailsFragment;

    .line 353
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 354
    return-void
.end method


# virtual methods
.method public final deliverSelfNotifications()Z
    .registers 2

    .prologue
    .line 358
    const/4 v0, 0x1

    return v0
.end method

.method public final onChange(Z)V
    .registers 3
    .parameter

    .prologue
    .line 363
    iget-object v0, p0, Lcom/dropbox/android/activity/g;->a:Lcom/dropbox/android/activity/CameraUploadDetailsFragment;

    invoke-virtual {v0}, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->i()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_9

    .line 367
    :goto_8
    return-void

    .line 366
    :cond_9
    iget-object v0, p0, Lcom/dropbox/android/activity/g;->a:Lcom/dropbox/android/activity/CameraUploadDetailsFragment;

    invoke-static {v0}, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->a(Lcom/dropbox/android/activity/CameraUploadDetailsFragment;)V

    goto :goto_8
.end method
