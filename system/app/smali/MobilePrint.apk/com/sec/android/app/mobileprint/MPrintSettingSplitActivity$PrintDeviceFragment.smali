.class public Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintDeviceFragment;
.super Landroid/preference/PreferenceFragment;
.source "MPrintSettingSplitActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PrintDeviceFragment"
.end annotation


# static fields
.field private static final REQUEST_SELECT_PRINTER:I = 0x3e9


# instance fields
.field private mParentActivity:Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;

.field private mPreference_model_name:Landroid/preference/Preference;

.field private mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 596
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 598
    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintDeviceFragment;->mParentActivity:Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;

    .line 599
    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintDeviceFragment;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    .line 600
    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintDeviceFragment;->mPreference_model_name:Landroid/preference/Preference;

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintDeviceFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 596
    invoke-direct {p0}, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintDeviceFragment;->gotoSelectActivity()V

    return-void
.end method

.method private gotoSelectActivity()V
    .registers 4

    .prologue
    .line 677
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintDeviceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 678
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "ReselectMode"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 679
    const/16 v1, 0x3e9

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintDeviceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 680
    return-void
.end method

.method private updatePreferenceSummary()V
    .registers 3

    .prologue
    .line 668
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintDeviceFragment;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    invoke-static {v0}, Lcom/sec/android/app/mobileprint/MPrintCommon;->checkPrinterInfo(Lcom/sec/android/app/mobileprint/MPrintPrinterItem;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 669
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintDeviceFragment;->mPreference_model_name:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintDeviceFragment;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    iget-object v1, v1, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mModelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 674
    :goto_12
    return-void

    .line 672
    :cond_13
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintDeviceFragment;->mPreference_model_name:Landroid/preference/Preference;

    const v1, 0x7f080025

    invoke-virtual {p0, v1}, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintDeviceFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_12
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 625
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 627
    invoke-virtual {p0}, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintDeviceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;

    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintDeviceFragment;->mParentActivity:Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;

    .line 628
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintDeviceFragment;->mParentActivity:Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->getPrinterInfo()Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintDeviceFragment;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    .line 629
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintDeviceFragment;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    if-nez v0, :cond_23

    .line 630
    const-string v0, "MobilePrint"

    const-string v1, "PrintDeviceFragment : mPrinterInfo is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintDeviceFragment;->mParentActivity:Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->finish()V

    .line 634
    :cond_23
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v2, 0x1

    .line 644
    const/16 v1, 0x3e9

    if-ne p1, v1, :cond_22

    .line 645
    const/4 v1, -0x1

    if-ne p2, v1, :cond_22

    .line 646
    const-string v1, "PrinterInfo"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    .line 647
    .local v0, printerInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;
    invoke-static {v0}, Lcom/sec/android/app/mobileprint/MPrintCommon;->checkPrinterInfo(Lcom/sec/android/app/mobileprint/MPrintPrinterItem;)Z

    move-result v1

    if-ne v1, v2, :cond_22

    .line 648
    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintDeviceFragment;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    .line 649
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintDeviceFragment;->mParentActivity:Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->setPrinterInfo(Lcom/sec/android/app/mobileprint/MPrintPrinterItem;)V

    .line 650
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintDeviceFragment;->mParentActivity:Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->setPrintMenuEnabled(Z)V

    .line 654
    .end local v0           #printerInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;
    :cond_22
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 608
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 610
    const v0, 0x7f040001

    invoke-virtual {p0, v0}, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintDeviceFragment;->addPreferencesFromResource(I)V

    .line 613
    const-string v0, "model_name"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintDeviceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintDeviceFragment;->mPreference_model_name:Landroid/preference/Preference;

    .line 614
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintDeviceFragment;->mPreference_model_name:Landroid/preference/Preference;

    new-instance v1, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintDeviceFragment$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintDeviceFragment$1;-><init>(Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintDeviceFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 621
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 5
    .parameter "pref"
    .parameter "newValue"

    .prologue
    .line 657
    if-nez p1, :cond_b

    .line 658
    const-string v0, "MobilePrint"

    const-string v1, "PrintDeviceFragment : onPreferenceChange() - pref is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    const/4 v0, 0x0

    .line 664
    .end local p2
    :goto_a
    return v0

    .line 662
    .restart local p2
    :cond_b
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {p1, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 664
    const/4 v0, 0x1

    goto :goto_a
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 638
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 639
    invoke-direct {p0}, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintDeviceFragment;->updatePreferenceSummary()V

    .line 640
    return-void
.end method
