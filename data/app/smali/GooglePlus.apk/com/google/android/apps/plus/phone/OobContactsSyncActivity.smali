.class public Lcom/google/android/apps/plus/phone/OobContactsSyncActivity;
.super Lcom/google/android/apps/plus/phone/OobDeviceActivity;
.source "OobContactsSyncActivity.java"


# instance fields
.field private mSyncFragment:Lcom/google/android/apps/plus/fragments/OobContactsSyncFragment;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/OobDeviceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .registers 3
    .parameter "fragment"

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/phone/OobDeviceActivity;->onAttachFragment(Landroid/support/v4/app/Fragment;)V

    .line 43
    instance-of v0, p1, Lcom/google/android/apps/plus/fragments/OobContactsSyncFragment;

    if-eqz v0, :cond_b

    .line 44
    check-cast p1, Lcom/google/android/apps/plus/fragments/OobContactsSyncFragment;

    .end local p1
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/OobContactsSyncActivity;->mSyncFragment:Lcom/google/android/apps/plus/fragments/OobContactsSyncFragment;

    .line 46
    :cond_b
    return-void
.end method

.method public onContinuePressed()V
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/OobContactsSyncActivity;->mSyncFragment:Lcom/google/android/apps/plus/fragments/OobContactsSyncFragment;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/OobContactsSyncActivity;->mSyncFragment:Lcom/google/android/apps/plus/fragments/OobContactsSyncFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/OobContactsSyncFragment;->commit()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 54
    invoke-super {p0}, Lcom/google/android/apps/plus/phone/OobDeviceActivity;->onContinuePressed()V

    .line 56
    :cond_f
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/phone/OobDeviceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const v0, 0x7f030074

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/OobContactsSyncActivity;->setContentView(I)V

    .line 27
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/OobContactsSyncActivity;->shouldShowAndroidActionBar()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 29
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/OobContactsSyncActivity;->showTitlebar(Z)V

    .line 32
    const v0, 0x7f080040

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/OobContactsSyncActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/OobContactsSyncActivity;->setTitlebarTitle(Ljava/lang/String;)V

    .line 34
    :cond_1d
    return-void
.end method

.method public shouldShowAndroidActionBar()Z
    .registers 2

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method
