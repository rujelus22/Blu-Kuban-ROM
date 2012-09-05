.class public Lcom/google/android/apps/plus/phone/VideoViewActivity;
.super Lcom/google/android/apps/plus/fragments/EsFragmentActivity;
.source "VideoViewActivity.java"


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
    .line 56
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/VideoViewActivity;->getIntent()Landroid/content/Intent;

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
    .line 64
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->UNKNOWN:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const v2, 0x7f0300ac

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/VideoViewActivity;->setContentView(I)V

    .line 30
    if-nez p1, :cond_2a

    .line 32
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/VideoViewActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 33
    .local v0, ft:Landroid/support/v4/app/FragmentTransaction;
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/VideoViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 34
    .local v1, intent:Landroid/content/Intent;
    const v2, 0x7f0d0191

    new-instance v3, Lcom/google/android/apps/plus/fragments/VideoViewFragment;

    invoke-direct {v3, v1}, Lcom/google/android/apps/plus/fragments/VideoViewFragment;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 35
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 37
    .end local v0           #ft:Landroid/support/v4/app/FragmentTransaction;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_2a
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 44
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onResume()V

    .line 46
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/VideoViewActivity;->isIntentAccountActive()Z

    move-result v0

    if-nez v0, :cond_c

    .line 47
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/VideoViewActivity;->finish()V

    .line 49
    :cond_c
    return-void
.end method
