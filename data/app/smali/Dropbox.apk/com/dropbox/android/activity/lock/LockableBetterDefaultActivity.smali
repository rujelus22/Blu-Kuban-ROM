.class public Lcom/dropbox/android/activity/lock/LockableBetterDefaultActivity;
.super Lcom/dropbox/android/activity/base/BaseActivity;
.source "panda.py"


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    const-class v0, Lcom/dropbox/android/activity/lock/LockableBetterDefaultActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/android/activity/lock/LockableBetterDefaultActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/dropbox/android/activity/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Z
    .registers 2

    .prologue
    .line 25
    const/4 v0, 0x1

    return v0
.end method

.method protected c()Z
    .registers 2

    .prologue
    .line 18
    const/4 v0, 0x1

    return v0
.end method

.method public e_()Z
    .registers 2

    .prologue
    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .parameter

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/dropbox/android/activity/base/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 61
    invoke-virtual {p0}, Lcom/dropbox/android/activity/lock/LockableBetterDefaultActivity;->a()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 62
    invoke-static {}, Lcom/dropbox/android/activity/lock/LockReceiver;->b()V

    .line 64
    :cond_c
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter

    .prologue
    .line 35
    sget-object v0, Lcom/dropbox/android/activity/lock/LockableBetterDefaultActivity;->a:Ljava/lang/String;

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

    .line 36
    invoke-super {p0, p1}, Lcom/dropbox/android/activity/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-static {p0}, Ldbxyzptlk/g/a;->a(Landroid/content/Context;)Ldbxyzptlk/g/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Ldbxyzptlk/g/a;->a(Landroid/app/Activity;)V

    .line 38
    return-void
.end method

.method protected onDestroy()V
    .registers 4

    .prologue
    .line 68
    sget-object v0, Lcom/dropbox/android/activity/lock/LockableBetterDefaultActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroy for "

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

    .line 69
    invoke-super {p0}, Lcom/dropbox/android/activity/base/BaseActivity;->onDestroy()V

    .line 70
    return-void
.end method

.method protected onPause()V
    .registers 4

    .prologue
    .line 51
    sget-object v0, Lcom/dropbox/android/activity/lock/LockableBetterDefaultActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause for "

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

    .line 52
    invoke-super {p0}, Lcom/dropbox/android/activity/base/BaseActivity;->onPause()V

    .line 53
    invoke-virtual {p0}, Lcom/dropbox/android/activity/lock/LockableBetterDefaultActivity;->a()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 54
    invoke-static {}, Lcom/dropbox/android/activity/lock/LockReceiver;->a()V

    .line 56
    :cond_2c
    return-void
.end method

.method protected onResume()V
    .registers 4

    .prologue
    .line 42
    sget-object v0, Lcom/dropbox/android/activity/lock/LockableBetterDefaultActivity;->a:Ljava/lang/String;

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

    .line 43
    invoke-super {p0}, Lcom/dropbox/android/activity/base/BaseActivity;->onResume()V

    .line 44
    invoke-virtual {p0}, Lcom/dropbox/android/activity/lock/LockableBetterDefaultActivity;->a()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 45
    invoke-virtual {p0}, Lcom/dropbox/android/activity/lock/LockableBetterDefaultActivity;->c()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/dropbox/android/activity/lock/LockReceiver;->a(Landroid/app/Activity;Z)V

    .line 47
    :cond_30
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .registers 3
    .parameter

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/dropbox/android/activity/lock/LockableBetterDefaultActivity;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 75
    invoke-static {p1}, Lcom/dropbox/android/activity/lock/LockReceiver;->a(Landroid/content/Intent;)V

    .line 77
    :cond_9
    invoke-super {p0, p1}, Lcom/dropbox/android/activity/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 78
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/dropbox/android/activity/lock/LockableBetterDefaultActivity;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 83
    invoke-static {p1}, Lcom/dropbox/android/activity/lock/LockReceiver;->a(Landroid/content/Intent;)V

    .line 85
    :cond_9
    invoke-super {p0, p1, p2}, Lcom/dropbox/android/activity/base/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 86
    return-void
.end method
