.class public Lcom/sec/android/app/mobileprint/MPrintSettingActivity;
.super Landroid/preference/PreferenceActivity;
.source "MPrintSettingActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/mobileprint/MPrintSettingActivity$EncoderCallback;,
        Lcom/sec/android/app/mobileprint/MPrintSettingActivity$PreparePrintTask;
    }
.end annotation


# static fields
.field private static final REQUEST_PREVIEW_MODE:I = 0x3ea

.field private static final REQUEST_SELECT_PRINTER:I = 0x3e9


# instance fields
.field private mAppContext:Landroid/content/Context;

.field private mBoundService:Lcom/sec/android/app/mobileprint/MPrintMainService;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mIntentSubject:Ljava/lang/String;

.field private mIntentText:Ljava/lang/String;

.field private mIsEncodingImage:Z

.field private mIsNeedEncodeImage:Z

.field private mPreference_color_mode:Landroid/preference/ListPreference;

.field private mPreference_copy:Lcom/sec/android/app/mobileprint/MPrintNumberPickerPreference;

.field private mPreference_duplex_mode:Landroid/preference/ListPreference;

.field private mPreference_model_name:Landroid/preference/Preference;

.field private mPreference_orientation:Landroid/preference/ListPreference;

.field private mPreference_size:Landroid/preference/ListPreference;

.field private mPreference_type:Landroid/preference/ListPreference;

.field private mPrintButton:Landroid/widget/Button;

.field private mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

.field private mPrintMenu:Landroid/view/MenuItem;

.field private mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

.field private mProgressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 55
    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mAppContext:Landroid/content/Context;

    .line 56
    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mBoundService:Lcom/sec/android/app/mobileprint/MPrintMainService;

    .line 57
    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mConnection:Landroid/content/ServiceConnection;

    .line 59
    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mIntentSubject:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mIntentText:Ljava/lang/String;

    .line 61
    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    .line 62
    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    .line 64
    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPreference_model_name:Landroid/preference/Preference;

    .line 65
    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPreference_copy:Lcom/sec/android/app/mobileprint/MPrintNumberPickerPreference;

    .line 66
    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPreference_size:Landroid/preference/ListPreference;

    .line 67
    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPreference_orientation:Landroid/preference/ListPreference;

    .line 68
    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPreference_type:Landroid/preference/ListPreference;

    .line 69
    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPreference_color_mode:Landroid/preference/ListPreference;

    .line 70
    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPreference_duplex_mode:Landroid/preference/ListPreference;

    .line 72
    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrintButton:Landroid/widget/Button;

    .line 73
    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrintMenu:Landroid/view/MenuItem;

    .line 75
    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 77
    iput-boolean v1, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mIsNeedEncodeImage:Z

    .line 78
    iput-boolean v1, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mIsEncodingImage:Z

    .line 744
    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/app/mobileprint/MPrintSettingActivity;Lcom/sec/android/app/mobileprint/MPrintMainService;)Lcom/sec/android/app/mobileprint/MPrintMainService;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mBoundService:Lcom/sec/android/app/mobileprint/MPrintMainService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/mobileprint/MPrintSettingActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->preparePrint()V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/app/mobileprint/MPrintSettingActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->startPrint()V

    return-void
.end method

.method static synthetic access$1102(Lcom/sec/android/app/mobileprint/MPrintSettingActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mIsEncodingImage:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/mobileprint/MPrintSettingActivity;)Landroid/content/Intent;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->getResultIntentData()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/mobileprint/MPrintSettingActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->gotoSelectActivity()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/mobileprint/MPrintSettingActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mIsNeedEncodeImage:Z

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/mobileprint/MPrintSettingActivity;)Lcom/sec/android/app/mobileprint/MPrintJobItem;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/mobileprint/MPrintSettingActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->encodeImage()V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/app/mobileprint/MPrintSettingActivity;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$902(Lcom/sec/android/app/mobileprint/MPrintSettingActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method private encodeImage()V
    .registers 6

    .prologue
    .line 645
    const-string v0, "MobilePrint"

    const-string v1, "MPrintSettingActivity : encodeImage()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    iget-boolean v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mIsEncodingImage:Z

    if-nez v0, :cond_24

    .line 647
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mIsEncodingImage:Z

    .line 648
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mAppContext:Landroid/content/Context;

    new-instance v1, Lcom/sec/android/app/mobileprint/MPrintSettingActivity$EncoderCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/mobileprint/MPrintSettingActivity$EncoderCallback;-><init>(Lcom/sec/android/app/mobileprint/MPrintSettingActivity;Lcom/sec/android/app/mobileprint/MPrintSettingActivity$1;)V

    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mIntentSubject:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mIntentText:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget v4, v4, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPaperOrientation:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sec/android/app/mobileprint/MPrintImageEncoder;->encode(Landroid/content/Context;Lcom/sec/android/app/mobileprint/MPrintImageEncoder$Callback;Ljava/lang/String;Ljava/lang/String;I)V

    .line 649
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mIsNeedEncodeImage:Z

    .line 651
    :cond_24
    return-void
.end method

.method private getIntentData(Landroid/content/Intent;)V
    .registers 3
    .parameter "intent"

    .prologue
    .line 371
    const-string v0, "Subject"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mIntentSubject:Ljava/lang/String;

    .line 372
    const-string v0, "Text"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mIntentText:Ljava/lang/String;

    .line 373
    const-string v0, "PrinterInfo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    .line 374
    const-string v0, "PrintJobInfo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    .line 375
    return-void
.end method

.method private getResultIntentData()Landroid/content/Intent;
    .registers 4

    .prologue
    .line 568
    invoke-direct {p0}, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->getSettingValues()Z

    .line 569
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 570
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "PrinterInfo"

    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 571
    const-string v1, "PrintJobInfo"

    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 572
    return-object v0
.end method

.method private getSettingValues()Z
    .registers 13

    .prologue
    const/4 v11, 0x2

    const/16 v10, 0x3e7

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 472
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    if-eqz v5, :cond_51

    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPreference_copy:Lcom/sec/android/app/mobileprint/MPrintNumberPickerPreference;

    invoke-virtual {v5}, Lcom/sec/android/app/mobileprint/MPrintNumberPickerPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_51

    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPreference_size:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_51

    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPreference_orientation:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_51

    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPreference_orientation:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_51

    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPreference_type:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_51

    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPreference_color_mode:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_51

    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPreference_color_mode:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_51

    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPreference_duplex_mode:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_51

    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPreference_duplex_mode:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_53

    :cond_51
    move v6, v7

    .line 564
    :goto_52
    return v6

    .line 487
    :cond_53
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget-object v8, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    iget-object v8, v8, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mModelName:Ljava/lang/String;

    iput-object v8, v5, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mDevice:Ljava/lang/String;

    .line 488
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget-object v8, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    iget v8, v8, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mConnectedType:I

    iput v8, v5, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mConnectedType:I

    .line 489
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget-object v8, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    iget-object v8, v8, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mIPAddr:Ljava/lang/String;

    iput-object v8, v5, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mIPAddr:Ljava/lang/String;

    .line 490
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget-object v8, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    iget v8, v8, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mColorModel:I

    iput v8, v5, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mColorModel:I

    .line 491
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget-object v8, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    iget-object v8, v8, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mLanguages:Ljava/util/ArrayList;

    iput-object v8, v5, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mLanguages:Ljava/util/ArrayList;

    .line 494
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPreference_copy:Lcom/sec/android/app/mobileprint/MPrintNumberPickerPreference;

    invoke-virtual {v5}, Lcom/sec/android/app/mobileprint/MPrintNumberPickerPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    const-string v8, ""

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_92

    .line 495
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPreference_copy:Lcom/sec/android/app/mobileprint/MPrintNumberPickerPreference;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/sec/android/app/mobileprint/MPrintNumberPickerPreference;->setValue(Ljava/lang/String;)V

    .line 497
    :cond_92
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget-object v8, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPreference_copy:Lcom/sec/android/app/mobileprint/MPrintNumberPickerPreference;

    invoke-virtual {v8}, Lcom/sec/android/app/mobileprint/MPrintNumberPickerPreference;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    double-to-int v8, v8

    iput v8, v5, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mNumberOfCopy:I

    .line 498
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget v5, v5, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mNumberOfCopy:I

    if-ge v5, v6, :cond_fe

    .line 499
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iput v6, v5, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mNumberOfCopy:I

    .line 500
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPreference_copy:Lcom/sec/android/app/mobileprint/MPrintNumberPickerPreference;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/sec/android/app/mobileprint/MPrintNumberPickerPreference;->setValue(Ljava/lang/String;)V

    .line 508
    :cond_b4
    :goto_b4
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    new-instance v8, Ljava/lang/String;

    iget-object v9, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPreference_size:Landroid/preference/ListPreference;

    invoke-virtual {v9}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v8, v5, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPaperName:Ljava/lang/String;

    .line 509
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    iget-object v5, v5, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mPaperSizes:[Lcom/sec/android/app/mobileprint/MPrintPrinterItem$PaperInfo;

    if-eqz v5, :cond_112

    .line 510
    const/4 v1, 0x0

    .local v1, i:I
    :goto_ca
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    iget-object v5, v5, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mPaperSizes:[Lcom/sec/android/app/mobileprint/MPrintPrinterItem$PaperInfo;

    array-length v5, v5

    if-ge v1, v5, :cond_11a

    .line 511
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget-object v5, v5, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPaperName:Ljava/lang/String;

    iget-object v8, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    iget-object v8, v8, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mPaperSizes:[Lcom/sec/android/app/mobileprint/MPrintPrinterItem$PaperInfo;

    aget-object v8, v8, v1

    iget-object v8, v8, Lcom/sec/android/app/mobileprint/MPrintPrinterItem$PaperInfo;->mName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v5, v6, :cond_fb

    .line 512
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget-object v8, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    iget-object v8, v8, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mPaperSizes:[Lcom/sec/android/app/mobileprint/MPrintPrinterItem$PaperInfo;

    aget-object v8, v8, v1

    iget v8, v8, Lcom/sec/android/app/mobileprint/MPrintPrinterItem$PaperInfo;->mWidth:I

    iput v8, v5, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPaperWidth:I

    .line 513
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget-object v8, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    iget-object v8, v8, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mPaperSizes:[Lcom/sec/android/app/mobileprint/MPrintPrinterItem$PaperInfo;

    aget-object v8, v8, v1

    iget v8, v8, Lcom/sec/android/app/mobileprint/MPrintPrinterItem$PaperInfo;->mHeight:I

    iput v8, v5, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPaperHeight:I

    .line 510
    :cond_fb
    add-int/lit8 v1, v1, 0x1

    goto :goto_ca

    .line 502
    .end local v1           #i:I
    :cond_fe
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget v5, v5, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mNumberOfCopy:I

    if-le v5, v10, :cond_b4

    .line 503
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iput v10, v5, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mNumberOfCopy:I

    .line 504
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPreference_copy:Lcom/sec/android/app/mobileprint/MPrintNumberPickerPreference;

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/sec/android/app/mobileprint/MPrintNumberPickerPreference;->setValue(Ljava/lang/String;)V

    goto :goto_b4

    .line 518
    :cond_112
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iput v7, v5, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPaperWidth:I

    .line 519
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iput v7, v5, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPaperHeight:I

    .line 521
    :cond_11a
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget v5, v5, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPaperWidth:I

    if-eqz v5, :cond_126

    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget v5, v5, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPaperHeight:I

    if-nez v5, :cond_13a

    .line 522
    :cond_126
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget-object v5, v5, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPaperName:Ljava/lang/String;

    invoke-static {v5}, Lcom/sec/android/app/mobileprint/MPrintCommon;->getDefaultPaperSize(Ljava/lang/String;)[I

    move-result-object v4

    .line 523
    .local v4, paperSize:[I
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    aget v8, v4, v7

    iput v8, v5, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPaperWidth:I

    .line 524
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    aget v8, v4, v6

    iput v8, v5, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPaperHeight:I

    .line 528
    .end local v4           #paperSize:[I
    :cond_13a
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget v2, v5, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPaperOrientation:I

    .line 529
    .local v2, oldPaperOrientation:I
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPreference_orientation:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 530
    .local v3, orientation:Ljava/lang/String;
    const-string v5, "auto"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_198

    .line 531
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iput v11, v5, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPaperOrientation:I

    .line 532
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    const/4 v8, -0x1

    iput v8, v5, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPrintOrientation:I

    .line 542
    :goto_155
    if-ne v2, v6, :cond_15d

    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget v5, v5, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPaperOrientation:I

    if-ne v5, v6, :cond_165

    :cond_15d
    if-eq v2, v6, :cond_167

    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget v5, v5, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPaperOrientation:I

    if-ne v5, v6, :cond_167

    .line 545
    :cond_165
    iput-boolean v6, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mIsNeedEncodeImage:Z

    .line 549
    :cond_167
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget-object v8, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPreference_type:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPaperType:Ljava/lang/String;

    .line 550
    iget-object v8, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPreference_color_mode:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    const-string v9, "color"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b2

    move v5, v6

    :goto_182
    iput v5, v8, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mColorPrint:I

    .line 553
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPreference_duplex_mode:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 554
    .local v0, duplex:Ljava/lang/String;
    const-string v5, "duplex_short"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b4

    .line 555
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iput v11, v5, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mDuplexPrint:I

    goto/16 :goto_52

    .line 534
    .end local v0           #duplex:Ljava/lang/String;
    :cond_198
    const-string v5, "landscape"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a9

    .line 535
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iput v6, v5, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPaperOrientation:I

    .line 536
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iput v6, v5, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPrintOrientation:I

    goto :goto_155

    .line 539
    :cond_1a9
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iput v7, v5, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPaperOrientation:I

    .line 540
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iput v7, v5, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPrintOrientation:I

    goto :goto_155

    :cond_1b2
    move v5, v7

    .line 550
    goto :goto_182

    .line 557
    .restart local v0       #duplex:Ljava/lang/String;
    :cond_1b4
    const-string v5, "duplex_long"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c2

    .line 558
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iput v6, v5, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mDuplexPrint:I

    goto/16 :goto_52

    .line 561
    :cond_1c2
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iput v7, v5, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mDuplexPrint:I

    goto/16 :goto_52
.end method

.method private gotoSelectActivity()V
    .registers 4

    .prologue
    .line 576
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 577
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "ReselectMode"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 578
    const/16 v1, 0x3e9

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 579
    return-void
.end method

.method private makeupPreferenceEntries()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 379
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPreference_copy:Lcom/sec/android/app/mobileprint/MPrintNumberPickerPreference;

    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget v4, v4, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mNumberOfCopy:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/mobileprint/MPrintNumberPickerPreference;->setValue(Ljava/lang/String;)V

    .line 382
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    if-eqz v3, :cond_ad

    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    iget-object v3, v3, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mPaperSizes:[Lcom/sec/android/app/mobileprint/MPrintPrinterItem$PaperInfo;

    if-eqz v3, :cond_ad

    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    iget-object v3, v3, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mPaperSizes:[Lcom/sec/android/app/mobileprint/MPrintPrinterItem$PaperInfo;

    array-length v3, v3

    if-lez v3, :cond_ad

    .line 383
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    iget-object v3, v3, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mPaperSizes:[Lcom/sec/android/app/mobileprint/MPrintPrinterItem$PaperInfo;

    array-length v3, v3

    new-array v1, v3, [Ljava/lang/String;

    .line 384
    .local v1, paperNames:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_28
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    iget-object v3, v3, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mPaperSizes:[Lcom/sec/android/app/mobileprint/MPrintPrinterItem$PaperInfo;

    array-length v3, v3

    if-ge v0, v3, :cond_3c

    .line 385
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    iget-object v3, v3, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mPaperSizes:[Lcom/sec/android/app/mobileprint/MPrintPrinterItem$PaperInfo;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/sec/android/app/mobileprint/MPrintPrinterItem$PaperInfo;->mName:Ljava/lang/String;

    aput-object v3, v1, v0

    .line 384
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 387
    :cond_3c
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPreference_size:Landroid/preference/ListPreference;

    invoke-virtual {v3, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 388
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPreference_size:Landroid/preference/ListPreference;

    invoke-virtual {v3, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 389
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPreference_size:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget-object v4, v4, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPaperName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 394
    .end local v0           #i:I
    .end local v1           #paperNames:[Ljava/lang/String;
    :cond_4f
    :goto_4f
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPreference_size:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    if-nez v3, :cond_5c

    .line 395
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPreference_size:Landroid/preference/ListPreference;

    invoke-virtual {v3, v6}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 399
    :cond_5c
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget v3, v3, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPaperOrientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_bd

    .line 400
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPreference_orientation:Landroid/preference/ListPreference;

    const-string v4, "auto"

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 410
    :goto_6a
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    if-eqz v3, :cond_140

    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    iget-object v3, v3, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mPaperTypes:Ljava/util/ArrayList;

    if-eqz v3, :cond_140

    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    iget-object v3, v3, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mPaperTypes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_140

    .line 411
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 412
    .local v2, paperTypeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_84
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    iget-object v3, v3, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mPaperTypes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_119

    .line 413
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    iget-object v3, v3, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mPaperTypes:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "Normal"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d3

    .line 414
    const v3, 0x7f08001f

    invoke-virtual {p0, v3}, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 412
    :goto_aa
    add-int/lit8 v0, v0, 0x1

    goto :goto_84

    .line 391
    .end local v0           #i:I
    .end local v2           #paperTypeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_ad
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget-object v3, v3, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPaperName:Ljava/lang/String;

    if-eqz v3, :cond_4f

    .line 392
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPreference_size:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget-object v4, v4, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPaperName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_4f

    .line 402
    :cond_bd
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget v3, v3, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPaperOrientation:I

    if-ne v3, v7, :cond_cb

    .line 403
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPreference_orientation:Landroid/preference/ListPreference;

    const-string v4, "landscape"

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_6a

    .line 406
    :cond_cb
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPreference_orientation:Landroid/preference/ListPreference;

    const-string v4, "portrait"

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_6a

    .line 416
    .restart local v0       #i:I
    .restart local v2       #paperTypeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_d3
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    iget-object v3, v3, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mPaperTypes:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "Thick"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f0

    .line 417
    const v3, 0x7f080020

    invoke-virtual {p0, v3}, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_aa

    .line 419
    :cond_f0
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    iget-object v3, v3, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mPaperTypes:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "Thin"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10d

    .line 420
    const v3, 0x7f080021

    invoke-virtual {p0, v3}, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_aa

    .line 423
    :cond_10d
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    iget-object v3, v3, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mPaperTypes:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_aa

    .line 426
    :cond_119
    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPreference_type:Landroid/preference/ListPreference;

    new-array v3, v6, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/CharSequence;

    invoke-virtual {v4, v3}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 427
    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPreference_type:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    iget-object v3, v3, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mPaperTypes:Ljava/util/ArrayList;

    new-array v5, v6, [Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/CharSequence;

    invoke-virtual {v4, v3}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 428
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPreference_type:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget-object v4, v4, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPaperType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 430
    .end local v0           #i:I
    .end local v2           #paperTypeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_140
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPreference_type:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    if-nez v3, :cond_14d

    .line 431
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPreference_type:Landroid/preference/ListPreference;

    invoke-virtual {v3, v6}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 435
    :cond_14d
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    if-eqz v3, :cond_17e

    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    iget v3, v3, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mColorModel:I

    if-ne v3, v7, :cond_17e

    .line 436
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPreference_color_mode:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget v4, v4, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mColorPrint:I

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 437
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPreference_color_mode:Landroid/preference/ListPreference;

    invoke-virtual {v3, v7}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 445
    :goto_165
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    if-eqz v3, :cond_189

    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    iget v3, v3, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mDuplexModel:I

    if-eqz v3, :cond_189

    .line 447
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPreference_duplex_mode:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget v4, v4, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mDuplexPrint:I

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 448
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPreference_duplex_mode:Landroid/preference/ListPreference;

    invoke-virtual {v3, v7}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 454
    :goto_17d
    return-void

    .line 440
    :cond_17e
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPreference_color_mode:Landroid/preference/ListPreference;

    invoke-virtual {v3, v6}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 441
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPreference_color_mode:Landroid/preference/ListPreference;

    invoke-virtual {v3, v6}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_165

    .line 451
    :cond_189
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPreference_duplex_mode:Landroid/preference/ListPreference;

    invoke-virtual {v3, v6}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 452
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPreference_duplex_mode:Landroid/preference/ListPreference;

    invoke-virtual {v3, v6}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_17d
.end method

.method private preparePrint()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 582
    const-string v0, "MobilePrint"

    const-string v1, "MPrintSettingActivity : preparePrint()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    invoke-direct {p0}, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->getSettingValues()Z

    move-result v0

    if-nez v0, :cond_21

    .line 584
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mAppContext:Landroid/content/Context;

    const v1, 0x7f08003e

    invoke-virtual {p0, v1}, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 612
    :goto_20
    return-void

    .line 588
    :cond_21
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    invoke-static {v0}, Lcom/sec/android/app/mobileprint/MPrintCommon;->checkPrintJobInfo(Lcom/sec/android/app/mobileprint/MPrintJobItem;)Z

    move-result v0

    if-eqz v0, :cond_82

    .line 589
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget v0, v0, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mConnectedType:I

    if-ne v0, v2, :cond_3f

    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mAppContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/mobileprint/MPrintCommon;->isWifiConnected(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 590
    const/16 v0, 0x67

    invoke-virtual {p0, v0}, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->showDialog(I)V

    goto :goto_20

    .line 594
    :cond_3f
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/mobileprint/MPrintMainService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 596
    new-instance v0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity$6;

    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mAppContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/mobileprint/MPrintSettingActivity$6;-><init>(Lcom/sec/android/app/mobileprint/MPrintSettingActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 602
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f080026

    invoke-virtual {p0, v1}, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 603
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 604
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 605
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 607
    new-instance v0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity$PreparePrintTask;

    invoke-direct {v0, p0, v3}, Lcom/sec/android/app/mobileprint/MPrintSettingActivity$PreparePrintTask;-><init>(Lcom/sec/android/app/mobileprint/MPrintSettingActivity;Lcom/sec/android/app/mobileprint/MPrintSettingActivity$1;)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Void;

    aput-object v3, v1, v4

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/mobileprint/MPrintSettingActivity$PreparePrintTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_20

    .line 610
    :cond_82
    const/16 v0, 0x14d

    invoke-virtual {p0, v0}, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->showDialog(I)V

    goto :goto_20
.end method

.method private startPrint()V
    .registers 4

    .prologue
    .line 615
    const-string v1, "MobilePrint"

    const-string v2, "MPrintSettingActivity : startPrint()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mBoundService:Lcom/sec/android/app/mobileprint/MPrintMainService;

    if-eqz v1, :cond_37

    .line 618
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mBoundService:Lcom/sec/android/app/mobileprint/MPrintMainService;

    invoke-virtual {v1}, Lcom/sec/android/app/mobileprint/MPrintMainService;->isPossiblePrint()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_31

    .line 619
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/mobileprint/MPrintMainService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 620
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "PrintJobInfo"

    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 621
    invoke-virtual {p0, v0}, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 622
    const/4 v1, -0x1

    invoke-direct {p0}, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->getResultIntentData()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->setResult(ILandroid/content/Intent;)V

    .line 623
    invoke-virtual {p0}, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->finish()V

    .line 632
    .end local v0           #intent:Landroid/content/Intent;
    :goto_30
    return-void

    .line 626
    :cond_31
    const/16 v1, 0x131

    invoke-virtual {p0, v1}, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->showDialog(I)V

    goto :goto_30

    .line 630
    :cond_37
    const/16 v1, 0x14d

    invoke-virtual {p0, v1}, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->showDialog(I)V

    goto :goto_30
.end method

.method private updatePreferenceSummary()V
    .registers 4

    .prologue
    const v2, 0x7f080025

    .line 457
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    invoke-static {v0}, Lcom/sec/android/app/mobileprint/MPrintCommon;->checkPrinterInfo(Lcom/sec/android/app/mobileprint/MPrintPrinterItem;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_76

    .line 458
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPreference_model_name:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    iget-object v1, v1, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mModelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 463
    :goto_15
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPreference_copy:Lcom/sec/android/app/mobileprint/MPrintNumberPickerPreference;

    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPreference_copy:Lcom/sec/android/app/mobileprint/MPrintNumberPickerPreference;

    invoke-virtual {v1}, Lcom/sec/android/app/mobileprint/MPrintNumberPickerPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/mobileprint/MPrintNumberPickerPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 464
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPreference_size:Landroid/preference/ListPreference;

    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPreference_size:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_80

    invoke-virtual {p0, v2}, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2e
    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 465
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPreference_orientation:Landroid/preference/ListPreference;

    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPreference_orientation:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_87

    invoke-virtual {p0, v2}, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_3f
    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 466
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPreference_type:Landroid/preference/ListPreference;

    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPreference_type:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_8e

    invoke-virtual {p0, v2}, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_50
    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 467
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPreference_color_mode:Landroid/preference/ListPreference;

    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPreference_color_mode:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_95

    invoke-virtual {p0, v2}, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_61
    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 468
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPreference_duplex_mode:Landroid/preference/ListPreference;

    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPreference_duplex_mode:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_9c

    invoke-virtual {p0, v2}, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_72
    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 469
    return-void

    .line 461
    :cond_76
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPreference_model_name:Landroid/preference/Preference;

    invoke-virtual {p0, v2}, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_15

    .line 464
    :cond_80
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPreference_size:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_2e

    .line 465
    :cond_87
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPreference_orientation:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_3f

    .line 466
    :cond_8e
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPreference_type:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_50

    .line 467
    :cond_95
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPreference_color_mode:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_61

    .line 468
    :cond_9c
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPreference_duplex_mode:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_72
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 205
    const/16 v1, 0x3e9

    if-ne p1, v1, :cond_39

    .line 206
    if-ne p2, v3, :cond_38

    .line 207
    const-string v1, "PrinterInfo"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    .line 208
    .local v0, printerInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;
    invoke-static {v0}, Lcom/sec/android/app/mobileprint/MPrintCommon;->checkPrinterInfo(Lcom/sec/android/app/mobileprint/MPrintPrinterItem;)Z

    move-result v1

    if-ne v1, v2, :cond_38

    .line 209
    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    .line 210
    invoke-direct {p0}, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->makeupPreferenceEntries()V

    .line 211
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrintButton:Landroid/widget/Button;

    if-eqz v1, :cond_24

    .line 212
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrintButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 214
    :cond_24
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrintMenu:Landroid/view/MenuItem;

    if-eqz v1, :cond_38

    .line 215
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrintMenu:Landroid/view/MenuItem;

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 216
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrintMenu:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 226
    .end local v0           #printerInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;
    :cond_38
    :goto_38
    return-void

    .line 221
    :cond_39
    const/16 v1, 0x3ea

    if-ne p1, v1, :cond_38

    .line 222
    if-ne p2, v3, :cond_38

    .line 223
    invoke-virtual {p0}, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->finish()V

    goto :goto_38
.end method

.method public onBackPressed()V
    .registers 3

    .prologue
    .line 349
    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->getResultIntentData()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->setResult(ILandroid/content/Intent;)V

    .line 350
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onBackPressed()V

    .line 351
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter "newConfig"

    .prologue
    .line 337
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 339
    iget v0, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v1, 0x140

    if-ge v0, v1, :cond_e

    .line 340
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPreference_copy:Lcom/sec/android/app/mobileprint/MPrintNumberPickerPreference;

    invoke-virtual {v0}, Lcom/sec/android/app/mobileprint/MPrintNumberPickerPreference;->hideSoftInput()V

    .line 345
    :cond_e
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 87
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    iput-object p0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mAppContext:Landroid/content/Context;

    .line 90
    new-instance v1, Lcom/sec/android/app/mobileprint/MPrintSettingActivity$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/mobileprint/MPrintSettingActivity$1;-><init>(Lcom/sec/android/app/mobileprint/MPrintSettingActivity;)V

    iput-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mConnection:Landroid/content/ServiceConnection;

    .line 102
    invoke-virtual {p0}, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->getIntentData(Landroid/content/Intent;)V

    .line 104
    const v1, 0x7f080004

    invoke-virtual {p0, v1}, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->setTitle(I)V

    .line 107
    const v1, 0x7f030007

    invoke-virtual {p0, v1}, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->setContentView(I)V

    .line 109
    const/high16 v1, 0x7f0c

    invoke-virtual {p0, v1}, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrintButton:Landroid/widget/Button;

    .line 110
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrintButton:Landroid/widget/Button;

    if-eqz v1, :cond_45

    .line 111
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrintButton:Landroid/widget/Button;

    new-instance v2, Lcom/sec/android/app/mobileprint/MPrintSettingActivity$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/mobileprint/MPrintSettingActivity$2;-><init>(Lcom/sec/android/app/mobileprint/MPrintSettingActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    invoke-static {v1}, Lcom/sec/android/app/mobileprint/MPrintCommon;->checkPrinterInfo(Lcom/sec/android/app/mobileprint/MPrintPrinterItem;)Z

    move-result v1

    if-nez v1, :cond_45

    .line 117
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrintButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 120
    :cond_45
    const v1, 0x7f0c0001

    invoke-virtual {p0, v1}, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 121
    .local v0, btn:Landroid/widget/Button;
    if-eqz v0, :cond_5e

    .line 122
    const v1, 0x7f080007

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 123
    new-instance v1, Lcom/sec/android/app/mobileprint/MPrintSettingActivity$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/mobileprint/MPrintSettingActivity$3;-><init>(Lcom/sec/android/app/mobileprint/MPrintSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    :cond_5e
    const/high16 v1, 0x7f04

    invoke-virtual {p0, v1}, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->addPreferencesFromResource(I)V

    .line 140
    const-string v1, "model_name"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPreference_model_name:Landroid/preference/Preference;

    .line 141
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPreference_model_name:Landroid/preference/Preference;

    new-instance v2, Lcom/sec/android/app/mobileprint/MPrintSettingActivity$4;

    invoke-direct {v2, p0}, Lcom/sec/android/app/mobileprint/MPrintSettingActivity$4;-><init>(Lcom/sec/android/app/mobileprint/MPrintSettingActivity;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 150
    const-string v1, "number_of_copy"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/mobileprint/MPrintNumberPickerPreference;

    iput-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPreference_copy:Lcom/sec/android/app/mobileprint/MPrintNumberPickerPreference;

    .line 152
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPreference_copy:Lcom/sec/android/app/mobileprint/MPrintNumberPickerPreference;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/mobileprint/MPrintNumberPickerPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 155
    const-string v1, "paper_size"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPreference_size:Landroid/preference/ListPreference;

    .line 156
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPreference_size:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 159
    const-string v1, "paper_orientation"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPreference_orientation:Landroid/preference/ListPreference;

    .line 160
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPreference_orientation:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 163
    const-string v1, "paper_type"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPreference_type:Landroid/preference/ListPreference;

    .line 164
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPreference_type:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 167
    const-string v1, "color_mode"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPreference_color_mode:Landroid/preference/ListPreference;

    .line 168
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPreference_color_mode:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 171
    const-string v1, "duplex_mode"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPreference_duplex_mode:Landroid/preference/ListPreference;

    .line 172
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPreference_duplex_mode:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 175
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPreference_model_name:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPreference_size:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getWidgetLayoutResource()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    .line 177
    invoke-direct {p0}, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->makeupPreferenceEntries()V

    .line 178
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 9
    .parameter "id"

    .prologue
    const v6, 0x7f08003a

    const v5, 0x108009b

    const/4 v1, 0x0

    const v4, 0x7f080005

    .line 231
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 232
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f080001

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 235
    const/16 v2, 0xc8

    if-ne p1, v2, :cond_52

    .line 236
    const/4 v2, -0x1

    invoke-direct {p0}, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->getResultIntentData()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->setResult(ILandroid/content/Intent;)V

    .line 237
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 238
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 239
    new-instance v2, Lcom/sec/android/app/mobileprint/MPrintSettingActivity$5;

    invoke-direct {v2, p0}, Lcom/sec/android/app/mobileprint/MPrintSettingActivity$5;-><init>(Lcom/sec/android/app/mobileprint/MPrintSettingActivity;)V

    invoke-virtual {v0, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 255
    :goto_30
    sparse-switch p1, :sswitch_data_b2

    .line 290
    const-string v2, "MobilePrint"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MPrintSettingActivity : unknown Dialog ID("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :goto_51
    return-object v1

    .line 245
    :cond_52
    const/16 v2, 0xc9

    if-ne p1, v2, :cond_5d

    .line 246
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 247
    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_30

    .line 250
    :cond_5d
    const v2, 0x1080027

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 251
    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_30

    .line 257
    :sswitch_67
    const v1, 0x7f08002c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 294
    :goto_6d
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_51

    .line 260
    :sswitch_72
    const v1, 0x7f08002d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_6d

    .line 263
    :sswitch_79
    const v1, 0x7f080030

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_6d

    .line 266
    :sswitch_80
    const v1, 0x7f080031

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_6d

    .line 269
    :sswitch_87
    const v1, 0x7f080032

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_6d

    .line 272
    :sswitch_8e
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_6d

    .line 275
    :sswitch_92
    const v1, 0x7f080034

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_6d

    .line 278
    :sswitch_99
    const v1, 0x7f080035

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_6d

    .line 281
    :sswitch_a0
    const v1, 0x7f080036

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_6d

    .line 284
    :sswitch_a7
    const v1, 0x7f080039

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_6d

    .line 287
    :sswitch_ae
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_6d

    .line 255
    :sswitch_data_b2
    .sparse-switch
        0x67 -> :sswitch_a7
        0x68 -> :sswitch_ae
        0xc8 -> :sswitch_67
        0xc9 -> :sswitch_72
        0x12d -> :sswitch_79
        0x12e -> :sswitch_80
        0x12f -> :sswitch_87
        0x130 -> :sswitch_8e
        0x131 -> :sswitch_92
        0x132 -> :sswitch_99
        0x14d -> :sswitch_a0
    .end sparse-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter "menu"

    .prologue
    .line 319
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mBoundService:Lcom/sec/android/app/mobileprint/MPrintMainService;

    if-eqz v0, :cond_9

    .line 189
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 191
    :cond_9
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 192
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 324
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_16

    .line 332
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_c
    return v0

    .line 326
    :sswitch_d
    invoke-virtual {p0}, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->onBackPressed()V

    goto :goto_c

    .line 329
    :sswitch_11
    invoke-direct {p0}, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->preparePrint()V

    goto :goto_c

    .line 324
    nop

    :sswitch_data_16
    .sparse-switch
        0x102002c -> :sswitch_d
        0x7f0c0020 -> :sswitch_11
    .end sparse-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 6
    .parameter "pref"
    .parameter "newValue"

    .prologue
    .line 354
    if-nez p1, :cond_b

    .line 355
    const-string v1, "MobilePrint"

    const-string v2, "MPrintSettingActivity : onPreferenceChange() - pref is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    const/4 v1, 0x0

    .line 367
    .end local p2
    :goto_a
    return v1

    .line 359
    .restart local p2
    :cond_b
    instance-of v1, p1, Landroid/preference/ListPreference;

    if-eqz v1, :cond_26

    move-object v1, p1

    .line 360
    check-cast v1, Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v1, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .local v0, index:I
    move-object v1, p1

    .line 361
    check-cast v1, Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 367
    .end local v0           #index:I
    :goto_24
    const/4 v1, 0x1

    goto :goto_a

    .line 364
    .restart local p2
    :cond_26
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {p1, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_24
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 182
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 183
    invoke-direct {p0}, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->updatePreferenceSummary()V

    .line 184
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .parameter "outState"

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->getSettingValues()Z

    .line 197
    invoke-virtual {p0}, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 198
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "PrinterInfo"

    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 199
    const-string v1, "PrintJobInfo"

    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 200
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 201
    return-void
.end method
