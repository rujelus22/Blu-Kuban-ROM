.class public Lcom/google/android/apps/plus/phone/OobSuggestedPeopleActivity;
.super Lcom/google/android/apps/plus/phone/OobDeviceActivity;
.source "OobSuggestedPeopleActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/OobDeviceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    .registers 3

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/OobSuggestedPeopleActivity;->getIntent()Landroid/content/Intent;

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
    .line 125
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->WW_SUGGESTIONS:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    return-object v0
.end method

.method public onContinue()V
    .registers 5

    .prologue
    .line 50
    invoke-super {p0}, Lcom/google/android/apps/plus/phone/OobDeviceActivity;->onContinue()V

    .line 52
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/OobSuggestedPeopleActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lcom/google/android/apps/plus/content/EsAccountsData;->setWarmWelcomeTimestamp(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JZ)V

    .line 54
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 29
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/phone/OobDeviceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const v2, 0x7f03007a

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/OobSuggestedPeopleActivity;->setContentView(I)V

    .line 33
    const v2, 0x7f080040

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/OobSuggestedPeopleActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 34
    .local v1, title:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/OobSuggestedPeopleActivity;->shouldShowAndroidActionBar()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 35
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/OobSuggestedPeopleActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 36
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 37
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 43
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :goto_21
    return-void

    .line 39
    :cond_22
    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/phone/OobSuggestedPeopleActivity;->showTitlebar(Z)V

    .line 40
    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/OobSuggestedPeopleActivity;->setTitlebarTitle(Ljava/lang/String;)V

    .line 41
    const v2, 0x7f100033

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/OobSuggestedPeopleActivity;->createTitlebarButtons(I)V

    goto :goto_21
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/OobSuggestedPeopleActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100033

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 62
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 93
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_e

    .line 99
    const/4 v0, 0x0

    :goto_8
    return v0

    .line 95
    :pswitch_9
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/OobSuggestedPeopleActivity;->onSearchRequested()Z

    .line 96
    const/4 v0, 0x1

    goto :goto_8

    .line 93
    :pswitch_data_e
    .packed-switch 0x7f0902a9
        :pswitch_9
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/phone/OobDeviceActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 71
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_14

    .line 72
    const v0, 0x7f0902a9

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 74
    :cond_14
    const/4 v0, 0x1

    return v0
.end method

.method protected onPrepareTitlebarButtons(Landroid/view/Menu;)V
    .registers 5
    .parameter "menu"

    .prologue
    .line 82
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v1

    if-ge v0, v1, :cond_12

    .line 83
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 85
    :cond_12
    const v1, 0x7f0902a9

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 86
    return-void
.end method

.method public onSearchRequested()Z
    .registers 10

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 107
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/OobSuggestedPeopleActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    const/4 v3, -0x1

    move-object v0, p0

    move v5, v2

    move v6, v4

    move v7, v2

    move v8, v2

    invoke-static/range {v0 .. v8}, Lcom/google/android/apps/plus/phone/Intents;->getPeopleSearchActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;ZIZZZZZ)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/OobSuggestedPeopleActivity;->startActivity(Landroid/content/Intent;)V

    .line 109
    return v4
.end method

.method public shouldShowAndroidActionBar()Z
    .registers 2

    .prologue
    .line 130
    const/4 v0, 0x0

    return v0
.end method
