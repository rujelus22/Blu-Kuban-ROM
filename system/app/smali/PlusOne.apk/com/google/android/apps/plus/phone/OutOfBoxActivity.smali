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
    .line 62
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
    .line 70
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
    const v4, 0x7f030053

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/phone/OutOfBoxActivity;->setContentView(I)V

    .line 32
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-ge v4, v5, :cond_20

    .line 34
    invoke-virtual {p0, v6}, Lcom/google/android/apps/plus/phone/OutOfBoxActivity;->showTitlebar(Z)V

    .line 37
    const v4, 0x7f020087

    const v5, 0x7f070033

    invoke-virtual {p0, v5}, Lcom/google/android/apps/plus/phone/OutOfBoxActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/google/android/apps/plus/phone/OutOfBoxActivity;->setTitlebarTitle(ILjava/lang/String;)V

    .line 41
    :cond_20
    if-nez p1, :cond_4f

    .line 42
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/OutOfBoxActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    .line 43
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/OutOfBoxActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "network_oob"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;

    .line 45
    .local v1, oobResponse:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;
    if-eqz v0, :cond_50

    if-eqz v1, :cond_50

    .line 46
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/OutOfBoxActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 47
    .local v2, t:Landroid/support/v4/app/FragmentTransaction;
    invoke-static {}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->createInitialTag()Ljava/lang/String;

    move-result-object v3

    .line 48
    .local v3, tag:Ljava/lang/String;
    const v4, 0x7f0d00fd

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->newInstance(Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;)Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;

    move-result-object v5

    invoke-virtual {v2, v4, v5, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 49
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 55
    .end local v0           #account:Lcom/google/android/apps/plus/content/EsAccount;
    .end local v1           #oobResponse:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;
    .end local v2           #t:Landroid/support/v4/app/FragmentTransaction;
    .end local v3           #tag:Ljava/lang/String;
    :cond_4f
    :goto_4f
    return-void

    .line 51
    .restart local v0       #account:Lcom/google/android/apps/plus/content/EsAccount;
    .restart local v1       #oobResponse:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;
    :cond_50
    invoke-virtual {p0, v6}, Lcom/google/android/apps/plus/phone/OutOfBoxActivity;->setResult(I)V

    .line 52
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/OutOfBoxActivity;->finish()V

    goto :goto_4f
.end method
