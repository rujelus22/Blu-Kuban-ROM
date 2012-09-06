.class public Lcom/twitter/android/AuthenticatorActivity;
.super Landroid/accounts/AccountAuthenticatorActivity;


# instance fields
.field a:Ljava/lang/Boolean;

.field private b:Landroid/accounts/AccountManager;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/accounts/AccountAuthenticatorActivity;-><init>()V

    return-void
.end method

.method private b(Lcom/twitter/android/network/j;)V
    .registers 6

    new-instance v0, Landroid/accounts/Account;

    iget-object v1, p0, Lcom/twitter/android/AuthenticatorActivity;->d:Ljava/lang/String;

    const-string v2, "com.twitter.android.auth.login"

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/twitter/android/AuthenticatorActivity;->b:Landroid/accounts/AccountManager;

    const-string v2, "com.twitter.android.oauth.token"

    iget-object v3, p1, Lcom/twitter/android/network/j;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v3}, Landroid/accounts/AccountManager;->setAuthToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "com.twitter.android.oauth.token.secret"

    iget-object v3, p1, Lcom/twitter/android/network/j;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v3}, Landroid/accounts/AccountManager;->setAuthToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method final a(Lcom/twitter/android/network/j;)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/twitter/android/AuthenticatorActivity;->b(Lcom/twitter/android/network/j;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "authAccount"

    iget-object v2, p0, Lcom/twitter/android/AuthenticatorActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "accountType"

    const-string v2, "com.twitter.android.auth.login"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/twitter/android/AuthenticatorActivity;->c:Ljava/lang/String;

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/twitter/android/AuthenticatorActivity;->c:Ljava/lang/String;

    const-string v2, "com.twitter.android.oauth.token"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_47

    const-string v1, "authtoken"

    iget-object v2, p1, Lcom/twitter/android/network/j;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2b
    :goto_2b
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/twitter/android/AuthenticatorActivity;->setAccountAuthenticatorResult(Landroid/os/Bundle;)V

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/twitter/android/AuthenticatorActivity;->setResult(ILandroid/content/Intent;)V

    invoke-static {p0}, Lcom/twitter/android/client/b;->a(Landroid/content/Context;)Lcom/twitter/android/client/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/client/b;->i()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-virtual {v0, p1}, Lcom/twitter/android/client/b;->a(Lcom/twitter/android/network/j;)V

    :cond_43
    invoke-virtual {p0}, Lcom/twitter/android/AuthenticatorActivity;->finish()V

    return-void

    :cond_47
    iget-object v1, p0, Lcom/twitter/android/AuthenticatorActivity;->c:Ljava/lang/String;

    const-string v2, "com.twitter.android.oauth.token.secret"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    const-string v1, "authtoken"

    iget-object v2, p1, Lcom/twitter/android/network/j;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2b
.end method

.method final a(Lcom/twitter/android/network/j;Z)V
    .registers 6

    invoke-direct {p0, p1}, Lcom/twitter/android/AuthenticatorActivity;->b(Lcom/twitter/android/network/j;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "booleanResult"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/twitter/android/AuthenticatorActivity;->setAccountAuthenticatorResult(Landroid/os/Bundle;)V

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/twitter/android/AuthenticatorActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/twitter/android/AuthenticatorActivity;->finish()V

    return-void
.end method

.method public onClickHandler(Landroid/view/View;)V
    .registers 7

    iget-object v0, p0, Lcom/twitter/android/AuthenticatorActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    :goto_10
    return-void

    :cond_11
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/twitter/android/AuthenticatorActivity;->showDialog(I)V

    new-instance v1, Lcom/twitter/android/m;

    invoke-direct {v1, p0}, Lcom/twitter/android/m;-><init>(Lcom/twitter/android/AuthenticatorActivity;)V

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/twitter/android/service/TwitterService;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "LOGIN"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "screen_name"

    iget-object v4, p0, Lcom/twitter/android/AuthenticatorActivity;->d:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "pass"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "ibinder"

    new-instance v3, Lcom/twitter/android/service/k;

    invoke-direct {v3, v1}, Lcom/twitter/android/service/k;-><init>(Lcom/twitter/android/service/e;)V

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/twitter/android/AuthenticatorActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_10
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    const/4 v2, 0x3

    invoke-super {p0, p1}, Landroid/accounts/AccountAuthenticatorActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v2}, Lcom/twitter/android/AuthenticatorActivity;->requestWindowFeature(I)Z

    const v0, 0x7f03002a

    invoke-virtual {p0, v0}, Lcom/twitter/android/AuthenticatorActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/twitter/android/AuthenticatorActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureDrawableResource(II)V

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/AuthenticatorActivity;->b:Landroid/accounts/AccountManager;

    invoke-virtual {p0}, Lcom/twitter/android/AuthenticatorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "username"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/AuthenticatorActivity;->d:Ljava/lang/String;

    const-string v1, "auth_token_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/AuthenticatorActivity;->c:Ljava/lang/String;

    const-string v1, "confirm_credentials"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/AuthenticatorActivity;->a:Ljava/lang/Boolean;

    const v0, 0x7f070066

    invoke-virtual {p0, v0}, Lcom/twitter/android/AuthenticatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/twitter/android/AuthenticatorActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f070067

    invoke-virtual {p0, v0}, Lcom/twitter/android/AuthenticatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/twitter/android/AuthenticatorActivity;->e:Landroid/widget/EditText;

    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 5

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_1c

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :pswitch_6
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b00d2

    invoke-virtual {p0, v1}, Lcom/twitter/android/AuthenticatorActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    goto :goto_5

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
