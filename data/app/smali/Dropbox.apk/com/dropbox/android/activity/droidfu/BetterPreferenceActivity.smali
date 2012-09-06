.class public Lcom/dropbox/android/activity/droidfu/BetterPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "panda.py"

# interfaces
.implements Lcom/github/droidfu/activities/a;


# instance fields
.field private a:Z

.field private b:Z

.field private c:I

.field private d:I

.field private e:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final b_()I
    .registers 2

    .prologue
    .line 81
    invoke-static {p0}, Lcom/github/droidfu/activities/b;->a(Landroid/app/Activity;)I

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dropbox/android/activity/droidfu/BetterPreferenceActivity;->a:Z

    .line 33
    invoke-virtual {p0}, Lcom/dropbox/android/activity/droidfu/BetterPreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/activity/droidfu/BetterPreferenceActivity;->e:Landroid/content/Intent;

    .line 35
    invoke-virtual {p0}, Lcom/dropbox/android/activity/droidfu/BetterPreferenceActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 36
    instance-of v1, v0, Lcom/github/droidfu/DroidFuApplication;

    if-eqz v1, :cond_21

    .line 37
    check-cast v0, Lcom/github/droidfu/DroidFuApplication;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/github/droidfu/DroidFuApplication;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 39
    :cond_21
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 4
    .parameter

    .prologue
    .line 68
    iget v0, p0, Lcom/dropbox/android/activity/droidfu/BetterPreferenceActivity;->c:I

    iget v1, p0, Lcom/dropbox/android/activity/droidfu/BetterPreferenceActivity;->d:I

    invoke-static {p0, v0, v1}, Lcom/github/droidfu/activities/b;->a(Landroid/app/Activity;II)Landroid/app/ProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 43
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 46
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 2
    .parameter

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 63
    iput-object p1, p0, Lcom/dropbox/android/activity/droidfu/BetterPreferenceActivity;->e:Landroid/content/Intent;

    .line 64
    return-void
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 56
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/android/activity/droidfu/BetterPreferenceActivity;->b:Z

    iput-boolean v0, p0, Lcom/dropbox/android/activity/droidfu/BetterPreferenceActivity;->a:Z

    .line 58
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .parameter

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dropbox/android/activity/droidfu/BetterPreferenceActivity;->b:Z

    .line 52
    return-void
.end method
