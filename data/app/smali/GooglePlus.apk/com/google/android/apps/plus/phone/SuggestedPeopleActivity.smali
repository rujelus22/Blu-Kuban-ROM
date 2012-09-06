.class public Lcom/google/android/apps/plus/phone/SuggestedPeopleActivity;
.super Lcom/google/android/apps/plus/fragments/EsFragmentActivity;
.source "SuggestedPeopleActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    .registers 3

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/SuggestedPeopleActivity;->getIntent()Landroid/content/Intent;

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
    .line 140
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->CONTACTS_SUGGESTIONS:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    const v4, 0x7f0802f5

    const/4 v3, 0x1

    .line 29
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const v1, 0x7f0300e3

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/SuggestedPeopleActivity;->setContentView(I)V

    .line 32
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_1e

    .line 34
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/SuggestedPeopleActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 35
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 36
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setTitle(I)V

    .line 44
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :goto_1d
    return-void

    .line 39
    :cond_1e
    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/phone/SuggestedPeopleActivity;->showTitlebar(Z)V

    .line 41
    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/phone/SuggestedPeopleActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/SuggestedPeopleActivity;->setTitlebarTitle(Ljava/lang/String;)V

    .line 42
    const v1, 0x7f100033

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/SuggestedPeopleActivity;->createTitlebarButtons(I)V

    goto :goto_1d
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/SuggestedPeopleActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100033

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 64
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 95
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_16

    .line 106
    const/4 v0, 0x0

    :goto_9
    return v0

    .line 97
    :sswitch_a
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/SuggestedPeopleActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/SuggestedPeopleActivity;->goHome(Lcom/google/android/apps/plus/content/EsAccount;)V

    goto :goto_9

    .line 102
    :sswitch_12
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/SuggestedPeopleActivity;->onSearchRequested()Z

    goto :goto_9

    .line 95
    :sswitch_data_16
    .sparse-switch
        0x102002c -> :sswitch_a
        0x7f0902a9 -> :sswitch_12
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 73
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_14

    .line 74
    const v0, 0x7f0902a9

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 76
    :cond_14
    const/4 v0, 0x1

    return v0
.end method

.method protected onPrepareTitlebarButtons(Landroid/view/Menu;)V
    .registers 5
    .parameter "menu"

    .prologue
    .line 84
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v1

    if-ge v0, v1, :cond_12

    .line 85
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 87
    :cond_12
    const v1, 0x7f0902a9

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 88
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 51
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onResume()V

    .line 53
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/SuggestedPeopleActivity;->isIntentAccountActive()Z

    move-result v0

    if-nez v0, :cond_c

    .line 54
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/SuggestedPeopleActivity;->finish()V

    .line 56
    :cond_c
    return-void
.end method

.method public onSearchRequested()Z
    .registers 10

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 122
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/SuggestedPeopleActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    const/4 v3, -0x1

    move-object v0, p0

    move v5, v2

    move v6, v4

    move v7, v2

    move v8, v2

    invoke-static/range {v0 .. v8}, Lcom/google/android/apps/plus/phone/Intents;->getPeopleSearchActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;ZIZZZZZ)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/SuggestedPeopleActivity;->startActivity(Landroid/content/Intent;)V

    .line 124
    return v4
.end method

.method protected onTitlebarLabelClick()V
    .registers 2

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/SuggestedPeopleActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/SuggestedPeopleActivity;->goHome(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 115
    return-void
.end method
