.class public Lcom/dropbox/android/activity/droidfu/BetterFragmentActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "panda.py"

# interfaces
.implements Lcom/github/droidfu/activities/a;


# instance fields
.field private m:Z

.field private n:Z

.field private o:I

.field private p:I

.field private q:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final b_()I
    .registers 2

    .prologue
    .line 78
    invoke-static {p0}, Lcom/github/droidfu/activities/b;->a(Landroid/app/Activity;)I

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dropbox/android/activity/droidfu/BetterFragmentActivity;->m:Z

    .line 33
    invoke-virtual {p0}, Lcom/dropbox/android/activity/droidfu/BetterFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/activity/droidfu/BetterFragmentActivity;->q:Landroid/content/Intent;

    .line 35
    invoke-virtual {p0}, Lcom/dropbox/android/activity/droidfu/BetterFragmentActivity;->getApplication()Landroid/app/Application;

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
    .line 62
    iget v0, p0, Lcom/dropbox/android/activity/droidfu/BetterFragmentActivity;->o:I

    iget v1, p0, Lcom/dropbox/android/activity/droidfu/BetterFragmentActivity;->p:I

    invoke-static {p0, v0, v1}, Lcom/github/droidfu/activities/b;->a(Landroid/app/Activity;II)Landroid/app/ProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 2
    .parameter

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 57
    iput-object p1, p0, Lcom/dropbox/android/activity/droidfu/BetterFragmentActivity;->q:Landroid/content/Intent;

    .line 58
    return-void
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 50
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/android/activity/droidfu/BetterFragmentActivity;->n:Z

    iput-boolean v0, p0, Lcom/dropbox/android/activity/droidfu/BetterFragmentActivity;->m:Z

    .line 52
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .parameter

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dropbox/android/activity/droidfu/BetterFragmentActivity;->n:Z

    .line 46
    return-void
.end method
