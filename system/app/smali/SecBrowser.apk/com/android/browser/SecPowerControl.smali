.class public Lcom/android/browser/SecPowerControl;
.super Landroid/app/Activity;
.source "SecPowerControl.java"


# static fields
.field private static final POWERCTRLDEBUG:Z

.field static mScreenLock:Z

.field private static mTablet:Z

.field static strPowerSavingMode:Ljava/lang/String;

.field static strTempPowerSavingMode:Ljava/lang/String;


# instance fields
.field private beforeBrightness:I

.field private colorizeButton:[Landroid/widget/RadioButton;

.field private mActivity:Landroid/app/Activity;

.field private mAutoBright:Z

.field private mAutoBrightness:Landroid/widget/CompoundButton;

.field private mAutoBrightnessListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field mBright:Landroid/view/View;

.field public mColorize:Z

.field private mPowerSavingLayout:Landroid/widget/LinearLayout;

.field private mPowserControlPopup:Landroid/app/AlertDialog;

.field private mSettings:Lcom/android/browser/BrowserSettings;

.field private mbrightProgressBar:Landroid/widget/SeekBar;

.field private mbrightnessChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private relativelayout:[Landroid/widget/RelativeLayout;

.field private systemAutoBrightness:Z

.field private systemAutoBrightnessMode:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 75
    const-string v0, "1"

    const-string v1, "debug.browser.pwctrldebug"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/browser/SecPowerControl;->POWERCTRLDEBUG:Z

    .line 80
    sput-boolean v2, Lcom/android/browser/SecPowerControl;->mTablet:Z

    .line 97
    const-string v0, "colorize0"

    sput-object v0, Lcom/android/browser/SecPowerControl;->strPowerSavingMode:Ljava/lang/String;

    .line 100
    sput-boolean v2, Lcom/android/browser/SecPowerControl;->mScreenLock:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/android/browser/BrowserSettings;)V
    .registers 6
    .parameter "activity"
    .parameter "settings"

    .prologue
    const/4 v2, 0x4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 112
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 79
    iput-object v1, p0, Lcom/android/browser/SecPowerControl;->mBright:Landroid/view/View;

    .line 82
    iput-object v1, p0, Lcom/android/browser/SecPowerControl;->mPowserControlPopup:Landroid/app/AlertDialog;

    .line 85
    iput-object v1, p0, Lcom/android/browser/SecPowerControl;->mbrightProgressBar:Landroid/widget/SeekBar;

    .line 86
    iput-boolean v0, p0, Lcom/android/browser/SecPowerControl;->mAutoBright:Z

    .line 87
    iput-object v1, p0, Lcom/android/browser/SecPowerControl;->mAutoBrightness:Landroid/widget/CompoundButton;

    .line 91
    iput-boolean v0, p0, Lcom/android/browser/SecPowerControl;->systemAutoBrightness:Z

    .line 92
    iput v0, p0, Lcom/android/browser/SecPowerControl;->systemAutoBrightnessMode:I

    .line 93
    const/16 v0, 0x5a

    iput v0, p0, Lcom/android/browser/SecPowerControl;->beforeBrightness:I

    .line 99
    new-array v0, v2, [Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/browser/SecPowerControl;->colorizeButton:[Landroid/widget/RadioButton;

    .line 104
    new-array v0, v2, [Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/browser/SecPowerControl;->relativelayout:[Landroid/widget/RelativeLayout;

    .line 106
    iput-object v1, p0, Lcom/android/browser/SecPowerControl;->mPowerSavingLayout:Landroid/widget/LinearLayout;

    .line 446
    new-instance v0, Lcom/android/browser/SecPowerControl$14;

    invoke-direct {v0, p0}, Lcom/android/browser/SecPowerControl$14;-><init>(Lcom/android/browser/SecPowerControl;)V

    iput-object v0, p0, Lcom/android/browser/SecPowerControl;->mbrightnessChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 113
    iput-object p1, p0, Lcom/android/browser/SecPowerControl;->mActivity:Landroid/app/Activity;

    .line 114
    iput-object p2, p0, Lcom/android/browser/SecPowerControl;->mSettings:Lcom/android/browser/BrowserSettings;

    .line 115
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/SecPowerControl;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/browser/SecPowerControl;->mAutoBright:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/browser/SecPowerControl;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/browser/SecPowerControl;->mAutoBright:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/browser/SecPowerControl;)Lcom/android/browser/BrowserSettings;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/browser/SecPowerControl;->mSettings:Lcom/android/browser/BrowserSettings;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/browser/SecPowerControl;)Landroid/widget/SeekBar;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/browser/SecPowerControl;->mbrightProgressBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/browser/SecPowerControl;)Landroid/app/Activity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/browser/SecPowerControl;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/browser/SecPowerControl;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/browser/SecPowerControl;->colorizeFocusSetting()V

    return-void
.end method

.method static synthetic access$500()Z
    .registers 1

    .prologue
    .line 72
    sget-boolean v0, Lcom/android/browser/SecPowerControl;->mTablet:Z

    return v0
.end method

.method private buttonInit()V
    .registers 5

    .prologue
    .line 385
    iget-object v1, p0, Lcom/android/browser/SecPowerControl;->colorizeButton:[Landroid/widget/RadioButton;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/browser/SecPowerControl;->mBright:Landroid/view/View;

    const v3, 0x7f0d00a0

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    aput-object v0, v1, v2

    .line 386
    iget-object v1, p0, Lcom/android/browser/SecPowerControl;->colorizeButton:[Landroid/widget/RadioButton;

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/browser/SecPowerControl;->mBright:Landroid/view/View;

    const v3, 0x7f0d00a5

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    aput-object v0, v1, v2

    .line 387
    iget-object v1, p0, Lcom/android/browser/SecPowerControl;->colorizeButton:[Landroid/widget/RadioButton;

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/android/browser/SecPowerControl;->mBright:Landroid/view/View;

    const v3, 0x7f0d00aa

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    aput-object v0, v1, v2

    .line 388
    iget-object v1, p0, Lcom/android/browser/SecPowerControl;->colorizeButton:[Landroid/widget/RadioButton;

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/android/browser/SecPowerControl;->mBright:Landroid/view/View;

    const v3, 0x7f0d00af

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    aput-object v0, v1, v2

    .line 390
    sget-object v0, Lcom/android/browser/SecPowerControl;->strTempPowerSavingMode:Ljava/lang/String;

    if-nez v0, :cond_50

    sget-object v0, Lcom/android/browser/SecPowerControl;->strPowerSavingMode:Ljava/lang/String;

    if-nez v0, :cond_50

    .line 391
    const-string v0, "colorize0"

    sput-object v0, Lcom/android/browser/SecPowerControl;->strPowerSavingMode:Ljava/lang/String;

    .line 392
    sget-object v0, Lcom/android/browser/SecPowerControl;->strPowerSavingMode:Ljava/lang/String;

    sput-object v0, Lcom/android/browser/SecPowerControl;->strTempPowerSavingMode:Ljava/lang/String;

    .line 394
    :cond_50
    invoke-direct {p0}, Lcom/android/browser/SecPowerControl;->colorizeFocusSetting()V

    .line 396
    const-string v0, "SecPowerControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "colorize value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/browser/SecPowerControl;->strPowerSavingMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    return-void
.end method

.method private colorizeFocusSetting()V
    .registers 7

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 520
    iget-object v1, p0, Lcom/android/browser/SecPowerControl;->colorizeButton:[Landroid/widget/RadioButton;

    aget-object v1, v1, v2

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 521
    iget-object v1, p0, Lcom/android/browser/SecPowerControl;->colorizeButton:[Landroid/widget/RadioButton;

    aget-object v1, v1, v3

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 522
    iget-object v1, p0, Lcom/android/browser/SecPowerControl;->colorizeButton:[Landroid/widget/RadioButton;

    aget-object v1, v1, v4

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 523
    iget-object v1, p0, Lcom/android/browser/SecPowerControl;->colorizeButton:[Landroid/widget/RadioButton;

    aget-object v1, v1, v5

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 526
    :try_start_20
    sget-object v1, Lcom/android/browser/SecPowerControl;->strPowerSavingMode:Ljava/lang/String;

    const-string v2, "colorize0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 527
    iget-object v1, p0, Lcom/android/browser/SecPowerControl;->colorizeButton:[Landroid/widget/RadioButton;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 539
    :cond_33
    :goto_33
    return-void

    .line 528
    :cond_34
    sget-object v1, Lcom/android/browser/SecPowerControl;->strPowerSavingMode:Ljava/lang/String;

    const-string v2, "colorize1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 529
    iget-object v1, p0, Lcom/android/browser/SecPowerControl;->colorizeButton:[Landroid/widget/RadioButton;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_47} :catch_48

    goto :goto_33

    .line 536
    :catch_48
    move-exception v0

    .line 537
    .local v0, cf:Ljava/lang/Exception;
    const-string v1, "SecPowerControl"

    const-string v2, "colorizeFocusSetting Error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    .line 530
    .end local v0           #cf:Ljava/lang/Exception;
    :cond_51
    :try_start_51
    sget-object v1, Lcom/android/browser/SecPowerControl;->strPowerSavingMode:Ljava/lang/String;

    const-string v2, "colorize2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 531
    iget-object v1, p0, Lcom/android/browser/SecPowerControl;->colorizeButton:[Landroid/widget/RadioButton;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_33

    .line 532
    :cond_65
    sget-object v1, Lcom/android/browser/SecPowerControl;->strPowerSavingMode:Ljava/lang/String;

    const-string v2, "colorize3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 533
    iget-object v1, p0, Lcom/android/browser/SecPowerControl;->colorizeButton:[Landroid/widget/RadioButton;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_78} :catch_48

    goto :goto_33
.end method

.method private getColorizeSharedPreference()Landroid/content/SharedPreferences;
    .registers 4

    .prologue
    .line 574
    iget-object v0, p0, Lcom/android/browser/SecPowerControl;->mActivity:Landroid/app/Activity;

    const-string v1, "com.android.browser"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private getSettingBrightness()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 485
    :try_start_1
    iget-object v1, p0, Lcom/android/browser/SecPowerControl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/browser/SecPowerControl;->systemAutoBrightnessMode:I

    .line 486
    iget-object v1, p0, Lcom/android/browser/SecPowerControl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/browser/SecPowerControl;->beforeBrightness:I
    :try_end_1e
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1e} :catch_25

    .line 491
    :goto_1e
    iget v1, p0, Lcom/android/browser/SecPowerControl;->systemAutoBrightnessMode:I

    if-ne v1, v4, :cond_29

    .line 492
    iput-boolean v4, p0, Lcom/android/browser/SecPowerControl;->systemAutoBrightness:Z

    .line 496
    :cond_24
    :goto_24
    return-void

    .line 487
    :catch_25
    move-exception v0

    .line 488
    .local v0, snfe:Landroid/provider/Settings$SettingNotFoundException;
    iput v4, p0, Lcom/android/browser/SecPowerControl;->systemAutoBrightnessMode:I

    goto :goto_1e

    .line 494
    .end local v0           #snfe:Landroid/provider/Settings$SettingNotFoundException;
    :cond_29
    iget v1, p0, Lcom/android/browser/SecPowerControl;->systemAutoBrightnessMode:I

    if-nez v1, :cond_24

    .line 495
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/browser/SecPowerControl;->systemAutoBrightness:Z

    goto :goto_24
.end method

.method private setColours(I)V
    .registers 2
    .parameter "value"

    .prologue
    .line 566
    invoke-static {p1}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUIMode(I)V

    .line 567
    return-void
.end method

.method private setPowerBrightness(I)V
    .registers 5
    .parameter "brightness"

    .prologue
    .line 508
    :try_start_0
    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 510
    .local v1, power:Landroid/os/IPowerManager;
    if-eqz v1, :cond_f

    .line 511
    invoke-interface {v1, p1}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    .line 516
    .end local v1           #power:Landroid/os/IPowerManager;
    :cond_f
    :goto_f
    return-void

    .line 513
    :catch_10
    move-exception v0

    .line 514
    .local v0, doe:Landroid/os/RemoteException;
    const-string v2, "SecPowerControl"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f
.end method


# virtual methods
.method public getAutoBright()Z
    .registers 2

    .prologue
    .line 588
    iget-boolean v0, p0, Lcom/android/browser/SecPowerControl;->mAutoBright:Z

    return v0
.end method

.method public getColorizeButton(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "name"

    .prologue
    .line 578
    invoke-direct {p0}, Lcom/android/browser/SecPowerControl;->getColorizeSharedPreference()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "colorize0"

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPowserControlPopup()Landroid/app/AlertDialog;
    .registers 2

    .prologue
    .line 592
    iget-object v0, p0, Lcom/android/browser/SecPowerControl;->mPowserControlPopup:Landroid/app/AlertDialog;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 119
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 120
    iget-object v0, p0, Lcom/android/browser/SecPowerControl;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/browser/BrowserActivity;->isTablet(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/android/browser/SecPowerControl;->mTablet:Z

    .line 121
    return-void
.end method

.method public onDrawPowerCtrl()V
    .registers 15

    .prologue
    const/16 v13, 0x8

    const/4 v12, 0x3

    const/4 v11, 0x1

    const/4 v10, 0x2

    const/4 v9, 0x0

    .line 124
    iget-object v6, p0, Lcom/android/browser/SecPowerControl;->mActivity:Landroid/app/Activity;

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 125
    .local v0, inflate:Landroid/view/LayoutInflater;
    invoke-static {}, Lcom/android/browser/BrowserFeature;->isAmoled()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/browser/SecPowerControl;->mColorize:Z

    .line 126
    const-string v6, "Colorize"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BrowserFeature.isAmoled() = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/browser/SecPowerControl;->mColorize:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    sget-boolean v6, Lcom/android/browser/SecPowerControl;->mTablet:Z

    if-eqz v6, :cond_1a7

    .line 129
    const v6, 0x7f040039

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/browser/SecPowerControl;->mBright:Landroid/view/View;

    .line 130
    iget-boolean v6, p0, Lcom/android/browser/SecPowerControl;->mColorize:Z

    if-nez v6, :cond_54

    .line 131
    iget-object v6, p0, Lcom/android/browser/SecPowerControl;->mBright:Landroid/view/View;

    const v7, 0x7f0d0099

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/android/browser/SecPowerControl;->mPowerSavingLayout:Landroid/widget/LinearLayout;

    .line 132
    iget-object v6, p0, Lcom/android/browser/SecPowerControl;->mPowerSavingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 145
    :cond_54
    :goto_54
    invoke-direct {p0}, Lcom/android/browser/SecPowerControl;->buttonInit()V

    .line 147
    sget-boolean v6, Lcom/android/browser/SecPowerControl;->mTablet:Z

    if-nez v6, :cond_7a

    .line 151
    new-instance v6, Lcom/android/browser/SecPowerControl$1;

    invoke-direct {v6, p0}, Lcom/android/browser/SecPowerControl$1;-><init>(Lcom/android/browser/SecPowerControl;)V

    iput-object v6, p0, Lcom/android/browser/SecPowerControl;->mAutoBrightnessListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 174
    iget-object v6, p0, Lcom/android/browser/SecPowerControl;->mAutoBrightness:Landroid/widget/CompoundButton;

    iget-boolean v7, p0, Lcom/android/browser/SecPowerControl;->mAutoBright:Z

    invoke-virtual {v6, v7}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 175
    iget-object v6, p0, Lcom/android/browser/SecPowerControl;->mAutoBrightness:Landroid/widget/CompoundButton;

    iget-object v7, p0, Lcom/android/browser/SecPowerControl;->mAutoBrightnessListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v6, v7}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 176
    iget-object v6, p0, Lcom/android/browser/SecPowerControl;->mAutoBrightness:Landroid/widget/CompoundButton;

    new-instance v7, Lcom/android/browser/SecPowerControl$2;

    invoke-direct {v7, p0}, Lcom/android/browser/SecPowerControl$2;-><init>(Lcom/android/browser/SecPowerControl;)V

    invoke-virtual {v6, v7}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    :cond_7a
    iget-object v6, p0, Lcom/android/browser/SecPowerControl;->colorizeButton:[Landroid/widget/RadioButton;

    aget-object v6, v6, v9

    new-instance v7, Lcom/android/browser/SecPowerControl$3;

    invoke-direct {v7, p0}, Lcom/android/browser/SecPowerControl$3;-><init>(Lcom/android/browser/SecPowerControl;)V

    invoke-virtual {v6, v7}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    iget-object v6, p0, Lcom/android/browser/SecPowerControl;->colorizeButton:[Landroid/widget/RadioButton;

    aget-object v6, v6, v11

    new-instance v7, Lcom/android/browser/SecPowerControl$4;

    invoke-direct {v7, p0}, Lcom/android/browser/SecPowerControl$4;-><init>(Lcom/android/browser/SecPowerControl;)V

    invoke-virtual {v6, v7}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    iget-object v6, p0, Lcom/android/browser/SecPowerControl;->colorizeButton:[Landroid/widget/RadioButton;

    aget-object v6, v6, v10

    new-instance v7, Lcom/android/browser/SecPowerControl$5;

    invoke-direct {v7, p0}, Lcom/android/browser/SecPowerControl$5;-><init>(Lcom/android/browser/SecPowerControl;)V

    invoke-virtual {v6, v7}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    iget-object v6, p0, Lcom/android/browser/SecPowerControl;->colorizeButton:[Landroid/widget/RadioButton;

    aget-object v6, v6, v12

    new-instance v7, Lcom/android/browser/SecPowerControl$6;

    invoke-direct {v7, p0}, Lcom/android/browser/SecPowerControl$6;-><init>(Lcom/android/browser/SecPowerControl;)V

    invoke-virtual {v6, v7}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    iget-object v7, p0, Lcom/android/browser/SecPowerControl;->relativelayout:[Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/android/browser/SecPowerControl;->mBright:Landroid/view/View;

    const v8, 0x7f0d009c

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    aput-object v6, v7, v9

    .line 218
    iget-object v7, p0, Lcom/android/browser/SecPowerControl;->relativelayout:[Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/android/browser/SecPowerControl;->mBright:Landroid/view/View;

    const v8, 0x7f0d00a1

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    aput-object v6, v7, v11

    .line 219
    iget-object v7, p0, Lcom/android/browser/SecPowerControl;->relativelayout:[Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/android/browser/SecPowerControl;->mBright:Landroid/view/View;

    const v8, 0x7f0d00a6

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    aput-object v6, v7, v10

    .line 220
    iget-object v7, p0, Lcom/android/browser/SecPowerControl;->relativelayout:[Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/android/browser/SecPowerControl;->mBright:Landroid/view/View;

    const v8, 0x7f0d00ab

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    aput-object v6, v7, v12

    .line 222
    iget-object v6, p0, Lcom/android/browser/SecPowerControl;->relativelayout:[Landroid/widget/RelativeLayout;

    aget-object v6, v6, v9

    new-instance v7, Lcom/android/browser/SecPowerControl$7;

    invoke-direct {v7, p0}, Lcom/android/browser/SecPowerControl$7;-><init>(Lcom/android/browser/SecPowerControl;)V

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    iget-object v6, p0, Lcom/android/browser/SecPowerControl;->relativelayout:[Landroid/widget/RelativeLayout;

    aget-object v6, v6, v11

    new-instance v7, Lcom/android/browser/SecPowerControl$8;

    invoke-direct {v7, p0}, Lcom/android/browser/SecPowerControl$8;-><init>(Lcom/android/browser/SecPowerControl;)V

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    iget-object v6, p0, Lcom/android/browser/SecPowerControl;->relativelayout:[Landroid/widget/RelativeLayout;

    aget-object v6, v6, v10

    new-instance v7, Lcom/android/browser/SecPowerControl$9;

    invoke-direct {v7, p0}, Lcom/android/browser/SecPowerControl$9;-><init>(Lcom/android/browser/SecPowerControl;)V

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    iget-object v6, p0, Lcom/android/browser/SecPowerControl;->relativelayout:[Landroid/widget/RelativeLayout;

    aget-object v6, v6, v12

    new-instance v7, Lcom/android/browser/SecPowerControl$10;

    invoke-direct {v7, p0}, Lcom/android/browser/SecPowerControl$10;-><init>(Lcom/android/browser/SecPowerControl;)V

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    sget-boolean v6, Lcom/android/browser/SecPowerControl;->mTablet:Z

    if-nez v6, :cond_147

    .line 259
    iget-object v6, p0, Lcom/android/browser/SecPowerControl;->mbrightProgressBar:Landroid/widget/SeekBar;

    if-eqz v6, :cond_147

    .line 260
    iget-object v6, p0, Lcom/android/browser/SecPowerControl;->mbrightProgressBar:Landroid/widget/SeekBar;

    const/16 v7, 0x9

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setMax(I)V

    .line 261
    iget-object v6, p0, Lcom/android/browser/SecPowerControl;->mbrightProgressBar:Landroid/widget/SeekBar;

    iget-object v7, p0, Lcom/android/browser/SecPowerControl;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v7}, Lcom/android/browser/BrowserSettings;->getBrightness()I

    move-result v7

    div-int/lit8 v7, v7, 0xa

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 262
    iget-object v6, p0, Lcom/android/browser/SecPowerControl;->mbrightProgressBar:Landroid/widget/SeekBar;

    iget-object v7, p0, Lcom/android/browser/SecPowerControl;->mbrightnessChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 263
    iget-object v6, p0, Lcom/android/browser/SecPowerControl;->mbrightProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v6, v9}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 265
    iget-boolean v6, p0, Lcom/android/browser/SecPowerControl;->mAutoBright:Z

    if-eqz v6, :cond_1e3

    .line 266
    iget-object v6, p0, Lcom/android/browser/SecPowerControl;->mbrightProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v6, v9}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 273
    :cond_147
    :goto_147
    iget-object v6, p0, Lcom/android/browser/SecPowerControl;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v6}, Lcom/android/browser/BrowserSettings;->getBrightness()I

    move-result v4

    .line 274
    .local v4, tempbright:I
    iget-boolean v3, p0, Lcom/android/browser/SecPowerControl;->mAutoBright:Z

    .line 276
    .local v3, tempAutoBright:Z
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/browser/SecPowerControl;->mActivity:Landroid/app/Activity;

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v7, p0, Lcom/android/browser/SecPowerControl;->mBright:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 277
    .local v2, powerControlAlertDialog:Landroid/app/AlertDialog$Builder;
    sget-boolean v6, Lcom/android/browser/SecPowerControl;->mTablet:Z

    if-eqz v6, :cond_1ee

    .line 278
    const v6, 0x7f0c01b5

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 286
    :goto_166
    const v6, 0x7f0c0013

    new-instance v7, Lcom/android/browser/SecPowerControl$11;

    invoke-direct {v7, p0}, Lcom/android/browser/SecPowerControl$11;-><init>(Lcom/android/browser/SecPowerControl;)V

    invoke-virtual {v2, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 307
    const v6, 0x7f0c0012

    new-instance v7, Lcom/android/browser/SecPowerControl$12;

    invoke-direct {v7, p0, v4, v3}, Lcom/android/browser/SecPowerControl$12;-><init>(Lcom/android/browser/SecPowerControl;IZ)V

    invoke-virtual {v2, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 338
    new-instance v6, Lcom/android/browser/SecPowerControl$13;

    invoke-direct {v6, p0, v4, v3}, Lcom/android/browser/SecPowerControl$13;-><init>(Lcom/android/browser/SecPowerControl;IZ)V

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 373
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/browser/SecPowerControl;->mPowserControlPopup:Landroid/app/AlertDialog;

    .line 374
    iget-object v6, p0, Lcom/android/browser/SecPowerControl;->mPowserControlPopup:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 376
    iget-object v6, p0, Lcom/android/browser/SecPowerControl;->mPowserControlPopup:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 377
    .local v5, window:Landroid/view/Window;
    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 378
    .local v1, lp:Landroid/view/WindowManager$LayoutParams;
    const/4 v6, 0x0

    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 379
    invoke-virtual {v5, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 380
    invoke-virtual {v5, v10}, Landroid/view/Window;->clearFlags(I)V

    .line 381
    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/view/Window;->clearFlags(I)V

    .line 382
    return-void

    .line 136
    .end local v1           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v2           #powerControlAlertDialog:Landroid/app/AlertDialog$Builder;
    .end local v3           #tempAutoBright:Z
    .end local v4           #tempbright:I
    .end local v5           #window:Landroid/view/Window;
    :cond_1a7
    const v6, 0x7f040039

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/browser/SecPowerControl;->mBright:Landroid/view/View;

    .line 137
    iget-boolean v6, p0, Lcom/android/browser/SecPowerControl;->mColorize:Z

    if-nez v6, :cond_1c7

    .line 138
    iget-object v6, p0, Lcom/android/browser/SecPowerControl;->mBright:Landroid/view/View;

    const v7, 0x7f0d0099

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/android/browser/SecPowerControl;->mPowerSavingLayout:Landroid/widget/LinearLayout;

    .line 139
    iget-object v6, p0, Lcom/android/browser/SecPowerControl;->mPowerSavingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 141
    :cond_1c7
    iget-object v6, p0, Lcom/android/browser/SecPowerControl;->mBright:Landroid/view/View;

    const v7, 0x7f0d0098

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/SeekBar;

    iput-object v6, p0, Lcom/android/browser/SecPowerControl;->mbrightProgressBar:Landroid/widget/SeekBar;

    .line 142
    iget-object v6, p0, Lcom/android/browser/SecPowerControl;->mBright:Landroid/view/View;

    const v7, 0x7f0d0097

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CompoundButton;

    iput-object v6, p0, Lcom/android/browser/SecPowerControl;->mAutoBrightness:Landroid/widget/CompoundButton;

    goto/16 :goto_54

    .line 268
    :cond_1e3
    iget-object v6, p0, Lcom/android/browser/SecPowerControl;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v6}, Lcom/android/browser/BrowserSettings;->getBrightness()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/browser/SecPowerControl;->setWindowBrightness(I)V

    goto/16 :goto_147

    .line 280
    .restart local v2       #powerControlAlertDialog:Landroid/app/AlertDialog$Builder;
    .restart local v3       #tempAutoBright:Z
    .restart local v4       #tempbright:I
    :cond_1ee
    iget-boolean v6, p0, Lcom/android/browser/SecPowerControl;->mColorize:Z

    if-eqz v6, :cond_1fa

    .line 281
    const v6, 0x7f0c01bc

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_166

    .line 283
    :cond_1fa
    const v6, 0x7f0c01b4

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_166
.end method

.method public resetForBrightnessSetting()V
    .registers 6

    .prologue
    .line 401
    iget-object v2, p0, Lcom/android/browser/SecPowerControl;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v2}, Lcom/android/browser/BrowserSettings;->getBrightness()I

    move-result v0

    .line 402
    .local v0, brightness:I
    iget-object v2, p0, Lcom/android/browser/SecPowerControl;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v2}, Lcom/android/browser/BrowserSettings;->getAutoBrightness()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/browser/SecPowerControl;->mAutoBright:Z

    .line 406
    invoke-direct {p0}, Lcom/android/browser/SecPowerControl;->getSettingBrightness()V

    .line 408
    iget-boolean v2, p0, Lcom/android/browser/SecPowerControl;->mAutoBright:Z

    if-eqz v2, :cond_49

    .line 409
    iget-object v2, p0, Lcom/android/browser/SecPowerControl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 410
    .local v1, lp:Landroid/view/WindowManager$LayoutParams;
    const/high16 v2, -0x4080

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 412
    iget-object v2, p0, Lcom/android/browser/SecPowerControl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 413
    iget-object v2, p0, Lcom/android/browser/SecPowerControl;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v2, v0}, Lcom/android/browser/BrowserSettings;->setBrightness(I)V

    .line 418
    .end local v1           #lp:Landroid/view/WindowManager$LayoutParams;
    :goto_31
    iget-boolean v2, p0, Lcom/android/browser/SecPowerControl;->mAutoBright:Z

    if-eqz v2, :cond_4d

    .line 419
    iget-object v2, p0, Lcom/android/browser/SecPowerControl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness_mode"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 424
    :goto_41
    iget-object v2, p0, Lcom/android/browser/SecPowerControl;->mSettings:Lcom/android/browser/BrowserSettings;

    iget-boolean v3, p0, Lcom/android/browser/SecPowerControl;->mAutoBright:Z

    invoke-virtual {v2, v3}, Lcom/android/browser/BrowserSettings;->setAutoBrightness(Z)V

    .line 425
    return-void

    .line 415
    :cond_49
    invoke-virtual {p0, v0}, Lcom/android/browser/SecPowerControl;->setWindowBrightness(I)V

    goto :goto_31

    .line 421
    :cond_4d
    iget-object v2, p0, Lcom/android/browser/SecPowerControl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness_mode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_41
.end method

.method public setColorizeButton(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "name"
    .parameter "isChecked"

    .prologue
    .line 582
    invoke-direct {p0}, Lcom/android/browser/SecPowerControl;->getColorizeSharedPreference()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 583
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 584
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 585
    return-void
.end method

.method public setColoursDefault()V
    .registers 2

    .prologue
    .line 570
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUIMode(I)V

    .line 571
    return-void
.end method

.method public setPowserControlPopup(Landroid/app/AlertDialog;)V
    .registers 2
    .parameter "alertDialog"

    .prologue
    .line 596
    iput-object p1, p0, Lcom/android/browser/SecPowerControl;->mPowserControlPopup:Landroid/app/AlertDialog;

    .line 597
    return-void
.end method

.method public setSettingBrightness()V
    .registers 4

    .prologue
    .line 499
    iget-boolean v0, p0, Lcom/android/browser/SecPowerControl;->systemAutoBrightness:Z

    if-eqz v0, :cond_11

    .line 500
    iget-object v0, p0, Lcom/android/browser/SecPowerControl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 505
    :goto_10
    return-void

    .line 502
    :cond_11
    iget-object v0, p0, Lcom/android/browser/SecPowerControl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 503
    iget v0, p0, Lcom/android/browser/SecPowerControl;->beforeBrightness:I

    invoke-direct {p0, v0}, Lcom/android/browser/SecPowerControl;->setPowerBrightness(I)V

    goto :goto_10
.end method

.method public setWindowBrightness(I)V
    .registers 6
    .parameter "progress"

    .prologue
    .line 457
    const/4 v1, 0x0

    .line 458
    .local v1, screenBrightness:F
    iget-object v2, p0, Lcom/android/browser/SecPowerControl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 460
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    if-gtz p1, :cond_36

    .line 461
    const v1, 0x3df5c28f

    .line 473
    :goto_10
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    sub-float v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3ca3d70a

    cmpg-float v2, v2, v3

    if-gez v2, :cond_51

    .line 474
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const v3, 0x3c23d70a

    sub-float/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 478
    :goto_27
    iget-object v2, p0, Lcom/android/browser/SecPowerControl;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v2, p1}, Lcom/android/browser/BrowserSettings;->setBrightness(I)V

    .line 479
    iget-object v2, p0, Lcom/android/browser/SecPowerControl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 480
    return-void

    .line 466
    :cond_36
    const/16 v2, 0x28

    if-ne p1, v2, :cond_3e

    .line 467
    const v1, 0x3ee66666

    goto :goto_10

    .line 468
    :cond_3e
    const/16 v2, 0x32

    if-ne p1, v2, :cond_46

    .line 469
    const v1, 0x3f11eb85

    goto :goto_10

    .line 471
    :cond_46
    div-int/lit8 v2, p1, 0xa

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    const v3, 0x3dcccccd

    mul-float v1, v2, v3

    goto :goto_10

    .line 476
    :cond_51
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    goto :goto_27
.end method

.method public updatePowerSavingMode()V
    .registers 5

    .prologue
    .line 543
    :try_start_0
    sget-object v1, Lcom/android/browser/SecPowerControl;->strPowerSavingMode:Ljava/lang/String;

    const-string v2, "colorize0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 544
    sget-boolean v1, Lcom/android/browser/SecPowerControl;->POWERCTRLDEBUG:Z

    if-eqz v1, :cond_28

    .line 545
    const-string v1, "SecPowerControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Power Saving Mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/browser/SecPowerControl;->strPowerSavingMode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    :cond_28
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/browser/SecPowerControl;->setColours(I)V

    .line 563
    :cond_2c
    :goto_2c
    return-void

    .line 547
    :cond_2d
    sget-object v1, Lcom/android/browser/SecPowerControl;->strPowerSavingMode:Ljava/lang/String;

    const-string v2, "colorize1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_77

    .line 548
    sget-boolean v1, Lcom/android/browser/SecPowerControl;->POWERCTRLDEBUG:Z

    if-eqz v1, :cond_55

    .line 549
    const-string v1, "SecPowerControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Power Saving Mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/browser/SecPowerControl;->strPowerSavingMode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    :cond_55
    const/16 v1, 0x28

    invoke-direct {p0, v1}, Lcom/android/browser/SecPowerControl;->setColours(I)V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5a} :catch_5b

    goto :goto_2c

    .line 560
    :catch_5b
    move-exception v0

    .line 561
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "SecPowerControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Power Saving Mode : NullPointException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/browser/SecPowerControl;->strPowerSavingMode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    .line 551
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_77
    :try_start_77
    sget-object v1, Lcom/android/browser/SecPowerControl;->strPowerSavingMode:Ljava/lang/String;

    const-string v2, "colorize2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a5

    .line 552
    sget-boolean v1, Lcom/android/browser/SecPowerControl;->POWERCTRLDEBUG:Z

    if-eqz v1, :cond_9f

    .line 553
    const-string v1, "SecPowerControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Power Saving Mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/browser/SecPowerControl;->strPowerSavingMode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    :cond_9f
    const/16 v1, 0x29

    invoke-direct {p0, v1}, Lcom/android/browser/SecPowerControl;->setColours(I)V

    goto :goto_2c

    .line 555
    :cond_a5
    sget-object v1, Lcom/android/browser/SecPowerControl;->strPowerSavingMode:Ljava/lang/String;

    const-string v2, "colorize3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 556
    sget-boolean v1, Lcom/android/browser/SecPowerControl;->POWERCTRLDEBUG:Z

    if-eqz v1, :cond_cd

    .line 557
    const-string v1, "SecPowerControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Power Saving Mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/browser/SecPowerControl;->strPowerSavingMode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    :cond_cd
    const/16 v1, 0x2a

    invoke-direct {p0, v1}, Lcom/android/browser/SecPowerControl;->setColours(I)V
    :try_end_d2
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_d2} :catch_5b

    goto/16 :goto_2c
.end method
