.class public Lcom/google/android/apps/plus/phone/BlockedPeopleActivity;
.super Lcom/google/android/apps/plus/fragments/EsFragmentActivity;
.source "BlockedPeopleActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    .registers 3

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/BlockedPeopleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method protected getViewForLogging()Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
    .registers 2

    .prologue
    .line 105
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->CONTACTS_BLOCKED_PEOPLE:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    return-object v0
.end method

.method protected goHome(Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 3
    .parameter "account"

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/phone/BlockedPeopleActivity;->goHomeToDestination(Lcom/google/android/apps/plus/content/EsAccount;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 90
    :goto_6
    return-void

    .line 89
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/BlockedPeopleActivity;->onBackPressed()V

    goto :goto_6
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    .line 27
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const v1, 0x7f03000f

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/BlockedPeopleActivity;->setContentView(I)V

    .line 30
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_18

    .line 32
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/BlockedPeopleActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 33
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 40
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :goto_17
    return-void

    .line 36
    :cond_18
    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/phone/BlockedPeopleActivity;->showTitlebar(Z)V

    .line 38
    const v1, 0x7f02007e

    const v2, 0x7f070253

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/BlockedPeopleActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/plus/phone/BlockedPeopleActivity;->setTitlebarTitle(ILjava/lang/String;)V

    goto :goto_17
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_12

    .line 69
    :goto_8
    :sswitch_8
    return v0

    .line 61
    :sswitch_9
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/BlockedPeopleActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/BlockedPeopleActivity;->goHome(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 62
    const/4 v0, 0x1

    goto :goto_8

    .line 59
    :sswitch_data_12
    .sparse-switch
        0x102002c -> :sswitch_9
        0x7f0d01b3 -> :sswitch_8
    .end sparse-switch
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 47
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onResume()V

    .line 49
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/BlockedPeopleActivity;->isIntentAccountActive()Z

    move-result v0

    if-nez v0, :cond_c

    .line 50
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/BlockedPeopleActivity;->finish()V

    .line 52
    :cond_c
    return-void
.end method

.method protected onTitlebarLabelClick()V
    .registers 2

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/BlockedPeopleActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/BlockedPeopleActivity;->goHome(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 78
    return-void
.end method
