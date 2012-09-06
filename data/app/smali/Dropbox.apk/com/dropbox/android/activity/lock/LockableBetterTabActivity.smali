.class public Lcom/dropbox/android/activity/lock/LockableBetterTabActivity;
.super Lcom/dropbox/android/activity/base/BaseTabActivity;
.source "panda.py"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/dropbox/android/activity/base/BaseTabActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected final c()Z
    .registers 2

    .prologue
    .line 15
    const/4 v0, 0x1

    return v0
.end method

.method public final e_()Z
    .registers 2

    .prologue
    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method protected final f()Z
    .registers 2

    .prologue
    .line 22
    const/4 v0, 0x1

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .parameter

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/dropbox/android/activity/base/BaseTabActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 54
    invoke-virtual {p0}, Lcom/dropbox/android/activity/lock/LockableBetterTabActivity;->f()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 55
    invoke-static {}, Lcom/dropbox/android/activity/lock/LockReceiver;->b()V

    .line 57
    :cond_c
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2
    .parameter

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/dropbox/android/activity/base/BaseTabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    return-void
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 45
    invoke-super {p0}, Lcom/dropbox/android/activity/base/BaseTabActivity;->onPause()V

    .line 46
    invoke-virtual {p0}, Lcom/dropbox/android/activity/lock/LockableBetterTabActivity;->f()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 47
    invoke-static {}, Lcom/dropbox/android/activity/lock/LockReceiver;->a()V

    .line 49
    :cond_c
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 37
    invoke-super {p0}, Lcom/dropbox/android/activity/base/BaseTabActivity;->onResume()V

    .line 38
    invoke-virtual {p0}, Lcom/dropbox/android/activity/lock/LockableBetterTabActivity;->f()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 39
    invoke-virtual {p0}, Lcom/dropbox/android/activity/lock/LockableBetterTabActivity;->c()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/dropbox/android/activity/lock/LockReceiver;->a(Landroid/app/Activity;Z)V

    .line 41
    :cond_10
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .registers 3
    .parameter

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/dropbox/android/activity/lock/LockableBetterTabActivity;->f()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 62
    invoke-static {p1}, Lcom/dropbox/android/activity/lock/LockReceiver;->a(Landroid/content/Intent;)V

    .line 64
    :cond_9
    invoke-super {p0, p1}, Lcom/dropbox/android/activity/base/BaseTabActivity;->startActivity(Landroid/content/Intent;)V

    .line 65
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/dropbox/android/activity/lock/LockableBetterTabActivity;->f()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 70
    invoke-static {p1}, Lcom/dropbox/android/activity/lock/LockReceiver;->a(Landroid/content/Intent;)V

    .line 72
    :cond_9
    invoke-super {p0, p1, p2}, Lcom/dropbox/android/activity/base/BaseTabActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 73
    return-void
.end method
