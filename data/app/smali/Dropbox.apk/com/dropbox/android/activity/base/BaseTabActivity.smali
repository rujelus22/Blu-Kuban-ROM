.class public Lcom/dropbox/android/activity/base/BaseTabActivity;
.super Lcom/dropbox/android/activity/droidfu/BetterTabActivity;
.source "panda.py"

# interfaces
.implements Lcom/dropbox/android/activity/base/e;


# instance fields
.field protected a:Lcom/dropbox/android/activity/base/a;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/dropbox/android/activity/droidfu/BetterTabActivity;-><init>()V

    .line 11
    new-instance v0, Lcom/dropbox/android/activity/base/a;

    invoke-direct {v0, p0}, Lcom/dropbox/android/activity/base/a;-><init>(Lcom/dropbox/android/activity/base/e;)V

    iput-object v0, p0, Lcom/dropbox/android/activity/base/BaseTabActivity;->a:Lcom/dropbox/android/activity/base/a;

    return-void
.end method


# virtual methods
.method public final e()Landroid/app/Activity;
    .registers 1

    .prologue
    .line 56
    return-object p0
.end method

.method public e_()Z
    .registers 2

    .prologue
    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter

    .prologue
    .line 15
    invoke-super {p0, p1}, Lcom/dropbox/android/activity/droidfu/BetterTabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    iget-object v0, p0, Lcom/dropbox/android/activity/base/BaseTabActivity;->a:Lcom/dropbox/android/activity/base/a;

    invoke-virtual {v0}, Lcom/dropbox/android/activity/base/a;->a()V

    .line 17
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 45
    invoke-super {p0}, Lcom/dropbox/android/activity/droidfu/BetterTabActivity;->onDestroy()V

    .line 46
    iget-object v0, p0, Lcom/dropbox/android/activity/base/BaseTabActivity;->a:Lcom/dropbox/android/activity/base/a;

    invoke-virtual {v0}, Lcom/dropbox/android/activity/base/a;->f()V

    .line 47
    return-void
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 33
    invoke-super {p0}, Lcom/dropbox/android/activity/droidfu/BetterTabActivity;->onPause()V

    .line 34
    iget-object v0, p0, Lcom/dropbox/android/activity/base/BaseTabActivity;->a:Lcom/dropbox/android/activity/base/a;

    invoke-virtual {v0}, Lcom/dropbox/android/activity/base/a;->e()V

    .line 35
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 27
    invoke-super {p0}, Lcom/dropbox/android/activity/droidfu/BetterTabActivity;->onResume()V

    .line 28
    iget-object v0, p0, Lcom/dropbox/android/activity/base/BaseTabActivity;->a:Lcom/dropbox/android/activity/base/a;

    invoke-virtual {v0}, Lcom/dropbox/android/activity/base/a;->c()V

    .line 29
    return-void
.end method

.method protected onStart()V
    .registers 2

    .prologue
    .line 21
    invoke-super {p0}, Lcom/dropbox/android/activity/droidfu/BetterTabActivity;->onStart()V

    .line 22
    iget-object v0, p0, Lcom/dropbox/android/activity/base/BaseTabActivity;->a:Lcom/dropbox/android/activity/base/a;

    invoke-virtual {v0}, Lcom/dropbox/android/activity/base/a;->b()V

    .line 23
    return-void
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 39
    invoke-super {p0}, Lcom/dropbox/android/activity/droidfu/BetterTabActivity;->onStop()V

    .line 40
    iget-object v0, p0, Lcom/dropbox/android/activity/base/BaseTabActivity;->a:Lcom/dropbox/android/activity/base/a;

    invoke-virtual {v0}, Lcom/dropbox/android/activity/base/a;->d()V

    .line 41
    return-void
.end method
