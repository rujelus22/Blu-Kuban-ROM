.class final Lcom/twitter/android/bp;
.super Lcom/twitter/android/client/g;


# instance fields
.field final synthetic a:Lcom/twitter/android/LoginActivity;


# direct methods
.method private constructor <init>(Lcom/twitter/android/LoginActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/twitter/android/bp;->a:Lcom/twitter/android/LoginActivity;

    invoke-direct {p0}, Lcom/twitter/android/client/g;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/android/LoginActivity;Lcom/twitter/android/bo;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/twitter/android/bp;-><init>(Lcom/twitter/android/LoginActivity;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 12

    iget-object v0, p0, Lcom/twitter/android/bp;->a:Lcom/twitter/android/LoginActivity;

    invoke-virtual {v0}, Lcom/twitter/android/LoginActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/twitter/android/bp;->a:Lcom/twitter/android/LoginActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/android/LoginActivity;->removeDialog(I)V

    iget-object v0, p0, Lcom/twitter/android/bp;->a:Lcom/twitter/android/LoginActivity;

    iget-boolean v0, v0, Lcom/twitter/android/LoginActivity;->a:Z

    iget-object v1, p0, Lcom/twitter/android/bp;->a:Lcom/twitter/android/LoginActivity;

    invoke-virtual {v1}, Lcom/twitter/android/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    sparse-switch p3, :sswitch_data_86

    iget-object v0, p0, Lcom/twitter/android/bp;->a:Lcom/twitter/android/LoginActivity;

    invoke-virtual {v0, p3}, Lcom/twitter/android/LoginActivity;->b(I)V

    goto :goto_8

    :sswitch_22
    invoke-virtual {p1}, Lcom/twitter/android/client/Session;->e()Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_4b

    const-string v0, "accountAuthenticatorResponse"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountAuthenticatorResponse;

    if-eqz v0, :cond_4b

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "authAccount"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "accountType"

    const-string v5, "com.twitter.android.auth.login"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "account_user_info"

    invoke-virtual {v3, v4, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/accounts/AccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V

    :cond_4b
    const-string v0, "android.intent.extra.INTENT"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    if-eqz v0, :cond_5a

    iget-object v1, p0, Lcom/twitter/android/bp;->a:Lcom/twitter/android/LoginActivity;

    invoke-virtual {v1, v0}, Lcom/twitter/android/LoginActivity;->startActivity(Landroid/content/Intent;)V

    :cond_5a
    iget-object v0, p0, Lcom/twitter/android/bp;->a:Lcom/twitter/android/LoginActivity;

    const/4 v1, -0x1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "account"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/LoginActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/twitter/android/bp;->a:Lcom/twitter/android/LoginActivity;

    invoke-virtual {v0}, Lcom/twitter/android/LoginActivity;->finish()V

    goto :goto_8

    :sswitch_71
    if-eqz v0, :cond_80

    const-string v0, "accountAuthenticatorResponse"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountAuthenticatorResponse;

    if-eqz v0, :cond_80

    invoke-virtual {v0, p3, p4}, Landroid/accounts/AccountAuthenticatorResponse;->onError(ILjava/lang/String;)V

    :cond_80
    iget-object v0, p0, Lcom/twitter/android/bp;->a:Lcom/twitter/android/LoginActivity;

    invoke-virtual {v0, p3}, Lcom/twitter/android/LoginActivity;->b(I)V

    goto :goto_8

    :sswitch_data_86
    .sparse-switch
        0xc8 -> :sswitch_22
        0x190 -> :sswitch_71
    .end sparse-switch
.end method
