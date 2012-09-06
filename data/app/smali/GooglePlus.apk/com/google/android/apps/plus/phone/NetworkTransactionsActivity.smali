.class public Lcom/google/android/apps/plus/phone/NetworkTransactionsActivity;
.super Lcom/google/android/apps/plus/fragments/EsFragmentActivity;
.source "NetworkTransactionsActivity.java"


# instance fields
.field private mAccount:Lcom/google/android/apps/plus/content/EsAccount;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    .registers 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/NetworkTransactionsActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method protected getViewForLogging()Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
    .registers 2

    .prologue
    .line 153
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->UNKNOWN:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    return-object v0
.end method

.method public onAttachedToWindow()V
    .registers 4

    .prologue
    .line 75
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_20

    .line 76
    const v1, 0x7f090277

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/NetworkTransactionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 81
    .local v0, progressBarView:Landroid/widget/ProgressBar;
    :goto_f
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/NetworkTransactionsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f090166

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/fragments/NetworkTransactionsListFragment;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/fragments/NetworkTransactionsListFragment;->setProgressBar(Landroid/widget/ProgressBar;)V

    .line 83
    return-void

    .line 78
    .end local v0           #progressBarView:Landroid/widget/ProgressBar;
    :cond_20
    const v1, 0x7f09004a

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/NetworkTransactionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .restart local v0       #progressBarView:Landroid/widget/ProgressBar;
    goto :goto_f
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    .line 34
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v2, 0x7f03006e

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/NetworkTransactionsActivity;->setContentView(I)V

    .line 37
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/NetworkTransactionsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 39
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "account"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/content/EsAccount;

    iput-object v2, p0, Lcom/google/android/apps/plus/phone/NetworkTransactionsActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 41
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_26

    .line 43
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/NetworkTransactionsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 44
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 55
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :goto_25
    return-void

    .line 47
    :cond_26
    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/phone/NetworkTransactionsActivity;->showTitlebar(Z)V

    .line 50
    const v2, 0x7f08021a

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/NetworkTransactionsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/NetworkTransactionsActivity;->setTitlebarTitle(Ljava/lang/String;)V

    .line 53
    const v2, 0x7f10001f

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/NetworkTransactionsActivity;->createTitlebarButtons(I)V

    goto :goto_25
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/NetworkTransactionsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f10001f

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 92
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 122
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_28

    .line 135
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_c
    return v0

    .line 124
    :sswitch_d
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/NetworkTransactionsActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/NetworkTransactionsActivity;->goHome(Lcom/google/android/apps/plus/content/EsAccount;)V

    move v0, v1

    .line 125
    goto :goto_c

    .line 129
    :sswitch_16
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/NetworkTransactionsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v2, 0x7f090166

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/fragments/NetworkTransactionsListFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/NetworkTransactionsListFragment;->clear()V

    move v0, v1

    .line 131
    goto :goto_c

    .line 122
    :sswitch_data_28
    .sparse-switch
        0x102002c -> :sswitch_d
        0x7f0902f5 -> :sswitch_16
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 100
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_11

    .line 101
    const v0, 0x7f0902f5

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 104
    :cond_11
    const/4 v0, 0x1

    return v0
.end method

.method public onPrepareTitlebarButtons(Landroid/view/Menu;)V
    .registers 2
    .parameter "menu"

    .prologue
    .line 115
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 62
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onResume()V

    .line 64
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/NetworkTransactionsActivity;->isIntentAccountActive()Z

    move-result v0

    if-nez v0, :cond_c

    .line 65
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/NetworkTransactionsActivity;->finish()V

    .line 67
    :cond_c
    return-void
.end method

.method protected onTitlebarLabelClick()V
    .registers 2

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/NetworkTransactionsActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/NetworkTransactionsActivity;->goHome(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 146
    return-void
.end method
