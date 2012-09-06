.class public Lcom/google/android/apps/reader/fragment/SettingsMenuFragment;
.super Landroid/support/v4/app/Fragment;
.source "SettingsMenuFragment.java"


# instance fields
.field private mAccountSelection:Lcom/google/android/apps/reader/fragment/AccountSelection;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method private showSettings()V
    .registers 4

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/SettingsMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 71
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/android/apps/reader/app/SettingsActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 72
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/SettingsMenuFragment;->mAccountSelection:Lcom/google/android/apps/reader/fragment/AccountSelection;

    invoke-interface {v0}, Lcom/google/android/apps/reader/fragment/AccountSelection;->getAccount()Lcom/google/android/accounts/Account;

    move-result-object v0

    .line 73
    if-eqz v0, :cond_1a

    .line 74
    const-string v2, "authAccount"

    iget-object v0, v0, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    :cond_1a
    invoke-virtual {p0, v1}, Lcom/google/android/apps/reader/fragment/SettingsMenuFragment;->startActivity(Landroid/content/Intent;)V

    .line 77
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .registers 2
    .parameter "activity"

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 43
    check-cast p1, Lcom/google/android/apps/reader/fragment/AccountSelection;

    .end local p1
    iput-object p1, p0, Lcom/google/android/apps/reader/fragment/SettingsMenuFragment;->mAccountSelection:Lcom/google/android/apps/reader/fragment/AccountSelection;

    .line 44
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/reader/fragment/SettingsMenuFragment;->setHasOptionsMenu(Z)V

    .line 50
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 4
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 54
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 55
    const v0, 0x7f10000d

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 56
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 60
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    .line 65
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_b
    return v0

    .line 62
    :pswitch_c
    invoke-direct {p0}, Lcom/google/android/apps/reader/fragment/SettingsMenuFragment;->showSettings()V

    .line 63
    const/4 v0, 0x1

    goto :goto_b

    .line 60
    nop

    :pswitch_data_12
    .packed-switch 0x7f0b0098
        :pswitch_c
    .end packed-switch
.end method
