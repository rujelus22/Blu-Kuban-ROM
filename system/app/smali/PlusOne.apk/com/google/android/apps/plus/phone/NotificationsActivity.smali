.class public Lcom/google/android/apps/plus/phone/NotificationsActivity;
.super Lcom/google/android/apps/plus/fragments/EsFragmentActivity;
.source "NotificationsActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    .registers 3

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/NotificationsActivity;->getIntent()Landroid/content/Intent;

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
    .line 169
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->NOTIFICATIONS:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    return-object v0
.end method

.method protected needsAsyncData()Z
    .registers 2

    .prologue
    .line 177
    const/4 v0, 0x1

    return v0
.end method

.method public onAttachedToWindow()V
    .registers 4

    .prologue
    .line 83
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_20

    .line 84
    const v1, 0x7f0d018e

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/NotificationsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 89
    .local v0, progressBarView:Landroid/widget/ProgressBar;
    :goto_f
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/NotificationsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0d00f0

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/fragments/NotificationsListFragment;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/fragments/NotificationsListFragment;->setProgressBar(Landroid/widget/ProgressBar;)V

    .line 91
    return-void

    .line 86
    .end local v0           #progressBarView:Landroid/widget/ProgressBar;
    :cond_20
    const v1, 0x7f0d0039

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/NotificationsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .restart local v0       #progressBarView:Landroid/widget/ProgressBar;
    goto :goto_f
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    .line 30
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const v1, 0x7f03004c

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/NotificationsActivity;->setContentView(I)V

    .line 33
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_18

    .line 35
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/NotificationsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 36
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 47
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :goto_17
    return-void

    .line 39
    :cond_18
    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/phone/NotificationsActivity;->showTitlebar(Z)V

    .line 42
    const v1, 0x7f020087

    const v2, 0x7f07005f

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/NotificationsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/plus/phone/NotificationsActivity;->setTitlebarTitle(ILjava/lang/String;)V

    .line 45
    const v1, 0x7f100011

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/NotificationsActivity;->createTitlebarButtons(I)V

    goto :goto_17
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/NotificationsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100011

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 100
    const/4 v0, 0x1

    return v0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 5
    .parameter "newIntent"

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 55
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/phone/NotificationsActivity;->setIntent(Landroid/content/Intent;)V

    .line 57
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/NotificationsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0d00f0

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/fragments/NotificationsListFragment;

    .line 60
    .local v0, fragment:Lcom/google/android/apps/plus/fragments/NotificationsListFragment;
    if-eqz v0, :cond_18

    .line 61
    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/fragments/NotificationsListFragment;->onNewIntent(Landroid/content/Intent;)V

    .line 63
    :cond_18
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 130
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_28

    .line 143
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_c
    return v0

    .line 132
    :sswitch_d
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/NotificationsActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/NotificationsActivity;->goHome(Lcom/google/android/apps/plus/content/EsAccount;)V

    move v0, v1

    .line 133
    goto :goto_c

    .line 137
    :sswitch_16
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/NotificationsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v2, 0x7f0d00f0

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/fragments/NotificationsListFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/NotificationsListFragment;->refreshNotifications()V

    move v0, v1

    .line 139
    goto :goto_c

    .line 130
    :sswitch_data_28
    .sparse-switch
        0x102002c -> :sswitch_d
        0x7f0d01b4 -> :sswitch_16
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 108
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_11

    .line 109
    const v0, 0x7f0d01b4

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 112
    :cond_11
    const/4 v0, 0x1

    return v0
.end method

.method public onPrepareTitlebarButtons(Landroid/view/Menu;)V
    .registers 2
    .parameter "menu"

    .prologue
    .line 123
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 70
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onResume()V

    .line 72
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/NotificationsActivity;->isIntentAccountActive()Z

    move-result v0

    if-nez v0, :cond_c

    .line 73
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/NotificationsActivity;->finish()V

    .line 75
    :cond_c
    return-void
.end method

.method protected onTitlebarLabelClick()V
    .registers 2

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/NotificationsActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/NotificationsActivity;->goHome(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 154
    return-void
.end method
