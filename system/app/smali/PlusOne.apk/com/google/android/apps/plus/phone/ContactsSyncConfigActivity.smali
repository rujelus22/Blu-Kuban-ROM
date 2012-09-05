.class public Lcom/google/android/apps/plus/phone/ContactsSyncConfigActivity;
.super Lcom/google/android/apps/plus/fragments/EsFragmentActivity;
.source "ContactsSyncConfigActivity.java"

# interfaces
.implements Lcom/google/android/apps/plus/fragments/OobContactsSyncFragment$ContactsSyncConfigListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    .registers 3

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ContactsSyncConfigActivity;->getIntent()Landroid/content/Intent;

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
    .line 63
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->UNKNOWN:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    return-object v0
.end method

.method public onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .registers 3
    .parameter "fragment"

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onAttachFragment(Landroid/support/v4/app/Fragment;)V

    .line 37
    instance-of v0, p1, Lcom/google/android/apps/plus/fragments/OobContactsSyncFragment;

    if-eqz v0, :cond_c

    .line 38
    check-cast p1, Lcom/google/android/apps/plus/fragments/OobContactsSyncFragment;

    .end local p1
    invoke-virtual {p1, p0}, Lcom/google/android/apps/plus/fragments/OobContactsSyncFragment;->setContactsSyncConfigListener(Lcom/google/android/apps/plus/fragments/OobContactsSyncFragment$ContactsSyncConfigListener;)V

    .line 40
    :cond_c
    return-void
.end method

.method public onContinue()V
    .registers 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ContactsSyncConfigActivity;->finish()V

    .line 48
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const v0, 0x7f03004d

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/ContactsSyncConfigActivity;->setContentView(I)V

    .line 29
    return-void
.end method
