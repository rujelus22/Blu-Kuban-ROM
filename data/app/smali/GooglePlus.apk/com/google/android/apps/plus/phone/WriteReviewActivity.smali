.class public Lcom/google/android/apps/plus/phone/WriteReviewActivity;
.super Lcom/google/android/apps/plus/fragments/EsFragmentActivity;
.source "WriteReviewActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    .registers 3

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/WriteReviewActivity;->getIntent()Landroid/content/Intent;

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
    .line 43
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->UNKNOWN:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const v2, 0x7f0300f7

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/WriteReviewActivity;->setContentView(I)V

    .line 29
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/WriteReviewActivity;->showTitlebar(Z)V

    .line 30
    const v2, 0x7f080208

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/WriteReviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/WriteReviewActivity;->setTitlebarTitle(Ljava/lang/String;)V

    .line 33
    new-instance v1, Lcom/google/android/apps/plus/fragments/WriteReviewFragment;

    invoke-direct {v1}, Lcom/google/android/apps/plus/fragments/WriteReviewFragment;-><init>()V

    .line 34
    .local v1, fragment:Lcom/google/android/apps/plus/fragments/WriteReviewFragment;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/WriteReviewActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    const v3, 0x7f0902a0

    invoke-virtual {v2, v3, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 36
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/WriteReviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 37
    .local v0, args:Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/fragments/WriteReviewFragment;->setArguments(Landroid/os/Bundle;)V

    .line 38
    return-void
.end method
