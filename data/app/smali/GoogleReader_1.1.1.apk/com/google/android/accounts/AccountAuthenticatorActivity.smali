.class public Lcom/google/android/accounts/AccountAuthenticatorActivity;
.super Landroid/app/Activity;
.source "AccountAuthenticatorActivity.java"


# instance fields
.field private mAccountAuthenticatorResponse:Lcom/google/android/accounts/AccountAuthenticatorResponse;

.field private mResultBundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 53
    iput-object v0, p0, Lcom/google/android/accounts/AccountAuthenticatorActivity;->mAccountAuthenticatorResponse:Lcom/google/android/accounts/AccountAuthenticatorResponse;

    .line 55
    iput-object v0, p0, Lcom/google/android/accounts/AccountAuthenticatorActivity;->mResultBundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public finish()V
    .registers 4

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/accounts/AccountAuthenticatorActivity;->mAccountAuthenticatorResponse:Lcom/google/android/accounts/AccountAuthenticatorResponse;

    if-eqz v0, :cond_12

    .line 89
    iget-object v0, p0, Lcom/google/android/accounts/AccountAuthenticatorActivity;->mResultBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_16

    .line 90
    iget-object v0, p0, Lcom/google/android/accounts/AccountAuthenticatorActivity;->mAccountAuthenticatorResponse:Lcom/google/android/accounts/AccountAuthenticatorResponse;

    iget-object v1, p0, Lcom/google/android/accounts/AccountAuthenticatorActivity;->mResultBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/google/android/accounts/AccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V

    .line 95
    :goto_f
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/accounts/AccountAuthenticatorActivity;->mAccountAuthenticatorResponse:Lcom/google/android/accounts/AccountAuthenticatorResponse;

    .line 97
    :cond_12
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 98
    return-void

    .line 92
    :cond_16
    iget-object v0, p0, Lcom/google/android/accounts/AccountAuthenticatorActivity;->mAccountAuthenticatorResponse:Lcom/google/android/accounts/AccountAuthenticatorResponse;

    const/4 v1, 0x4

    const-string v2, "canceled"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/accounts/AccountAuthenticatorResponse;->onError(ILjava/lang/String;)V

    goto :goto_f
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Lcom/google/android/accounts/AccountAuthenticatorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 74
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "accountAuthenticatorResponse"

    .line 75
    .local v1, key:Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    .line 76
    .local v2, response:Landroid/os/Parcelable;
    if-eqz v2, :cond_16

    .line 77
    new-instance v3, Lcom/google/android/accounts/AccountAuthenticatorResponse;

    invoke-direct {v3, v2}, Lcom/google/android/accounts/AccountAuthenticatorResponse;-><init>(Landroid/os/Parcelable;)V

    iput-object v3, p0, Lcom/google/android/accounts/AccountAuthenticatorActivity;->mAccountAuthenticatorResponse:Lcom/google/android/accounts/AccountAuthenticatorResponse;

    .line 80
    :cond_16
    iget-object v3, p0, Lcom/google/android/accounts/AccountAuthenticatorActivity;->mAccountAuthenticatorResponse:Lcom/google/android/accounts/AccountAuthenticatorResponse;

    if-eqz v3, :cond_1f

    .line 81
    iget-object v3, p0, Lcom/google/android/accounts/AccountAuthenticatorActivity;->mAccountAuthenticatorResponse:Lcom/google/android/accounts/AccountAuthenticatorResponse;

    invoke-virtual {v3}, Lcom/google/android/accounts/AccountAuthenticatorResponse;->onRequestContinued()V

    .line 83
    :cond_1f
    return-void
.end method

.method public final setAccountAuthenticatorResult(Landroid/os/Bundle;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/google/android/accounts/AccountAuthenticatorActivity;->mResultBundle:Landroid/os/Bundle;

    .line 67
    return-void
.end method
