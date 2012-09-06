.class public Lcom/google/android/apps/plus/phone/OobInstantUploadActivity;
.super Lcom/google/android/apps/plus/phone/OobDeviceActivity;
.source "OobInstantUploadActivity.java"


# instance fields
.field private mFragment:Lcom/google/android/apps/plus/fragments/OobInstantUploadFragment;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/OobDeviceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .registers 3
    .parameter "fragment"

    .prologue
    .line 42
    instance-of v0, p1, Lcom/google/android/apps/plus/fragments/OobInstantUploadFragment;

    if-eqz v0, :cond_8

    .line 43
    check-cast p1, Lcom/google/android/apps/plus/fragments/OobInstantUploadFragment;

    .end local p1
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/OobInstantUploadActivity;->mFragment:Lcom/google/android/apps/plus/fragments/OobInstantUploadFragment;

    .line 45
    :cond_8
    return-void
.end method

.method public onContinuePressed()V
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/OobInstantUploadActivity;->mFragment:Lcom/google/android/apps/plus/fragments/OobInstantUploadFragment;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/OobInstantUploadActivity;->mFragment:Lcom/google/android/apps/plus/fragments/OobInstantUploadFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/OobInstantUploadFragment;->commit()Z

    move-result v0

    if-nez v0, :cond_d

    .line 57
    :cond_c
    :goto_c
    return-void

    .line 56
    :cond_d
    invoke-super {p0}, Lcom/google/android/apps/plus/phone/OobDeviceActivity;->onContinuePressed()V

    goto :goto_c
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/phone/OobDeviceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    const v0, 0x7f030078

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/OobInstantUploadActivity;->setContentView(I)V

    .line 28
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/OobInstantUploadActivity;->shouldShowAndroidActionBar()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 30
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/OobInstantUploadActivity;->showTitlebar(Z)V

    .line 33
    const v0, 0x7f080040

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/OobInstantUploadActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/OobInstantUploadActivity;->setTitlebarTitle(Ljava/lang/String;)V

    .line 35
    :cond_1d
    return-void
.end method

.method public shouldShowAndroidActionBar()Z
    .registers 2

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method
