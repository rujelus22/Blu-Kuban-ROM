.class public Lcom/dropbox/android/activity/base/BaseMinActivity;
.super Landroid/app/Activity;
.source "panda.py"

# interfaces
.implements Lcom/dropbox/android/activity/base/e;


# instance fields
.field protected a:Lcom/dropbox/android/activity/base/a;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 10
    new-instance v0, Lcom/dropbox/android/activity/base/a;

    invoke-direct {v0, p0}, Lcom/dropbox/android/activity/base/a;-><init>(Lcom/dropbox/android/activity/base/e;)V

    iput-object v0, p0, Lcom/dropbox/android/activity/base/BaseMinActivity;->a:Lcom/dropbox/android/activity/base/a;

    return-void
.end method


# virtual methods
.method public final e()Landroid/app/Activity;
    .registers 1

    .prologue
    .line 55
    return-object p0
.end method

.method public final e_()Z
    .registers 2

    .prologue
    .line 50
    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter

    .prologue
    .line 14
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    iget-object v0, p0, Lcom/dropbox/android/activity/base/BaseMinActivity;->a:Lcom/dropbox/android/activity/base/a;

    invoke-virtual {v0}, Lcom/dropbox/android/activity/base/a;->a()V

    .line 16
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 44
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 45
    iget-object v0, p0, Lcom/dropbox/android/activity/base/BaseMinActivity;->a:Lcom/dropbox/android/activity/base/a;

    invoke-virtual {v0}, Lcom/dropbox/android/activity/base/a;->f()V

    .line 46
    return-void
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 32
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 33
    iget-object v0, p0, Lcom/dropbox/android/activity/base/BaseMinActivity;->a:Lcom/dropbox/android/activity/base/a;

    invoke-virtual {v0}, Lcom/dropbox/android/activity/base/a;->e()V

    .line 34
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 26
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 27
    iget-object v0, p0, Lcom/dropbox/android/activity/base/BaseMinActivity;->a:Lcom/dropbox/android/activity/base/a;

    invoke-virtual {v0}, Lcom/dropbox/android/activity/base/a;->c()V

    .line 28
    return-void
.end method

.method protected onStart()V
    .registers 2

    .prologue
    .line 20
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 21
    iget-object v0, p0, Lcom/dropbox/android/activity/base/BaseMinActivity;->a:Lcom/dropbox/android/activity/base/a;

    invoke-virtual {v0}, Lcom/dropbox/android/activity/base/a;->b()V

    .line 22
    return-void
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 38
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 39
    iget-object v0, p0, Lcom/dropbox/android/activity/base/BaseMinActivity;->a:Lcom/dropbox/android/activity/base/a;

    invoke-virtual {v0}, Lcom/dropbox/android/activity/base/a;->d()V

    .line 40
    return-void
.end method
