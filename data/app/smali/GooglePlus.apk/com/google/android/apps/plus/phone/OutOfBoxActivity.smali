.class public Lcom/google/android/apps/plus/phone/OutOfBoxActivity;
.super Lcom/google/android/apps/plus/fragments/EsFragmentActivity;
.source "OutOfBoxActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    .registers 3

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/OutOfBoxActivity;->getIntent()Landroid/content/Intent;

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
    .line 71
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->UNKNOWN:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    .line 28
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const v4, 0x7f03007b

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/phone/OutOfBoxActivity;->setContentView(I)V

    .line 32
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/OutOfBoxActivity;->shouldShowAndroidActionBar()Z

    move-result v4

    if-nez v4, :cond_1d

    .line 34
    invoke-virtual {p0, v6}, Lcom/google/android/apps/plus/phone/OutOfBoxActivity;->showTitlebar(Z)V

    .line 37
    const v4, 0x7f080040

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/phone/OutOfBoxActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/phone/OutOfBoxActivity;->setTitlebarTitle(Ljava/lang/String;)V

    .line 40
    :cond_1d
    const/4 v4, 0x1

    invoke-static {p0, v4}, Lcom/google/android/apps/plus/content/EsAccountsData;->setHasVisitedOob(Landroid/content/Context;Z)V

    .line 42
    if-nez p1, :cond_50

    .line 43
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/OutOfBoxActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    .line 44
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/OutOfBoxActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "network_oob"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;

    .line 46
    .local v1, oobResponse:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;
    if-eqz v0, :cond_51

    if-eqz v1, :cond_51

    .line 47
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/OutOfBoxActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 48
    .local v2, t:Landroid/support/v4/app/FragmentTransaction;
    invoke-static {}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->createInitialTag()Ljava/lang/String;

    move-result-object v3

    .line 49
    .local v3, tag:Ljava/lang/String;
    const v4, 0x7f09017b

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->newInstance(Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;)Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;

    move-result-object v5

    invoke-virtual {v2, v4, v5, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 50
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 56
    .end local v0           #account:Lcom/google/android/apps/plus/content/EsAccount;
    .end local v1           #oobResponse:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;
    .end local v2           #t:Landroid/support/v4/app/FragmentTransaction;
    .end local v3           #tag:Ljava/lang/String;
    :cond_50
    :goto_50
    return-void

    .line 52
    .restart local v0       #account:Lcom/google/android/apps/plus/content/EsAccount;
    .restart local v1       #oobResponse:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;
    :cond_51
    invoke-virtual {p0, v6}, Lcom/google/android/apps/plus/phone/OutOfBoxActivity;->setResult(I)V

    .line 53
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/OutOfBoxActivity;->finish()V

    goto :goto_50
.end method

.method public shouldShowAndroidActionBar()Z
    .registers 2

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method
