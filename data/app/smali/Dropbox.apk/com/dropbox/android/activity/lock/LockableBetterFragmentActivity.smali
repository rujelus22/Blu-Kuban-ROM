.class public Lcom/dropbox/android/activity/lock/LockableBetterFragmentActivity;
.super Lcom/dropbox/android/activity/base/BaseFragmentActivity;
.source "panda.py"


# static fields
.field private static m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 11
    const-class v0, Lcom/dropbox/android/activity/lock/LockableBetterFragmentActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/android/activity/lock/LockableBetterFragmentActivity;->m:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/dropbox/android/activity/base/BaseFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final e_()Z
    .registers 2

    .prologue
    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method protected final g()Z
    .registers 2

    .prologue
    .line 17
    const/4 v0, 0x1

    return v0
.end method

.method protected final h()Z
    .registers 2

    .prologue
    .line 24
    const/4 v0, 0x1

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .parameter

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/dropbox/android/activity/base/BaseFragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 58
    invoke-virtual {p0}, Lcom/dropbox/android/activity/lock/LockableBetterFragmentActivity;->h()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 59
    invoke-static {}, Lcom/dropbox/android/activity/lock/LockReceiver;->b()V

    .line 61
    :cond_c
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter

    .prologue
    .line 34
    sget-object v0, Lcom/dropbox/android/activity/lock/LockableBetterFragmentActivity;->m:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldbxyzptlk/h/f;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-super {p0, p1}, Lcom/dropbox/android/activity/base/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    return-void
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 49
    invoke-super {p0}, Lcom/dropbox/android/activity/base/BaseFragmentActivity;->onPause()V

    .line 50
    invoke-virtual {p0}, Lcom/dropbox/android/activity/lock/LockableBetterFragmentActivity;->h()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 51
    invoke-static {}, Lcom/dropbox/android/activity/lock/LockReceiver;->a()V

    .line 53
    :cond_c
    return-void
.end method

.method protected onResume()V
    .registers 4

    .prologue
    .line 40
    sget-object v0, Lcom/dropbox/android/activity/lock/LockableBetterFragmentActivity;->m:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldbxyzptlk/h/f;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-super {p0}, Lcom/dropbox/android/activity/base/BaseFragmentActivity;->onResume()V

    .line 42
    invoke-virtual {p0}, Lcom/dropbox/android/activity/lock/LockableBetterFragmentActivity;->h()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 43
    invoke-virtual {p0}, Lcom/dropbox/android/activity/lock/LockableBetterFragmentActivity;->g()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/dropbox/android/activity/lock/LockReceiver;->a(Landroid/app/Activity;Z)V

    .line 45
    :cond_30
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .registers 3
    .parameter

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/dropbox/android/activity/lock/LockableBetterFragmentActivity;->h()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 66
    invoke-static {p1}, Lcom/dropbox/android/activity/lock/LockReceiver;->a(Landroid/content/Intent;)V

    .line 68
    :cond_9
    invoke-super {p0, p1}, Lcom/dropbox/android/activity/base/BaseFragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 69
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/dropbox/android/activity/lock/LockableBetterFragmentActivity;->h()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 74
    invoke-static {p1}, Lcom/dropbox/android/activity/lock/LockReceiver;->a(Landroid/content/Intent;)V

    .line 76
    :cond_9
    invoke-super {p0, p1, p2}, Lcom/dropbox/android/activity/base/BaseFragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 77
    return-void
.end method
