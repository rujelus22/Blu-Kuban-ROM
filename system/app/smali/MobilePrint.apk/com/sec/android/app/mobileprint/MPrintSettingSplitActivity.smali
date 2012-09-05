.class public Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;
.super Landroid/preference/PreferenceActivity;
.source "MPrintSettingSplitActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;,
        Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintDeviceFragment;,
        Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$EncoderCallback;,
        Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PreparePrintTask;
    }
.end annotation


# instance fields
.field private mAppContext:Landroid/content/Context;

.field private mBoundService:Lcom/sec/android/app/mobileprint/MPrintMainService;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mIntentSubject:Ljava/lang/String;

.field private mIntentText:Ljava/lang/String;

.field private mIsEncodingImage:Z

.field private mIsNeedEncodeImage:Z

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

    .line 52
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 54
    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->mAppContext:Landroid/content/Context;

    .line 55
    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->mBoundService:Lcom/sec/android/app/mobileprint/MPrintMainService;

    .line 56
    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->mConnection:Landroid/content/ServiceConnection;

    .line 58
    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->mIntentSubject:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->mIntentText:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    .line 61
    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    .line 63
    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->mPrintMenu:Landroid/view/MenuItem;

    .line 65
    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 67
    iput-boolean v1, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->mIsNeedEncodeImage:Z

    .line 68
    iput-boolean v1, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->mIsEncodingImage:Z

    .line 684
    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;Lcom/sec/android/app/mobileprint/MPrintMainService;)Lcom/sec/android/app/mobileprint/MPrintMainService;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->mBoundService:Lcom/sec/android/app/mobileprint/MPrintMainService;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->mIsNeedEncodeImage:Z

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;)Lcom/sec/android/app/mobileprint/MPrintJobItem;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->encodeImage()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$602(Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$700(Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->startPrint()V

    return-void
.end method

.method static synthetic access$802(Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->mIsEncodingImage:Z

    return p1
.end method

.method private encodeImage()V
    .registers 6

    .prologue
    .line 362
    const-string v0, "MobilePrint"

    const-string v1, "MPrintSettingSplitActivity : encodeImage()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget-boolean v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->mIsEncodingImage:Z

    if-nez v0, :cond_24

    .line 364
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->mIsEncodingImage:Z

    .line 365
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->mAppContext:Landroid/content/Context;

    new-instance v1, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$EncoderCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$EncoderCallback;-><init>(Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$1;)V

    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->mIntentSubject:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->mIntentText:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget v4, v4, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPaperOrientation:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sec/android/app/mobileprint/MPrintImageEncoder;->encode(Landroid/content/Context;Lcom/sec/android/app/mobileprint/MPrintImageEncoder$Callback;Ljava/lang/String;Ljava/lang/String;I)V

    .line 366
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->mIsNeedEncodeImage:Z

    .line 368
    :cond_24
    return-void
.end method

.method private getIntentData(Landroid/content/Intent;)V
    .registers 3
    .parameter "intent"

    .prologue
    .line 266
    const-string v0, "Subject"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->mIntentSubject:Ljava/lang/String;

    .line 267
    const-string v0, "Text"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->mIntentText:Ljava/lang/String;

    .line 268
    const-string v0, "PrinterInfo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    .line 269
    const-string v0, "PrintJobInfo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    .line 270
    return-void
.end method

.method private getResultIntentData()Landroid/content/Intent;
    .registers 4

    .prologue
    .line 291
    invoke-direct {p0}, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->getSettingValues()Z

    .line 292
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 293
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "PrinterInfo"

    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 294
    const-string v1, "PrintJobInfo"

    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 295
    return-object v0
.end method

.method private declared-synchronized getSettingValues()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 273
    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    if-nez v1, :cond_13

    .line 274
    :cond_a
    const-string v1, "MobilePrint"

    const-string v2, "MPrintSettingSplitActivity : getSettingValues() - mPrinterInfo or mPrintJob is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_4c

    .line 287
    :goto_11
    monitor-exit p0

    return v0

    .line 278
    :cond_13
    :try_start_13
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    iget-object v1, v1, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mModelName:Ljava/lang/String;

    iput-object v1, v0, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mDevice:Ljava/lang/String;

    .line 279
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    iget v1, v1, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mConnectedType:I

    iput v1, v0, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mConnectedType:I

    .line 280
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    iget-object v1, v1, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mIPAddr:Ljava/lang/String;

    iput-object v1, v0, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mIPAddr:Ljava/lang/String;

    .line 281
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    iget v1, v1, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mColorModel:I

    iput v1, v0, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mColorModel:I

    .line 282
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    iget-object v1, v1, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mLanguages:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mLanguages:Ljava/util/ArrayList;

    .line 283
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    iget v0, v0, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mColorModel:I

    if-nez v0, :cond_4a

    .line 284
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    const/4 v1, 0x0

    iput v1, v0, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mColorPrint:I
    :try_end_4a
    .catchall {:try_start_13 .. :try_end_4a} :catchall_4c

    .line 287
    :cond_4a
    const/4 v0, 0x1

    goto :goto_11

    .line 273
    :catchall_4c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized preparePrint()V
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 299
    monitor-enter p0

    :try_start_2
    const-string v0, "MobilePrint"

    const-string v1, "MPrintSettingSplitActivity : preparePrint()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    invoke-direct {p0}, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->getSettingValues()Z

    move-result v0

    if-nez v0, :cond_22

    .line 301
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->mAppContext:Landroid/content/Context;

    const v1, 0x7f08003e

    invoke-virtual {p0, v1}, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_20
    .catchall {:try_start_2 .. :try_end_20} :catchall_40

    .line 329
    :goto_20
    monitor-exit p0

    return-void

    .line 305
    :cond_22
    :try_start_22
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    invoke-static {v0}, Lcom/sec/android/app/mobileprint/MPrintCommon;->checkPrintJobInfo(Lcom/sec/android/app/mobileprint/MPrintJobItem;)Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 306
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget v0, v0, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mConnectedType:I

    if-ne v0, v2, :cond_43

    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->mAppContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/mobileprint/MPrintCommon;->isWifiConnected(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_43

    .line 307
    const/16 v0, 0x67

    invoke-virtual {p0, v0}, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->showDialog(I)V
    :try_end_3f
    .catchall {:try_start_22 .. :try_end_3f} :catchall_40

    goto :goto_20

    .line 299
    :catchall_40
    move-exception v0

    monitor-exit p0

    throw v0

    .line 311
    :cond_43
    :try_start_43
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/mobileprint/MPrintMainService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 313
    new-instance v0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$3;

    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->mAppContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$3;-><init>(Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 319
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f080026

    invoke-virtual {p0, v1}, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 320
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 321
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 322
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 324
    new-instance v0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PreparePrintTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PreparePrintTask;-><init>(Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$1;)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Void;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PreparePrintTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_20

    .line 327
    :cond_8f
    const/16 v0, 0x14d

    invoke-virtual {p0, v0}, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->showDialog(I)V
    :try_end_94
    .catchall {:try_start_43 .. :try_end_94} :catchall_40

    goto :goto_20
.end method

.method private startPrint()V
    .registers 4

    .prologue
    .line 332
    const-string v1, "MobilePrint"

    const-string v2, "MPrintSettingSplitActivity : startPrint()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->mBoundService:Lcom/sec/android/app/mobileprint/MPrintMainService;

    if-eqz v1, :cond_37

    .line 335
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->mBoundService:Lcom/sec/android/app/mobileprint/MPrintMainService;

    invoke-virtual {v1}, Lcom/sec/android/app/mobileprint/MPrintMainService;->isPossiblePrint()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_31

    .line 336
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/mobileprint/MPrintMainService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 337
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "PrintJobInfo"

    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 338
    invoke-virtual {p0, v0}, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 339
    const/4 v1, -0x1

    invoke-direct {p0}, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->getResultIntentData()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->setResult(ILandroid/content/Intent;)V

    .line 340
    invoke-virtual {p0}, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->finish()V

    .line 349
    .end local v0           #intent:Landroid/content/Intent;
    :goto_30
    return-void

    .line 343
    :cond_31
    const/16 v1, 0x131

    invoke-virtual {p0, v1}, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->showDialog(I)V

    goto :goto_30

    .line 347
    :cond_37
    const/16 v1, 0x14d

    invoke-virtual {p0, v1}, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->showDialog(I)V

    goto :goto_30
.end method


# virtual methods
.method public declared-synchronized getPrintJobInfo()Lcom/sec/android/app/mobileprint/MPrintJobItem;
    .registers 2

    .prologue
    .line 246
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPrinterInfo()Lcom/sec/android/app/mobileprint/MPrintPrinterItem;
    .registers 2

    .prologue
    .line 236
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onBackPressed()V
    .registers 3

    .prologue
    .line 226
    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->getResultIntentData()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->setResult(ILandroid/content/Intent;)V

    .line 227
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onBackPressed()V

    .line 228
    return-void
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 232
    .local p1, target:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const v0, 0x7f040003

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->loadHeadersFromResource(ILjava/util/List;)V

    .line 233
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter "newConfig"

    .prologue
    .line 220
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 221
    invoke-virtual {p0}, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->invalidateOptionsMenu()V

    .line 222
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    iput-object p0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->mAppContext:Landroid/content/Context;

    .line 76
    new-instance v0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$1;-><init>(Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->mConnection:Landroid/content/ServiceConnection;

    .line 88
    invoke-virtual {p0}, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->getIntentData(Landroid/content/Intent;)V

    .line 90
    const v0, 0x7f080004

    invoke-virtual {p0, v0}, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->setTitle(I)V

    .line 91
    invoke-virtual {p0}, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 92
    invoke-virtual {p0}, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 94
    :cond_27
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

    .line 116
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 117
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f080001

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 120
    const/16 v2, 0xc8

    if-ne p1, v2, :cond_52

    .line 121
    const/4 v2, -0x1

    invoke-direct {p0}, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->getResultIntentData()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->setResult(ILandroid/content/Intent;)V

    .line 122
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 123
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 124
    new-instance v2, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$2;-><init>(Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;)V

    invoke-virtual {v0, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 140
    :goto_30
    sparse-switch p1, :sswitch_data_b2

    .line 175
    const-string v2, "MobilePrint"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MPrintSettingSplitActivity : unknown Dialog ID("

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

    .line 179
    :goto_51
    return-object v1

    .line 130
    :cond_52
    const/16 v2, 0xc9

    if-ne p1, v2, :cond_5d

    .line 131
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 132
    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_30

    .line 135
    :cond_5d
    const v2, 0x1080027

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 136
    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_30

    .line 142
    :sswitch_67
    const v1, 0x7f08002c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 179
    :goto_6d
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_51

    .line 145
    :sswitch_72
    const v1, 0x7f08002d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_6d

    .line 148
    :sswitch_79
    const v1, 0x7f080030

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_6d

    .line 151
    :sswitch_80
    const v1, 0x7f080031

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_6d

    .line 154
    :sswitch_87
    const v1, 0x7f080032

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_6d

    .line 157
    :sswitch_8e
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_6d

    .line 160
    :sswitch_92
    const v1, 0x7f080034

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_6d

    .line 163
    :sswitch_99
    const v1, 0x7f080035

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_6d

    .line 166
    :sswitch_a0
    const v1, 0x7f080036

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_6d

    .line 169
    :sswitch_a7
    const v1, 0x7f080039

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_6d

    .line 172
    :sswitch_ae
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_6d

    .line 140
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
    .registers 5
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    .line 184
    invoke-virtual {p0}, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0b

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 185
    const v0, 0x7f0c0020

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->mPrintMenu:Landroid/view/MenuItem;

    .line 186
    const v0, 0x7f0c0021

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 187
    const v0, 0x7f0c0022

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 189
    invoke-virtual {p0}, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_47

    .line 190
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->mPrintMenu:Landroid/view/MenuItem;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 191
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->mPrintMenu:Landroid/view/MenuItem;

    const v1, 0x7f080001

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 194
    :cond_47
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget-object v0, v0, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mDevice:Ljava/lang/String;

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget-object v0, v0, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mFilePathList:Ljava/util/ArrayList;

    if-eqz v0, :cond_5b

    iget-boolean v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->mIsEncodingImage:Z

    if-ne v0, v2, :cond_71

    .line 195
    :cond_5b
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->mPrintMenu:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 196
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->mPrintMenu:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 202
    :goto_6c
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 199
    :cond_71
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->mPrintMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_6c
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->mBoundService:Lcom/sec/android/app/mobileprint/MPrintMainService;

    if-eqz v0, :cond_9

    .line 99
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 101
    :cond_9
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 102
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 207
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_16

    .line 215
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_c
    return v0

    .line 209
    :sswitch_d
    invoke-virtual {p0}, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->onBackPressed()V

    goto :goto_c

    .line 212
    :sswitch_11
    invoke-direct {p0}, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->preparePrint()V

    goto :goto_c

    .line 207
    nop

    :sswitch_data_16
    .sparse-switch
        0x102002c -> :sswitch_d
        0x7f0c0020 -> :sswitch_11
    .end sparse-switch
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .parameter "outState"

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->getSettingValues()Z

    .line 107
    invoke-virtual {p0}, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 108
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "PrinterInfo"

    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 109
    const-string v1, "PrintJobInfo"

    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 110
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 111
    return-void
.end method

.method public declared-synchronized setFlagToEncodeImage(Z)V
    .registers 3
    .parameter "needed"

    .prologue
    .line 256
    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->mIsNeedEncodeImage:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 257
    monitor-exit p0

    return-void

    .line 256
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPrintJobInfo(Lcom/sec/android/app/mobileprint/MPrintJobItem;)V
    .registers 3
    .parameter "item"

    .prologue
    .line 250
    monitor-enter p0

    if-eqz p1, :cond_5

    .line 251
    :try_start_3
    iput-object p1, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    .line 253
    :cond_5
    monitor-exit p0

    return-void

    .line 250
    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPrintMenuEnabled(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 260
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->mPrintMenu:Landroid/view/MenuItem;

    if-eqz v0, :cond_a

    .line 261
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->mPrintMenu:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 263
    :cond_a
    monitor-exit p0

    return-void

    .line 260
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPrinterInfo(Lcom/sec/android/app/mobileprint/MPrintPrinterItem;)V
    .registers 3
    .parameter "item"

    .prologue
    .line 240
    monitor-enter p0

    if-eqz p1, :cond_5

    .line 241
    :try_start_3
    iput-object p1, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    .line 243
    :cond_5
    monitor-exit p0

    return-void

    .line 240
    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method
