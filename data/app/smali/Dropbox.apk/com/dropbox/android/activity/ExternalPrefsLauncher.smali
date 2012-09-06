.class public Lcom/dropbox/android/activity/ExternalPrefsLauncher;
.super Landroid/app/Activity;
.source "panda.py"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 11
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 12
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dropbox/android/activity/PrefsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 13
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/dropbox/android/activity/ExternalPrefsLauncher;->startActivityForResult(Landroid/content/Intent;I)V

    .line 14
    invoke-virtual {p0}, Lcom/dropbox/android/activity/ExternalPrefsLauncher;->finish()V

    .line 15
    return-void
.end method
