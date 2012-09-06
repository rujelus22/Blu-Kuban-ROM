.class public Lcom/google/android/finsky/activities/ChallengeActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "ChallengeActivity.java"

# interfaces
.implements Lcom/google/android/finsky/billing/BillingFlowContext;
.implements Lcom/google/android/finsky/billing/BillingFlowListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public hideFragment(Landroid/support/v4/app/Fragment;Z)V
    .registers 5
    .parameter "fragment"
    .parameter "addToBackStack"

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ChallengeActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 52
    .local v0, fragmentTransaction:Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 53
    if-eqz p2, :cond_11

    .line 54
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 56
    :cond_11
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 57
    return-void
.end method

.method public hideProgress()V
    .registers 1

    .prologue
    .line 82
    return-void
.end method

.method public onError(Lcom/google/android/finsky/billing/BillingFlow;Ljava/lang/String;)V
    .registers 4
    .parameter "flow"
    .parameter "error"

    .prologue
    .line 99
    if-eqz p2, :cond_a

    .line 100
    const/4 v0, 0x1

    invoke-static {p0, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 102
    :cond_a
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/ChallengeActivity;->setResult(I)V

    .line 103
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ChallengeActivity;->finish()V

    .line 104
    return-void
.end method

.method public onFinished(Lcom/google/android/finsky/billing/BillingFlow;ZLandroid/os/Bundle;)V
    .registers 6
    .parameter "flow"
    .parameter "canceled"
    .parameter "result"

    .prologue
    .line 86
    if-eqz p2, :cond_a

    .line 87
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/ChallengeActivity;->setResult(I)V

    .line 88
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ChallengeActivity;->finish()V

    .line 95
    :goto_9
    return-void

    .line 90
    :cond_a
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 91
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "challenge_response"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 92
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/finsky/activities/ChallengeActivity;->setResult(ILandroid/content/Intent;)V

    .line 93
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ChallengeActivity;->finish()V

    goto :goto_9
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 108
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public persistFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V
    .registers 5
    .parameter "bundle"
    .parameter "key"
    .parameter "fragment"

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ChallengeActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/FragmentManager;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    .line 67
    return-void
.end method

.method public restoreFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .registers 4
    .parameter "bundle"
    .parameter "key"

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ChallengeActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/FragmentManager;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public showDialogFragment(Landroid/support/v4/app/DialogFragment;Ljava/lang/String;)V
    .registers 6
    .parameter "fragment"
    .parameter "tag"

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ChallengeActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 41
    .local v0, ft:Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ChallengeActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 42
    .local v1, prev:Landroid/support/v4/app/Fragment;
    if-eqz v1, :cond_15

    .line 43
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 45
    :cond_15
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 46
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ChallengeActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public showFragment(Landroid/support/v4/app/Fragment;IZ)V
    .registers 6
    .parameter "fragment"
    .parameter "title"
    .parameter "addToBackStack"

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ChallengeActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 31
    .local v0, transaction:Landroid/support/v4/app/FragmentTransaction;
    const v1, 0x7f080033

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 32
    if-eqz p3, :cond_14

    .line 33
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 35
    :cond_14
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 36
    return-void
.end method

.method public showProgress(I)V
    .registers 2
    .parameter "messageId"

    .prologue
    .line 77
    return-void
.end method
