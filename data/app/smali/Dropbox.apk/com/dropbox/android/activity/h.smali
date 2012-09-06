.class final Lcom/dropbox/android/activity/h;
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
    .line 372
    iput-object p1, p0, Lcom/dropbox/android/activity/h;->a:Lcom/dropbox/android/activity/CameraUploadDetailsFragment;

    .line 373
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 374
    return-void
.end method


# virtual methods
.method public final deliverSelfNotifications()Z
    .registers 2

    .prologue
    .line 378
    const/4 v0, 0x1

    return v0
.end method

.method public final onChange(Z)V
    .registers 3
    .parameter

    .prologue
    .line 383
    iget-object v0, p0, Lcom/dropbox/android/activity/h;->a:Lcom/dropbox/android/activity/CameraUploadDetailsFragment;

    invoke-static {v0}, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->b(Lcom/dropbox/android/activity/CameraUploadDetailsFragment;)V

    .line 384
    return-void
.end method
