.class public Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;
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
    name = "PrintSettingsFragment"
.end annotation


# instance fields
.field private mParentActivity:Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;

.field private mPreference_color_mode:Landroid/preference/ListPreference;

.field private mPreference_copy:Lcom/sec/android/app/mobileprint/MPrintNumberPickerPreference;

.field private mPreference_duplex_mode:Landroid/preference/ListPreference;

.field private mPreference_orientation:Landroid/preference/ListPreference;

.field private mPreference_size:Landroid/preference/ListPreference;

.field private mPreference_type:Landroid/preference/ListPreference;

.field private mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

.field private mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 684
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 686
    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mParentActivity:Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;

    .line 687
    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    .line 688
    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    .line 689
    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPreference_copy:Lcom/sec/android/app/mobileprint/MPrintNumberPickerPreference;

    .line 690
    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPreference_size:Landroid/preference/ListPreference;

    .line 691
    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPreference_orientation:Landroid/preference/ListPreference;

    .line 692
    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPreference_type:Landroid/preference/ListPreference;

    .line 693
    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPreference_color_mode:Landroid/preference/ListPreference;

    .line 694
    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPreference_duplex_mode:Landroid/preference/ListPreference;

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 684
    invoke-direct {p0}, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->getSettingValues()Z

    move-result v0

    return v0
.end method

.method private getSettingValues()Z
    .registers 13

    .prologue
    const/4 v11, 0x2

    const/16 v10, 0x3e7

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 869
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    if-eqz v5, :cond_51

    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPreference_copy:Lcom/sec/android/app/mobileprint/MPrintNumberPickerPreference;

    invoke-virtual {v5}, Lcom/sec/android/app/mobileprint/MPrintNumberPickerPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_51

    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPreference_size:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_51

    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPreference_orientation:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_51

    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPreference_orientation:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_51

    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPreference_type:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_51

    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPreference_color_mode:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_51

    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPreference_color_mode:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_51

    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPreference_duplex_mode:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_51

    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPreference_duplex_mode:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_53

    :cond_51
    move v6, v7

    .line 961
    :goto_52
    return v6

    .line 884
    :cond_53
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget-object v8, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    iget-object v8, v8, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mModelName:Ljava/lang/String;

    iput-object v8, v5, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mDevice:Ljava/lang/String;

    .line 885
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget-object v8, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    iget v8, v8, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mConnectedType:I

    iput v8, v5, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mConnectedType:I

    .line 886
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget-object v8, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    iget-object v8, v8, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mIPAddr:Ljava/lang/String;

    iput-object v8, v5, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mIPAddr:Ljava/lang/String;

    .line 887
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget-object v8, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    iget v8, v8, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mColorModel:I

    iput v8, v5, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mColorModel:I

    .line 888
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget-object v8, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    iget-object v8, v8, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mLanguages:Ljava/util/ArrayList;

    iput-object v8, v5, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mLanguages:Ljava/util/ArrayList;

    .line 891
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPreference_copy:Lcom/sec/android/app/mobileprint/MPrintNumberPickerPreference;

    invoke-virtual {v5}, Lcom/sec/android/app/mobileprint/MPrintNumberPickerPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    const-string v8, ""

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_92

    .line 892
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPreference_copy:Lcom/sec/android/app/mobileprint/MPrintNumberPickerPreference;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/sec/android/app/mobileprint/MPrintNumberPickerPreference;->setValue(Ljava/lang/String;)V

    .line 894
    :cond_92
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget-object v8, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPreference_copy:Lcom/sec/android/app/mobileprint/MPrintNumberPickerPreference;

    invoke-virtual {v8}, Lcom/sec/android/app/mobileprint/MPrintNumberPickerPreference;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    double-to-int v8, v8

    iput v8, v5, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mNumberOfCopy:I

    .line 895
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget v5, v5, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mNumberOfCopy:I

    if-ge v5, v6, :cond_fe

    .line 896
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iput v6, v5, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mNumberOfCopy:I

    .line 897
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPreference_copy:Lcom/sec/android/app/mobileprint/MPrintNumberPickerPreference;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/sec/android/app/mobileprint/MPrintNumberPickerPreference;->setValue(Ljava/lang/String;)V

    .line 905
    :cond_b4
    :goto_b4
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    new-instance v8, Ljava/lang/String;

    iget-object v9, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPreference_size:Landroid/preference/ListPreference;

    invoke-virtual {v9}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v8, v5, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPaperName:Ljava/lang/String;

    .line 906
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    iget-object v5, v5, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mPaperSizes:[Lcom/sec/android/app/mobileprint/MPrintPrinterItem$PaperInfo;

    if-eqz v5, :cond_112

    .line 907
    const/4 v1, 0x0

    .local v1, i:I
    :goto_ca
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    iget-object v5, v5, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mPaperSizes:[Lcom/sec/android/app/mobileprint/MPrintPrinterItem$PaperInfo;

    array-length v5, v5

    if-ge v1, v5, :cond_11a

    .line 908
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget-object v5, v5, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPaperName:Ljava/lang/String;

    iget-object v8, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    iget-object v8, v8, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mPaperSizes:[Lcom/sec/android/app/mobileprint/MPrintPrinterItem$PaperInfo;

    aget-object v8, v8, v1

    iget-object v8, v8, Lcom/sec/android/app/mobileprint/MPrintPrinterItem$PaperInfo;->mName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v5, v6, :cond_fb

    .line 909
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget-object v8, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    iget-object v8, v8, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mPaperSizes:[Lcom/sec/android/app/mobileprint/MPrintPrinterItem$PaperInfo;

    aget-object v8, v8, v1

    iget v8, v8, Lcom/sec/android/app/mobileprint/MPrintPrinterItem$PaperInfo;->mWidth:I

    iput v8, v5, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPaperWidth:I

    .line 910
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget-object v8, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    iget-object v8, v8, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mPaperSizes:[Lcom/sec/android/app/mobileprint/MPrintPrinterItem$PaperInfo;

    aget-object v8, v8, v1

    iget v8, v8, Lcom/sec/android/app/mobileprint/MPrintPrinterItem$PaperInfo;->mHeight:I

    iput v8, v5, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPaperHeight:I

    .line 907
    :cond_fb
    add-int/lit8 v1, v1, 0x1

    goto :goto_ca

    .line 899
    .end local v1           #i:I
    :cond_fe
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget v5, v5, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mNumberOfCopy:I

    if-le v5, v10, :cond_b4

    .line 900
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iput v10, v5, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mNumberOfCopy:I

    .line 901
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPreference_copy:Lcom/sec/android/app/mobileprint/MPrintNumberPickerPreference;

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/sec/android/app/mobileprint/MPrintNumberPickerPreference;->setValue(Ljava/lang/String;)V

    goto :goto_b4

    .line 915
    :cond_112
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iput v7, v5, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPaperWidth:I

    .line 916
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iput v7, v5, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPaperHeight:I

    .line 918
    :cond_11a
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget v5, v5, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPaperWidth:I

    if-eqz v5, :cond_126

    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget v5, v5, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPaperHeight:I

    if-nez v5, :cond_13a

    .line 919
    :cond_126
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget-object v5, v5, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPaperName:Ljava/lang/String;

    invoke-static {v5}, Lcom/sec/android/app/mobileprint/MPrintCommon;->getDefaultPaperSize(Ljava/lang/String;)[I

    move-result-object v4

    .line 920
    .local v4, paperSize:[I
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    aget v8, v4, v7

    iput v8, v5, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPaperWidth:I

    .line 921
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    aget v8, v4, v6

    iput v8, v5, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPaperHeight:I

    .line 925
    .end local v4           #paperSize:[I
    :cond_13a
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget v2, v5, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPaperOrientation:I

    .line 926
    .local v2, oldPaperOrientation:I
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPreference_orientation:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 927
    .local v3, orientation:Ljava/lang/String;
    const-string v5, "auto"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19b

    .line 928
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iput v11, v5, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPaperOrientation:I

    .line 929
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    const/4 v8, -0x1

    iput v8, v5, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPrintOrientation:I

    .line 939
    :goto_155
    if-ne v2, v6, :cond_15d

    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget v5, v5, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPaperOrientation:I

    if-ne v5, v6, :cond_165

    :cond_15d
    if-eq v2, v6, :cond_16a

    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget v5, v5, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPaperOrientation:I

    if-ne v5, v6, :cond_16a

    .line 942
    :cond_165
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mParentActivity:Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;

    invoke-virtual {v5, v6}, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->setFlagToEncodeImage(Z)V

    .line 946
    :cond_16a
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget-object v8, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPreference_type:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPaperType:Ljava/lang/String;

    .line 947
    iget-object v8, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPreference_color_mode:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    const-string v9, "color"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b5

    move v5, v6

    :goto_185
    iput v5, v8, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mColorPrint:I

    .line 950
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPreference_duplex_mode:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 951
    .local v0, duplex:Ljava/lang/String;
    const-string v5, "duplex_short"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b7

    .line 952
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iput v11, v5, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mDuplexPrint:I

    goto/16 :goto_52

    .line 931
    .end local v0           #duplex:Ljava/lang/String;
    :cond_19b
    const-string v5, "landscape"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1ac

    .line 932
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iput v6, v5, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPaperOrientation:I

    .line 933
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iput v6, v5, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPrintOrientation:I

    goto :goto_155

    .line 936
    :cond_1ac
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iput v7, v5, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPaperOrientation:I

    .line 937
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iput v7, v5, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPrintOrientation:I

    goto :goto_155

    :cond_1b5
    move v5, v7

    .line 947
    goto :goto_185

    .line 954
    .restart local v0       #duplex:Ljava/lang/String;
    :cond_1b7
    const-string v5, "duplex_long"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c5

    .line 955
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iput v6, v5, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mDuplexPrint:I

    goto/16 :goto_52

    .line 958
    :cond_1c5
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iput v7, v5, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mDuplexPrint:I

    goto/16 :goto_52
.end method

.method private makeupPreferenceEntries()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 782
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPreference_copy:Lcom/sec/android/app/mobileprint/MPrintNumberPickerPreference;

    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget v4, v4, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mNumberOfCopy:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/mobileprint/MPrintNumberPickerPreference;->setValue(Ljava/lang/String;)V

    .line 785
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    if-eqz v3, :cond_ad

    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    iget-object v3, v3, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mPaperSizes:[Lcom/sec/android/app/mobileprint/MPrintPrinterItem$PaperInfo;

    if-eqz v3, :cond_ad

    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    iget-object v3, v3, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mPaperSizes:[Lcom/sec/android/app/mobileprint/MPrintPrinterItem$PaperInfo;

    array-length v3, v3

    if-lez v3, :cond_ad

    .line 786
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    iget-object v3, v3, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mPaperSizes:[Lcom/sec/android/app/mobileprint/MPrintPrinterItem$PaperInfo;

    array-length v3, v3

    new-array v1, v3, [Ljava/lang/String;

    .line 787
    .local v1, paperNames:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_28
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    iget-object v3, v3, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mPaperSizes:[Lcom/sec/android/app/mobileprint/MPrintPrinterItem$PaperInfo;

    array-length v3, v3

    if-ge v0, v3, :cond_3c

    .line 788
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    iget-object v3, v3, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mPaperSizes:[Lcom/sec/android/app/mobileprint/MPrintPrinterItem$PaperInfo;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/sec/android/app/mobileprint/MPrintPrinterItem$PaperInfo;->mName:Ljava/lang/String;

    aput-object v3, v1, v0

    .line 787
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 790
    :cond_3c
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPreference_size:Landroid/preference/ListPreference;

    invoke-virtual {v3, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 791
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPreference_size:Landroid/preference/ListPreference;

    invoke-virtual {v3, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 792
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPreference_size:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget-object v4, v4, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPaperName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 797
    .end local v0           #i:I
    .end local v1           #paperNames:[Ljava/lang/String;
    :cond_4f
    :goto_4f
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPreference_size:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    if-nez v3, :cond_5c

    .line 798
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPreference_size:Landroid/preference/ListPreference;

    invoke-virtual {v3, v6}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 802
    :cond_5c
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget v3, v3, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPaperOrientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_bd

    .line 803
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPreference_orientation:Landroid/preference/ListPreference;

    const-string v4, "auto"

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 813
    :goto_6a
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    if-eqz v3, :cond_140

    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    iget-object v3, v3, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mPaperTypes:Ljava/util/ArrayList;

    if-eqz v3, :cond_140

    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    iget-object v3, v3, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mPaperTypes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_140

    .line 814
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 815
    .local v2, paperTypeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_84
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    iget-object v3, v3, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mPaperTypes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_119

    .line 816
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    iget-object v3, v3, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mPaperTypes:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "Normal"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d3

    .line 817
    const v3, 0x7f08001f

    invoke-virtual {p0, v3}, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 815
    :goto_aa
    add-int/lit8 v0, v0, 0x1

    goto :goto_84

    .line 794
    .end local v0           #i:I
    .end local v2           #paperTypeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_ad
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget-object v3, v3, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPaperName:Ljava/lang/String;

    if-eqz v3, :cond_4f

    .line 795
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPreference_size:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget-object v4, v4, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPaperName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_4f

    .line 805
    :cond_bd
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget v3, v3, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPaperOrientation:I

    if-ne v3, v7, :cond_cb

    .line 806
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPreference_orientation:Landroid/preference/ListPreference;

    const-string v4, "landscape"

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_6a

    .line 809
    :cond_cb
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPreference_orientation:Landroid/preference/ListPreference;

    const-string v4, "portrait"

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_6a

    .line 819
    .restart local v0       #i:I
    .restart local v2       #paperTypeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_d3
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    iget-object v3, v3, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mPaperTypes:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "Thick"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f0

    .line 820
    const v3, 0x7f080020

    invoke-virtual {p0, v3}, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_aa

    .line 822
    :cond_f0
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    iget-object v3, v3, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mPaperTypes:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "Thin"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10d

    .line 823
    const v3, 0x7f080021

    invoke-virtual {p0, v3}, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_aa

    .line 826
    :cond_10d
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    iget-object v3, v3, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mPaperTypes:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_aa

    .line 829
    :cond_119
    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPreference_type:Landroid/preference/ListPreference;

    new-array v3, v6, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/CharSequence;

    invoke-virtual {v4, v3}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 830
    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPreference_type:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    iget-object v3, v3, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mPaperTypes:Ljava/util/ArrayList;

    new-array v5, v6, [Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/CharSequence;

    invoke-virtual {v4, v3}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 831
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPreference_type:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget-object v4, v4, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPaperType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 833
    .end local v0           #i:I
    .end local v2           #paperTypeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_140
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPreference_type:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    if-nez v3, :cond_14d

    .line 834
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPreference_type:Landroid/preference/ListPreference;

    invoke-virtual {v3, v6}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 838
    :cond_14d
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    if-eqz v3, :cond_17e

    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    iget v3, v3, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mColorModel:I

    if-ne v3, v7, :cond_17e

    .line 839
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPreference_color_mode:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget v4, v4, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mColorPrint:I

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 840
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPreference_color_mode:Landroid/preference/ListPreference;

    invoke-virtual {v3, v7}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 848
    :goto_165
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    if-eqz v3, :cond_189

    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    iget v3, v3, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mDuplexModel:I

    if-eqz v3, :cond_189

    .line 850
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPreference_duplex_mode:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget v4, v4, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mDuplexPrint:I

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 851
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPreference_duplex_mode:Landroid/preference/ListPreference;

    invoke-virtual {v3, v7}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 857
    :goto_17d
    return-void

    .line 843
    :cond_17e
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPreference_color_mode:Landroid/preference/ListPreference;

    invoke-virtual {v3, v6}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 844
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPreference_color_mode:Landroid/preference/ListPreference;

    invoke-virtual {v3, v6}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_165

    .line 854
    :cond_189
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPreference_duplex_mode:Landroid/preference/ListPreference;

    invoke-virtual {v3, v6}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 855
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPreference_duplex_mode:Landroid/preference/ListPreference;

    invoke-virtual {v3, v6}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_17d
.end method

.method private updatePreferenceSummary()V
    .registers 4

    .prologue
    const v2, 0x7f080025

    .line 860
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPreference_copy:Lcom/sec/android/app/mobileprint/MPrintNumberPickerPreference;

    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPreference_copy:Lcom/sec/android/app/mobileprint/MPrintNumberPickerPreference;

    invoke-virtual {v1}, Lcom/sec/android/app/mobileprint/MPrintNumberPickerPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/mobileprint/MPrintNumberPickerPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 861
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPreference_size:Landroid/preference/ListPreference;

    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPreference_size:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_64

    invoke-virtual {p0, v2}, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1c
    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 862
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPreference_orientation:Landroid/preference/ListPreference;

    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPreference_orientation:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_6b

    invoke-virtual {p0, v2}, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2d
    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 863
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPreference_type:Landroid/preference/ListPreference;

    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPreference_type:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_72

    invoke-virtual {p0, v2}, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_3e
    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 864
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPreference_color_mode:Landroid/preference/ListPreference;

    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPreference_color_mode:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_79

    invoke-virtual {p0, v2}, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_4f
    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 865
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPreference_duplex_mode:Landroid/preference/ListPreference;

    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPreference_duplex_mode:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_80

    invoke-virtual {p0, v2}, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_60
    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 866
    return-void

    .line 861
    :cond_64
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPreference_size:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1c

    .line 862
    :cond_6b
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPreference_orientation:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_2d

    .line 863
    :cond_72
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPreference_type:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_3e

    .line 864
    :cond_79
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPreference_color_mode:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_4f

    .line 865
    :cond_80
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPreference_duplex_mode:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_60
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 731
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 733
    invoke-virtual {p0}, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;

    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mParentActivity:Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;

    .line 734
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mParentActivity:Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->getPrinterInfo()Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    .line 735
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mParentActivity:Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->getPrintJobInfo()Lcom/sec/android/app/mobileprint/MPrintJobItem;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    .line 736
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    if-nez v0, :cond_30

    .line 737
    :cond_23
    const-string v0, "MobilePrint"

    const-string v1, "PrintSettingsFragment : mPrinterInfo or mPrintJob is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mParentActivity:Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->finish()V

    .line 743
    :goto_2f
    return-void

    .line 742
    :cond_30
    invoke-direct {p0}, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->makeupPreferenceEntries()V

    goto :goto_2f
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 699
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 701
    const v0, 0x7f040002

    invoke-virtual {p0, v0}, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->addPreferencesFromResource(I)V

    .line 704
    const-string v0, "number_of_copy"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/mobileprint/MPrintNumberPickerPreference;

    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPreference_copy:Lcom/sec/android/app/mobileprint/MPrintNumberPickerPreference;

    .line 706
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPreference_copy:Lcom/sec/android/app/mobileprint/MPrintNumberPickerPreference;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/mobileprint/MPrintNumberPickerPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 709
    const-string v0, "paper_size"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPreference_size:Landroid/preference/ListPreference;

    .line 710
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPreference_size:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 713
    const-string v0, "paper_orientation"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPreference_orientation:Landroid/preference/ListPreference;

    .line 714
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPreference_orientation:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 717
    const-string v0, "paper_type"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPreference_type:Landroid/preference/ListPreference;

    .line 718
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPreference_type:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 721
    const-string v0, "color_mode"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPreference_color_mode:Landroid/preference/ListPreference;

    .line 722
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPreference_color_mode:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 725
    const-string v0, "duplex_mode"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPreference_duplex_mode:Landroid/preference/ListPreference;

    .line 726
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->mPreference_duplex_mode:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 727
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 6
    .parameter "pref"
    .parameter "newValue"

    .prologue
    .line 758
    if-nez p1, :cond_b

    .line 759
    const-string v1, "MobilePrint"

    const-string v2, "PrintSettingsFragment : onPreferenceChange() - pref is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    const/4 v1, 0x0

    .line 777
    .end local p2
    :goto_a
    return v1

    .line 763
    .restart local p2
    :cond_b
    instance-of v1, p1, Landroid/preference/ListPreference;

    if-eqz v1, :cond_33

    move-object v1, p1

    .line 764
    check-cast v1, Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v1, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .local v0, index:I
    move-object v1, p1

    .line 765
    check-cast v1, Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 771
    .end local v0           #index:I
    :goto_24
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment$1;-><init>(Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 777
    const/4 v1, 0x1

    goto :goto_a

    .line 768
    .restart local p2
    :cond_33
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {p1, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_24
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 747
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 748
    invoke-direct {p0}, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->updatePreferenceSummary()V

    .line 749
    return-void
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 753
    invoke-direct {p0}, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->getSettingValues()Z

    .line 754
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    .line 755
    return-void
.end method
