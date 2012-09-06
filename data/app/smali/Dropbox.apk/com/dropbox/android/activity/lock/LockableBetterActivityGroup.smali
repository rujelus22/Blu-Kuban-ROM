.class public Lcom/dropbox/android/activity/lock/LockableBetterActivityGroup;
.super Lcom/dropbox/android/activity/base/BaseActivityGroup;
.source "panda.py"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/dropbox/android/activity/base/BaseActivityGroup;-><init>()V

    return-void
.end method


# virtual methods
.method public final e_()Z
    .registers 2

    .prologue
    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method protected final f()Z
    .registers 2

    .prologue
    .line 16
    const/4 v0, 0x1

    return v0
.end method

.method protected final g()Z
    .registers 2

    .prologue
    .line 23
    const/4 v0, 0x1

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .parameter

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/dropbox/android/activity/base/BaseActivityGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 56
    invoke-virtual {p0}, Lcom/dropbox/android/activity/lock/LockableBetterActivityGroup;->g()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 57
    invoke-static {}, Lcom/dropbox/android/activity/lock/LockReceiver;->b()V

    .line 59
    :cond_c
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/dropbox/android/activity/base/BaseActivityGroup;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-static {p0}, Ldbxyzptlk/g/a;->a(Landroid/content/Context;)Ldbxyzptlk/g/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Ldbxyzptlk/g/a;->a(Landroid/app/Activity;)V

    .line 35
    return-void
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 63
    invoke-super {p0}, Lcom/dropbox/android/activity/base/BaseActivityGroup;->onDestroy()V

    .line 64
    return-void
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 47
    invoke-super {p0}, Lcom/dropbox/android/activity/base/BaseActivityGroup;->onPause()V

    .line 48
    invoke-virtual {p0}, Lcom/dropbox/android/activity/lock/LockableBetterActivityGroup;->g()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 49
    invoke-static {}, Lcom/dropbox/android/activity/lock/LockReceiver;->a()V

    .line 51
    :cond_c
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 39
    invoke-super {p0}, Lcom/dropbox/android/activity/base/BaseActivityGroup;->onResume()V

    .line 40
    invoke-virtual {p0}, Lcom/dropbox/android/activity/lock/LockableBetterActivityGroup;->g()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 41
    invoke-virtual {p0}, Lcom/dropbox/android/activity/lock/LockableBetterActivityGroup;->f()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/dropbox/android/activity/lock/LockReceiver;->a(Landroid/app/Activity;Z)V

    .line 43
    :cond_10
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .registers 3
    .parameter

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/dropbox/android/activity/lock/LockableBetterActivityGroup;->g()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 69
    invoke-static {p1}, Lcom/dropbox/android/activity/lock/LockReceiver;->a(Landroid/content/Intent;)V

    .line 71
    :cond_9
    invoke-super {p0, p1}, Lcom/dropbox/android/activity/base/BaseActivityGroup;->startActivity(Landroid/content/Intent;)V

    .line 72
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/dropbox/android/activity/lock/LockableBetterActivityGroup;->g()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 77
    invoke-static {p1}, Lcom/dropbox/android/activity/lock/LockReceiver;->a(Landroid/content/Intent;)V

    .line 79
    :cond_9
    invoke-super {p0, p1, p2}, Lcom/dropbox/android/activity/base/BaseActivityGroup;->startActivityForResult(Landroid/content/Intent;I)V

    .line 80
    return-void
.end method
