.class public Lcom/google/android/apps/plus/phone/ContactsSyncConfigActivity;
.super Lcom/google/android/apps/plus/fragments/EsFragmentActivity;
.source "ContactsSyncConfigActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mFragment:Lcom/google/android/apps/plus/fragments/OobContactsSyncFragment;


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
    .line 73
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
    .line 81
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->CONTACTS_SYNC_CONFIG:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    return-object v0
.end method

.method public onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .registers 3
    .parameter "fragment"

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onAttachFragment(Landroid/support/v4/app/Fragment;)V

    .line 51
    instance-of v0, p1, Lcom/google/android/apps/plus/fragments/OobContactsSyncFragment;

    if-eqz v0, :cond_b

    .line 52
    check-cast p1, Lcom/google/android/apps/plus/fragments/OobContactsSyncFragment;

    .end local p1
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/ContactsSyncConfigActivity;->mFragment:Lcom/google/android/apps/plus/fragments/OobContactsSyncFragment;

    .line 54
    :cond_b
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x1020019

    if-ne v0, v1, :cond_18

    .line 62
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ContactsSyncConfigActivity;->mFragment:Lcom/google/android/apps/plus/fragments/OobContactsSyncFragment;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ContactsSyncConfigActivity;->mFragment:Lcom/google/android/apps/plus/fragments/OobContactsSyncFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/OobContactsSyncFragment;->commit()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 63
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ContactsSyncConfigActivity;->finish()V

    .line 66
    :cond_18
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v1, 0x7f030074

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/ContactsSyncConfigActivity;->setContentView(I)V

    .line 33
    const v1, 0x7f090148

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/ContactsSyncConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/BottomActionBar;

    .line 34
    .local v0, bottomActionBar:Lcom/google/android/apps/plus/views/BottomActionBar;
    const v1, 0x1020019

    const v2, 0x7f08004c

    invoke-virtual {v0, v1, v2, p0}, Lcom/google/android/apps/plus/views/BottomActionBar;->addButton(IILandroid/view/View$OnClickListener;)Lcom/google/android/apps/plus/views/ActionButton;

    .line 36
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ContactsSyncConfigActivity;->shouldShowAndroidActionBar()Z

    move-result v1

    if-nez v1, :cond_2f

    .line 38
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/ContactsSyncConfigActivity;->showTitlebar(Z)V

    .line 41
    const v1, 0x7f080040

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/ContactsSyncConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/ContactsSyncConfigActivity;->setTitlebarTitle(Ljava/lang/String;)V

    .line 43
    :cond_2f
    return-void
.end method

.method public shouldShowAndroidActionBar()Z
    .registers 2

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method
