.class public Lcom/google/android/apps/docs/RoboPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "RoboPreferenceActivity.java"

# interfaces
.implements LcK;


# instance fields
.field private a:Lans;

.field protected a:Lck;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lans;
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/android/apps/docs/RoboPreferenceActivity;->a:Lans;

    invoke-static {v0}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lans;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .parameter

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 93
    iget-object v0, p0, Lcom/google/android/apps/docs/RoboPreferenceActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 94
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/google/android/apps/docs/RoboPreferenceActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, LcK;

    invoke-interface {v0}, LcK;->a()Lans;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/RoboPreferenceActivity;->a:Lans;

    .line 28
    iget-object v0, p0, Lcom/google/android/apps/docs/RoboPreferenceActivity;->a:Lans;

    const-class v1, Lck;

    invoke-interface {v0, v1}, Lans;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lck;

    iput-object v0, p0, Lcom/google/android/apps/docs/RoboPreferenceActivity;->a:Lck;

    .line 29
    iget-object v0, p0, Lcom/google/android/apps/docs/RoboPreferenceActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 30
    iget-object v0, p0, Lcom/google/android/apps/docs/RoboPreferenceActivity;->a:Lans;

    invoke-interface {v0, p0}, Lans;->a(Ljava/lang/Object;)V

    .line 32
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/apps/docs/RoboPreferenceActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->b(Landroid/content/Context;)V

    .line 74
    iget-object v0, p0, Lcom/google/android/apps/docs/RoboPreferenceActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->c(Landroid/content/Context;)V

    .line 75
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 76
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 3
    .parameter

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 68
    iget-object v0, p0, Lcom/google/android/apps/docs/RoboPreferenceActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 69
    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 38
    iget-object v0, p0, Lcom/google/android/apps/docs/RoboPreferenceActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method protected onPostResume()V
    .registers 2

    .prologue
    .line 61
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPostResume()V

    .line 62
    iget-object v0, p0, Lcom/google/android/apps/docs/RoboPreferenceActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 63
    return-void
.end method

.method protected onRestart()V
    .registers 2

    .prologue
    .line 49
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onRestart()V

    .line 50
    iget-object v0, p0, Lcom/google/android/apps/docs/RoboPreferenceActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 51
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .parameter

    .prologue
    .line 86
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 87
    iget-object v0, p0, Lcom/google/android/apps/docs/RoboPreferenceActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 88
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 55
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 56
    iget-object v0, p0, Lcom/google/android/apps/docs/RoboPreferenceActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 57
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .parameter

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 81
    iget-object v0, p0, Lcom/google/android/apps/docs/RoboPreferenceActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 82
    return-void
.end method

.method protected onStart()V
    .registers 2

    .prologue
    .line 43
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStart()V

    .line 44
    iget-object v0, p0, Lcom/google/android/apps/docs/RoboPreferenceActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 45
    return-void
.end method
