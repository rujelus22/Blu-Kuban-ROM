.class public Lcom/google/android/apps/docs/view/RoboDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "RoboDialogFragment.java"

# interfaces
.implements LcK;


# instance fields
.field private a:Lans;

.field protected a:Lck;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lans;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/apps/docs/view/RoboDialogFragment;->a:Lans;

    return-object v0
.end method

.method public a(Landroid/app/Activity;)V
    .registers 4
    .parameter

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->a(Landroid/app/Activity;)V

    .line 36
    invoke-virtual {p0}, Lcom/google/android/apps/docs/view/RoboDialogFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/docs/RoboFragmentActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/RoboFragmentActivity;->a()Lans;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/view/RoboDialogFragment;->a:Lans;

    .line 37
    iget-object v0, p0, Lcom/google/android/apps/docs/view/RoboDialogFragment;->a:Lans;

    const-class v1, Lck;

    invoke-interface {v0, v1}, Lans;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lck;

    iput-object v0, p0, Lcom/google/android/apps/docs/view/RoboDialogFragment;->a:Lck;

    .line 38
    iget-object v0, p0, Lcom/google/android/apps/docs/view/RoboDialogFragment;->a:Lck;

    invoke-interface {v0, p1}, Lck;->a(Landroid/content/Context;)V

    .line 39
    iget-object v0, p0, Lcom/google/android/apps/docs/view/RoboDialogFragment;->a:Lans;

    invoke-interface {v0, p0}, Lans;->a(Ljava/lang/Object;)V

    .line 40
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/apps/docs/view/RoboDialogFragment;->a:Lck;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/view/RoboDialogFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 51
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->a(Landroid/os/Bundle;)V

    .line 52
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->b(Landroid/os/Bundle;)V

    .line 45
    iget-object v0, p0, Lcom/google/android/apps/docs/view/RoboDialogFragment;->a:Lck;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/view/RoboDialogFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method public d_()V
    .registers 3

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/apps/docs/view/RoboDialogFragment;->a:Lck;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/view/RoboDialogFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 63
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->d_()V

    .line 64
    return-void
.end method

.method public f()V
    .registers 3

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/apps/docs/view/RoboDialogFragment;->a:Lck;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/view/RoboDialogFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 57
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->f()V

    .line 58
    return-void
.end method

.method public f_()V
    .registers 3

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/apps/docs/view/RoboDialogFragment;->a:Lck;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/view/RoboDialogFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 70
    invoke-virtual {p0}, Lcom/google/android/apps/docs/view/RoboDialogFragment;->a()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lcom/google/android/apps/docs/view/RoboDialogFragment;->f()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 71
    invoke-virtual {p0}, Lcom/google/android/apps/docs/view/RoboDialogFragment;->a()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setDismissMessage(Landroid/os/Message;)V

    .line 74
    :cond_1d
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->f_()V

    .line 75
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/apps/docs/view/RoboDialogFragment;->a:Lck;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/view/RoboDialogFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 80
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 81
    return-void
.end method
