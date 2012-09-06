.class public Lcom/google/android/apps/plus/phone/NetworkStatisticsActivity;
.super Lcom/google/android/apps/plus/fragments/EsFragmentActivity;
.source "NetworkStatisticsActivity.java"


# instance fields
.field private mAccount:Lcom/google/android/apps/plus/content/EsAccount;


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
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/NetworkStatisticsActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method protected getViewForLogging()Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
    .registers 2

    .prologue
    .line 109
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->UNKNOWN:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    .line 30
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const v2, 0x7f03006b

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/NetworkStatisticsActivity;->setContentView(I)V

    .line 33
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/NetworkStatisticsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 34
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "account"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/content/EsAccount;

    iput-object v2, p0, Lcom/google/android/apps/plus/phone/NetworkStatisticsActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 36
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_26

    .line 38
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/NetworkStatisticsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 39
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 50
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :goto_25
    return-void

    .line 42
    :cond_26
    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/phone/NetworkStatisticsActivity;->showTitlebar(Z)V

    .line 45
    const v2, 0x7f080218

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/NetworkStatisticsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/NetworkStatisticsActivity;->setTitlebarTitle(Ljava/lang/String;)V

    .line 48
    const v2, 0x7f10001e

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/NetworkStatisticsActivity;->createTitlebarButtons(I)V

    goto :goto_25
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/NetworkStatisticsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f10001e

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 65
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 83
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_28

    .line 97
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_c
    return v0

    .line 85
    :sswitch_d
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/NetworkStatisticsActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/NetworkStatisticsActivity;->goHome(Lcom/google/android/apps/plus/content/EsAccount;)V

    move v0, v1

    .line 86
    goto :goto_c

    .line 91
    :sswitch_16
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/NetworkStatisticsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v2, 0x7f090160

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/fragments/NetworkStatisticsFragment;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/fragments/NetworkStatisticsFragment;->onMenuItemSelected(Landroid/view/MenuItem;)V

    move v0, v1

    .line 93
    goto :goto_c

    .line 83
    :sswitch_data_28
    .sparse-switch
        0x102002c -> :sswitch_d
        0x7f0902f4 -> :sswitch_16
        0x7f0902f5 -> :sswitch_16
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 70
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_11

    .line 71
    const v0, 0x7f0902f5

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 74
    :cond_11
    const/4 v0, 0x1

    return v0
.end method

.method public onPrepareTitlebarButtons(Landroid/view/Menu;)V
    .registers 2
    .parameter "menu"

    .prologue
    .line 79
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 54
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onResume()V

    .line 56
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/NetworkStatisticsActivity;->isIntentAccountActive()Z

    move-result v0

    if-nez v0, :cond_c

    .line 57
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/NetworkStatisticsActivity;->finish()V

    .line 59
    :cond_c
    return-void
.end method

.method protected onTitlebarLabelClick()V
    .registers 2

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/NetworkStatisticsActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/NetworkStatisticsActivity;->goHome(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 105
    return-void
.end method
