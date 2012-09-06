.class public Lcom/google/android/apps/reader/fragment/AccountMenuFragment;
.super Landroid/support/v4/app/Fragment;
.source "AccountMenuFragment.java"


# static fields
.field private static final REQUEST_PICK_ACCOUNT:I = 0x1

.field private static final STATE_PICKING_ACCOUNT:Ljava/lang/String; = "reader:picking_account"


# instance fields
.field private mAccountSelection:Lcom/google/android/apps/reader/fragment/AccountSelection;

.field private mPickingAccount:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method private finish()V
    .registers 2

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/AccountMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 141
    return-void
.end method

.method private pickAccount()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 97
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/AccountMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 98
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/android/apps/reader/app/AccountListActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 99
    invoke-virtual {p0, v1, v3}, Lcom/google/android/apps/reader/fragment/AccountMenuFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 100
    iput-boolean v3, p0, Lcom/google/android/apps/reader/fragment/AccountMenuFragment;->mPickingAccount:Z

    .line 101
    return-void
.end method

.method private setDefaultAccount(Lcom/google/android/accounts/Account;)V
    .registers 3
    .parameter "account"

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/AccountMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 136
    .local v0, context:Landroid/content/Context;
    invoke-static {v0, p1}, Lcom/google/android/apps/reader/preference/LocalPreferences;->setAccount(Landroid/content/Context;Lcom/google/android/accounts/Account;)V

    .line 137
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 105
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2d

    .line 106
    const/4 v2, -0x1

    if-ne p2, v2, :cond_1f

    .line 107
    const-string v2, "authAccount"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, accountName:Ljava/lang/String;
    new-instance v0, Lcom/google/android/accounts/Account;

    const-string v2, "com.google"

    invoke-direct {v0, v1, v2}, Lcom/google/android/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .local v0, account:Lcom/google/android/accounts/Account;
    iget-object v2, p0, Lcom/google/android/apps/reader/fragment/AccountMenuFragment;->mAccountSelection:Lcom/google/android/apps/reader/fragment/AccountSelection;

    invoke-interface {v2, v0}, Lcom/google/android/apps/reader/fragment/AccountSelection;->setAccount(Lcom/google/android/accounts/Account;)V

    .line 110
    invoke-direct {p0, v0}, Lcom/google/android/apps/reader/fragment/AccountMenuFragment;->setDefaultAccount(Lcom/google/android/accounts/Account;)V

    .line 122
    .end local v0           #account:Lcom/google/android/accounts/Account;
    .end local v1           #accountName:Ljava/lang/String;
    :cond_1b
    :goto_1b
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/apps/reader/fragment/AccountMenuFragment;->mPickingAccount:Z

    .line 126
    :goto_1e
    return-void

    .line 111
    :cond_1f
    if-nez p2, :cond_1b

    .line 112
    iget-object v2, p0, Lcom/google/android/apps/reader/fragment/AccountMenuFragment;->mAccountSelection:Lcom/google/android/apps/reader/fragment/AccountSelection;

    invoke-interface {v2}, Lcom/google/android/apps/reader/fragment/AccountSelection;->getAccount()Lcom/google/android/accounts/Account;

    move-result-object v0

    .line 113
    .restart local v0       #account:Lcom/google/android/accounts/Account;
    if-nez v0, :cond_1b

    .line 119
    invoke-direct {p0}, Lcom/google/android/apps/reader/fragment/AccountMenuFragment;->finish()V

    goto :goto_1b

    .line 124
    .end local v0           #account:Lcom/google/android/accounts/Account;
    :cond_2d
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_1e
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 2
    .parameter "activity"

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 58
    check-cast p1, Lcom/google/android/apps/reader/fragment/AccountSelection;

    .end local p1
    iput-object p1, p0, Lcom/google/android/apps/reader/fragment/AccountMenuFragment;->mAccountSelection:Lcom/google/android/apps/reader/fragment/AccountSelection;

    .line 59
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/reader/fragment/AccountMenuFragment;->setHasOptionsMenu(Z)V

    .line 65
    if-eqz p1, :cond_11

    .line 66
    const-string v0, "reader:picking_account"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/reader/fragment/AccountMenuFragment;->mPickingAccount:Z

    .line 68
    :cond_11
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 4
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 81
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 82
    const v0, 0x7f100002

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 83
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 87
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    .line 92
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_b
    return v0

    .line 89
    :pswitch_c
    invoke-direct {p0}, Lcom/google/android/apps/reader/fragment/AccountMenuFragment;->pickAccount()V

    .line 90
    const/4 v0, 0x1

    goto :goto_b

    .line 87
    nop

    :pswitch_data_12
    .packed-switch 0x7f0b006f
        :pswitch_c
    .end packed-switch
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 72
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 73
    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/AccountMenuFragment;->mAccountSelection:Lcom/google/android/apps/reader/fragment/AccountSelection;

    invoke-interface {v1}, Lcom/google/android/apps/reader/fragment/AccountSelection;->getAccount()Lcom/google/android/accounts/Account;

    move-result-object v0

    .line 74
    .local v0, account:Lcom/google/android/accounts/Account;
    if-nez v0, :cond_12

    iget-boolean v1, p0, Lcom/google/android/apps/reader/fragment/AccountMenuFragment;->mPickingAccount:Z

    if-nez v1, :cond_12

    .line 75
    invoke-direct {p0}, Lcom/google/android/apps/reader/fragment/AccountMenuFragment;->pickAccount()V

    .line 77
    :cond_12
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 130
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 131
    const-string v0, "reader:picking_account"

    iget-boolean v1, p0, Lcom/google/android/apps/reader/fragment/AccountMenuFragment;->mPickingAccount:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 132
    return-void
.end method
