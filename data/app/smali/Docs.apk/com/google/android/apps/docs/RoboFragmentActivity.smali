.class public Lcom/google/android/apps/docs/RoboFragmentActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "RoboFragmentActivity.java"

# interfaces
.implements LcK;
.implements LgT;


# instance fields
.field private a:Lans;

.field public a:Lck;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lans;
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/android/apps/docs/RoboFragmentActivity;->a:Lans;

    invoke-static {v0}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lans;

    return-object v0
.end method

.method public a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 110
    const-class v1, Lx;

    if-ne p1, v1, :cond_a

    .line 112
    invoke-virtual {p0}, Lcom/google/android/apps/docs/RoboFragmentActivity;->a()Lx;

    move-result-object p0

    .line 133
    :cond_9
    :goto_9
    return-object p0

    .line 114
    :cond_a
    if-nez p2, :cond_18

    .line 116
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_9

    move-object p0, v0

    .line 133
    goto :goto_9

    .line 123
    :cond_18
    invoke-virtual {p0}, Lcom/google/android/apps/docs/RoboFragmentActivity;->a()Lx;

    move-result-object v1

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1, p2}, Lx;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p0

    .line 124
    if-nez p0, :cond_9

    move-object p0, v0

    .line 125
    goto :goto_9
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .parameter

    .prologue
    .line 98
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 99
    iget-object v0, p0, Lcom/google/android/apps/docs/RoboFragmentActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 100
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/android/apps/docs/RoboFragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, LcK;

    invoke-interface {v0}, LcK;->a()Lans;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/RoboFragmentActivity;->a:Lans;

    .line 34
    iget-object v0, p0, Lcom/google/android/apps/docs/RoboFragmentActivity;->a:Lans;

    const-class v1, Lck;

    invoke-interface {v0, v1}, Lans;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lck;

    iput-object v0, p0, Lcom/google/android/apps/docs/RoboFragmentActivity;->a:Lck;

    .line 35
    iget-object v0, p0, Lcom/google/android/apps/docs/RoboFragmentActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 36
    invoke-virtual {p0}, Lcom/google/android/apps/docs/RoboFragmentActivity;->a()Lans;

    move-result-object v0

    invoke-interface {v0, p0}, Lans;->a(Ljava/lang/Object;)V

    .line 38
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/apps/docs/RoboFragmentActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->b(Landroid/content/Context;)V

    .line 80
    iget-object v0, p0, Lcom/google/android/apps/docs/RoboFragmentActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->c(Landroid/content/Context;)V

    .line 81
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 82
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 3
    .parameter

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 74
    iget-object v0, p0, Lcom/google/android/apps/docs/RoboFragmentActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 75
    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 44
    iget-object v0, p0, Lcom/google/android/apps/docs/RoboFragmentActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method public onPostResume()V
    .registers 2

    .prologue
    .line 67
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPostResume()V

    .line 68
    iget-object v0, p0, Lcom/google/android/apps/docs/RoboFragmentActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 69
    return-void
.end method

.method protected onRestart()V
    .registers 2

    .prologue
    .line 55
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onRestart()V

    .line 56
    iget-object v0, p0, Lcom/google/android/apps/docs/RoboFragmentActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 57
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .parameter

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 93
    iget-object v0, p0, Lcom/google/android/apps/docs/RoboFragmentActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 94
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 61
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 62
    iget-object v0, p0, Lcom/google/android/apps/docs/RoboFragmentActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 63
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .parameter

    .prologue
    .line 86
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 87
    iget-object v0, p0, Lcom/google/android/apps/docs/RoboFragmentActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 88
    return-void
.end method

.method public onStart()V
    .registers 2

    .prologue
    .line 49
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 50
    iget-object v0, p0, Lcom/google/android/apps/docs/RoboFragmentActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 51
    return-void
.end method
