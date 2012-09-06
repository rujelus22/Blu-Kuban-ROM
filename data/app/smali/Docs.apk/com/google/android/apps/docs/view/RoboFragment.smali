.class public Lcom/google/android/apps/docs/view/RoboFragment;
.super Landroid/support/v4/app/Fragment;
.source "RoboFragment.java"

# interfaces
.implements LcK;


# instance fields
.field private a:Lans;

.field protected a:Lck;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lans;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/apps/docs/view/RoboFragment;->a:Lans;

    return-object v0
.end method

.method public a(IILandroid/content/Intent;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/apps/docs/view/RoboFragment;->a:Lck;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/view/RoboFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 80
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->a(IILandroid/content/Intent;)V

    .line 81
    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .registers 4
    .parameter

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->a(Landroid/app/Activity;)V

    .line 41
    invoke-virtual {p0}, Lcom/google/android/apps/docs/view/RoboFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/docs/RoboFragmentActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/RoboFragmentActivity;->a()Lans;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/view/RoboFragment;->a:Lans;

    .line 42
    iget-object v0, p0, Lcom/google/android/apps/docs/view/RoboFragment;->a:Lans;

    const-class v1, Lck;

    invoke-interface {v0, v1}, Lans;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lck;

    iput-object v0, p0, Lcom/google/android/apps/docs/view/RoboFragment;->a:Lck;

    .line 43
    iget-object v0, p0, Lcom/google/android/apps/docs/view/RoboFragment;->a:Lck;

    invoke-interface {v0, p1}, Lck;->a(Landroid/content/Context;)V

    .line 44
    iget-object v0, p0, Lcom/google/android/apps/docs/view/RoboFragment;->a:Lans;

    invoke-interface {v0, p0}, Lans;->a(Ljava/lang/Object;)V

    .line 45
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/apps/docs/view/RoboFragment;->a:Lck;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/view/RoboFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 56
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->a(Landroid/os/Bundle;)V

    .line 57
    return-void
.end method

.method public a(Landroid/view/Menu;)V
    .registers 4
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/apps/docs/view/RoboFragment;->a:Lck;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/view/RoboFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 92
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->a(Landroid/view/Menu;)V

    .line 93
    return-void
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/apps/docs/view/RoboFragment;->a:Lck;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/view/RoboFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 86
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 87
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->b(Landroid/os/Bundle;)V

    .line 50
    iget-object v0, p0, Lcom/google/android/apps/docs/view/RoboFragment;->a:Lck;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/view/RoboFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 51
    return-void
.end method

.method public c()V
    .registers 3

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/apps/docs/view/RoboFragment;->a:Lck;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/view/RoboFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 74
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->c()V

    .line 75
    return-void
.end method

.method public c(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/apps/docs/view/RoboFragment;->a:Lck;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/view/RoboFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 98
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->c(Landroid/os/Bundle;)V

    .line 99
    return-void
.end method

.method public d_()V
    .registers 3

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/apps/docs/view/RoboFragment;->a:Lck;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/view/RoboFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 68
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->d_()V

    .line 69
    return-void
.end method

.method public f()V
    .registers 3

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/apps/docs/view/RoboFragment;->a:Lck;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/view/RoboFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 62
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->f()V

    .line 63
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/apps/docs/view/RoboFragment;->a:Lck;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/view/RoboFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 104
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 105
    return-void
.end method
