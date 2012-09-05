.class public Lcom/sec/android/app/mobileprint/MPrintSearchActivity;
.super Landroid/app/Activity;
.source "MPrintSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback;
    }
.end annotation


# static fields
.field private static final INTENT_ACTION_PRINT:Ljava/lang/String; = "com.sec.android.app.mobileprint.PRINT"

.field private static final KEY_NEVER_SHOW_CHECKED:Ljava/lang/String; = "never_show_again_checked"

.field private static final KEY_RESTRICT_ALERT_CLOSED:Ljava/lang/String; = "restrict_alert_closed"

.field private static final WIFI_DIRECT_SETTINGS_INTENT_NAME:Ljava/lang/String; = "android.settings.WIFI_DIRECT_SETTINGS"

.field private static final WIFI_SETTINGS_INTENT_NAME:Ljava/lang/String; = "android.settings.WIFI_SETTINGS"


# instance fields
.field private mAppContext:Landroid/content/Context;

.field private mCurrentWindowOrientation:I

.field private mDialogCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mDialogKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field private mDisplayManager:Landroid/view/Display;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mFilePath:Ljava/lang/String;

.field private mIntentSubject:Ljava/lang/String;

.field private mIntentText:Ljava/lang/String;

.field private mIntentTitle:Ljava/lang/String;

.field private mIsCheckedOnOldRestrictAlert:Z

.field private mIsNeededPrinterListDialog:Z

.field private mListAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Landroid/text/Spanned;",
            ">;"
        }
    .end annotation
.end field

.field private mListFrame:Landroid/widget/FrameLayout;

.field private mListRowHeight:I

.field private mListTopGap:I

.field private mListView:Landroid/widget/ListView;

.field private mNeverShowCheckBox:Landroid/widget/CheckBox;

.field private mNoDevicesText:Landroid/widget/TextView;

.field private mPrinterItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/mobileprint/MPrintPrinterItem;",
            ">;"
        }
    .end annotation
.end field

.field private mPrinterList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/Spanned;",
            ">;"
        }
    .end annotation
.end field

.field private mPrinterListDialog:Landroid/app/AlertDialog;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mReselectMode:Z

.field private mRestrictAlertClosed:Z

.field private mScanProgress:Landroid/widget/ProgressBar;

.field private mScanning:Z

.field private mSearchManager:Lcom/sec/android/app/mobileprint/MPrintSearchManager;

.field private mSelectedPrinter:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

.field private mSettingManager:Lcom/sec/android/app/mobileprint/MPrintSettingManager;

.field private mWifi:Landroid/net/wifi/WifiManager;

.field m_printIPSort:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/text/Spanned;",
            ">;"
        }
    .end annotation
.end field

.field m_printItemIPSort:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/sec/android/app/mobileprint/MPrintPrinterItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 69
    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mAppContext:Landroid/content/Context;

    .line 70
    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mWifi:Landroid/net/wifi/WifiManager;

    .line 71
    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mDisplayManager:Landroid/view/Display;

    .line 72
    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 73
    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mSettingManager:Lcom/sec/android/app/mobileprint/MPrintSettingManager;

    .line 74
    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mSearchManager:Lcom/sec/android/app/mobileprint/MPrintSearchManager;

    .line 76
    iput-boolean v1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mReselectMode:Z

    .line 77
    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mFilePath:Ljava/lang/String;

    .line 78
    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mIntentTitle:Ljava/lang/String;

    .line 79
    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mIntentSubject:Ljava/lang/String;

    .line 80
    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mIntentText:Ljava/lang/String;

    .line 82
    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mSelectedPrinter:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    .line 83
    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mPrinterItemList:Ljava/util/ArrayList;

    .line 84
    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mPrinterList:Ljava/util/ArrayList;

    .line 85
    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mListAdapter:Landroid/widget/ArrayAdapter;

    .line 87
    iput-boolean v1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mIsCheckedOnOldRestrictAlert:Z

    .line 88
    iput-boolean v1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mRestrictAlertClosed:Z

    .line 89
    iput-boolean v1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mIsNeededPrinterListDialog:Z

    .line 90
    iput-boolean v1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mScanning:Z

    .line 92
    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mNeverShowCheckBox:Landroid/widget/CheckBox;

    .line 93
    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mDialogKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 94
    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 95
    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mDialogCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 96
    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mPrinterListDialog:Landroid/app/AlertDialog;

    .line 97
    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mScanProgress:Landroid/widget/ProgressBar;

    .line 98
    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mListFrame:Landroid/widget/FrameLayout;

    .line 99
    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mNoDevicesText:Landroid/widget/TextView;

    .line 100
    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mListView:Landroid/widget/ListView;

    .line 101
    iput v1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mListRowHeight:I

    .line 102
    iput v1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mListTopGap:I

    .line 103
    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 104
    iput v1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mCurrentWindowOrientation:I

    .line 116
    new-instance v0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$1;-><init>(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->m_printIPSort:Ljava/util/Comparator;

    .line 137
    new-instance v0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$2;-><init>(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->m_printItemIPSort:Ljava/util/Comparator;

    .line 736
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mPrinterListDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;Landroid/widget/ProgressBar;Landroid/widget/FrameLayout;Landroid/graphics/Rect;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->addProgressOnDialog(Landroid/widget/ProgressBar;Landroid/widget/FrameLayout;Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->rearrangePrinterListDialog()V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->scanPrinter()V

    return-void
.end method

.method static synthetic access$1300(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;)Lcom/sec/android/app/mobileprint/MPrintSearchManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mSearchManager:Lcom/sec/android/app/mobileprint/MPrintSearchManager;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mPrinterItemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;)Landroid/widget/ListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mPrinterList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;)Landroid/widget/ArrayAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mListAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;)Landroid/widget/CheckBox;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mNeverShowCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mNoDevicesText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mNeverShowCheckBox:Landroid/widget/CheckBox;

    return-object p1
.end method

.method static synthetic access$2102(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mScanning:Z

    return p1
.end method

.method static synthetic access$2202(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;Lcom/sec/android/app/mobileprint/MPrintPrinterItem;)Lcom/sec/android/app/mobileprint/MPrintPrinterItem;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mSelectedPrinter:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->gotoMainActivity()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;)Lcom/sec/android/app/mobileprint/MPrintSettingManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mSettingManager:Lcom/sec/android/app/mobileprint/MPrintSettingManager;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mRestrictAlertClosed:Z

    return p1
.end method

.method static synthetic access$500(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->startMainProcess()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->connectWifi()V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->connectWifiDirect()V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;)Landroid/widget/FrameLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mListFrame:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;)Landroid/widget/ProgressBar;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mScanProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private addProgressOnDialog(Landroid/widget/ProgressBar;Landroid/widget/FrameLayout;Landroid/graphics/Rect;)V
    .registers 15
    .parameter "progress"
    .parameter "parentView"
    .parameter "contentRect"

    .prologue
    const v8, 0x1020006

    const/4 v10, -0x1

    const/4 v7, -0x2

    .line 570
    const/4 v2, 0x0

    .line 571
    .local v2, tempTitleLayout:Landroid/widget/LinearLayout;
    invoke-virtual {p2, v8}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_54

    .line 572
    invoke-virtual {p2, v8}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .end local v2           #tempTitleLayout:Landroid/widget/LinearLayout;
    check-cast v2, Landroid/widget/LinearLayout;

    .line 580
    .restart local v2       #tempTitleLayout:Landroid/widget/LinearLayout;
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 581
    .local v4, titleparam:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 584
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v6

    if-lez v6, :cond_5c

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    .line 585
    .local v3, titleHeight:I
    :goto_2d
    int-to-double v6, v3

    const-wide/high16 v8, 0x3fe0

    mul-double/2addr v6, v8

    double-to-int v1, v6

    .line 586
    .local v1, progressSize:I
    new-instance v5, Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mAppContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 587
    .local v5, virtualLayout:Landroid/widget/RelativeLayout;
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 588
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v6, 0xb

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 589
    const/16 v6, 0xf

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 590
    invoke-virtual {v5, p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 592
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v10, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 593
    .end local v0           #params:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1           #progressSize:I
    .end local v3           #titleHeight:I
    .end local v4           #titleparam:Landroid/widget/LinearLayout$LayoutParams;
    .end local v5           #virtualLayout:Landroid/widget/RelativeLayout;
    :goto_53
    return-void

    .line 575
    :cond_54
    const-string v6, "MobilePrint"

    const-string v7, "MPrintSearchActivity : can\'t find title layout."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_53

    .line 584
    .restart local v4       #titleparam:Landroid/widget/LinearLayout$LayoutParams;
    :cond_5c
    invoke-virtual {p0}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/high16 v7, 0x7f07

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_2d
.end method

.method private connectWifi()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 623
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mWifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-ne v1, v3, :cond_27

    .line 624
    const-string v1, "MobilePrint"

    const-string v2, "MPrintSearchActivity : already Wifi turned on"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    :goto_10
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 632
    .local v0, wifiIntent:Landroid/content/Intent;
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 633
    const/high16 v1, 0x3080

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 636
    invoke-virtual {p0, v0}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->startActivity(Landroid/content/Intent;)V

    .line 637
    iput-boolean v3, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mIsNeededPrinterListDialog:Z

    .line 638
    return-void

    .line 627
    .end local v0           #wifiIntent:Landroid/content/Intent;
    :cond_27
    const-string v1, "MobilePrint"

    const-string v2, "MPrintSearchActivity : trun on Wifi"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mWifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_10
.end method

.method private connectWifiDirect()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 642
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.WIFI_DIRECT_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 643
    .local v1, wifiDirectIntent:Landroid/content/Intent;
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 644
    const/high16 v2, 0x3080

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 647
    const-string v2, "DISPLAY_DEVICE"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 649
    :try_start_18
    invoke-virtual {p0, v1}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1b
    .catch Landroid/content/ActivityNotFoundException; {:try_start_18 .. :try_end_1b} :catch_1e

    .line 654
    :goto_1b
    iput-boolean v5, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mIsNeededPrinterListDialog:Z

    .line 656
    return-void

    .line 650
    :catch_1e
    move-exception v0

    .line 651
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    const-string v2, "MobilePrint"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MPrintSearchActivity : There is no Activity - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1b
.end method

.method private getIntentData(Landroid/content/Intent;)V
    .registers 3
    .parameter "intent"

    .prologue
    .line 401
    invoke-static {p1}, Lcom/sec/android/app/mobileprint/MPrintCommon;->getImagePath(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mFilePath:Ljava/lang/String;

    .line 402
    invoke-static {p1}, Lcom/sec/android/app/mobileprint/MPrintCommon;->getTitle(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mIntentTitle:Ljava/lang/String;

    .line 403
    invoke-static {p1}, Lcom/sec/android/app/mobileprint/MPrintCommon;->getSubject(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mIntentSubject:Ljava/lang/String;

    .line 404
    invoke-static {p1}, Lcom/sec/android/app/mobileprint/MPrintCommon;->getText(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mIntentText:Ljava/lang/String;

    .line 405
    return-void
.end method

.method private getUsbPrinterAttr()V
    .registers 5

    .prologue
    .line 684
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_9

    .line 685
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 687
    :cond_9
    new-instance v0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$14;

    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mAppContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$14;-><init>(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 693
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f080010

    invoke-virtual {p0, v1}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 694
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 695
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 696
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 698
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mSearchManager:Lcom/sec/android/app/mobileprint/MPrintSearchManager;

    if-nez v0, :cond_42

    .line 699
    new-instance v0, Lcom/sec/android/app/mobileprint/MPrintSearchManager;

    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mAppContext:Landroid/content/Context;

    new-instance v2, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback;-><init>(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;Lcom/sec/android/app/mobileprint/MPrintSearchActivity$1;)V

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/mobileprint/MPrintSearchManager;-><init>(Landroid/content/Context;Lcom/sec/android/app/mobileprint/MPrintSearchManager$Callback;)V

    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mSearchManager:Lcom/sec/android/app/mobileprint/MPrintSearchManager;

    .line 701
    :cond_42
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mSearchManager:Lcom/sec/android/app/mobileprint/MPrintSearchManager;

    invoke-virtual {v0}, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->requestGetPrinterAndAttr()I

    .line 702
    return-void
.end method

.method private gotoMainActivity()V
    .registers 4

    .prologue
    .line 705
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mSelectedPrinter:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    if-nez v1, :cond_11

    .line 706
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mAppContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    new-instance v2, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$15;

    invoke-direct {v2, p0}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$15;-><init>(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 734
    :goto_10
    return-void

    .line 718
    :cond_11
    const-string v1, "com.sec.android.app.mobileprint.PRINT"

    invoke-virtual {p0}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    .line 719
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 720
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "PrinterInfo"

    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mSelectedPrinter:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 721
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->setResult(ILandroid/content/Intent;)V

    .line 733
    :goto_31
    invoke-virtual {p0}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->finish()V

    goto :goto_10

    .line 724
    .end local v0           #intent:Landroid/content/Intent;
    :cond_35
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mAppContext:Landroid/content/Context;

    const-class v2, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 725
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "FilePath"

    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 726
    const-string v1, "Title"

    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mIntentTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 727
    const-string v1, "Subject"

    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mIntentSubject:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 728
    const-string v1, "Text"

    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mIntentText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 729
    const-string v1, "PrinterInfo"

    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mSelectedPrinter:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 730
    invoke-virtual {p0, v0}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_31
.end method

.method private makeupPrinterListLayout()Landroid/view/View;
    .registers 9

    .prologue
    const/4 v7, 0x1

    .line 501
    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mAppContext:Landroid/content/Context;

    const v5, 0x7f030006

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 502
    .local v3, selectPrinterLayout:Landroid/view/View;
    const v4, 0x7f0c001c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mListFrame:Landroid/widget/FrameLayout;

    .line 503
    const v4, 0x1010001

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mNoDevicesText:Landroid/widget/TextView;

    .line 504
    const v4, 0x7f0c001d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mListView:Landroid/widget/ListView;

    .line 505
    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mListAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 506
    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mListView:Landroid/widget/ListView;

    new-instance v5, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$13;

    invoke-direct {v5, p0}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$13;-><init>(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 542
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 543
    .local v2, outValue:Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x101004d

    invoke-virtual {v4, v5, v2, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 544
    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v2, v4}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v4

    const/high16 v5, 0x3f80

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mListRowHeight:I

    .line 547
    const/4 v1, 0x0

    .line 548
    .local v1, isDarkListViewBg:Z
    const/4 v0, 0x0

    .line 549
    .local v0, isBriightDivider:Z
    invoke-virtual {p0}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x1010306

    invoke-virtual {v4, v5, v2, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 550
    iget-object v4, v2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v4, :cond_77

    iget-object v4, v2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "dark"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-ne v4, v7, :cond_77

    .line 551
    const/4 v1, 0x1

    .line 553
    :cond_77
    invoke-virtual {p0}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x1010305

    invoke-virtual {v4, v5, v2, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 554
    iget-object v4, v2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v4, :cond_94

    iget-object v4, v2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "dark"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-ne v4, v7, :cond_94

    .line 555
    const/4 v0, 0x1

    .line 557
    :cond_94
    if-ne v1, v7, :cond_b0

    if-nez v0, :cond_b0

    .line 558
    const-string v4, "MobilePrint"

    const-string v5, "MPrintSearchActivity : ListView and Divider is not matched. Set bright divider."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1080014

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 566
    :cond_af
    :goto_af
    return-object v3

    .line 561
    :cond_b0
    if-nez v1, :cond_af

    if-ne v0, v7, :cond_af

    .line 562
    const-string v4, "MobilePrint"

    const-string v5, "MPrintSearchActivity : ListView and Divider is not matched. Set dark divider."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1080012

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    goto :goto_af
.end method

.method private rearrangePrinterListDialog()V
    .registers 7

    .prologue
    .line 596
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mPrinterListDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_6d

    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mListFrame:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_6d

    .line 597
    iget v3, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mListTopGap:I

    if-nez v3, :cond_1e

    .line 598
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 599
    .local v1, listViewRect:Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mListFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 600
    iget v3, v1, Landroid/graphics/Rect;->top:I

    if-lez v3, :cond_1e

    .line 601
    iget v3, v1, Landroid/graphics/Rect;->top:I

    iput v3, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mListTopGap:I

    .line 605
    .end local v1           #listViewRect:Landroid/graphics/Rect;
    :cond_1e
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mListFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 606
    .local v0, layout:Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_59

    .line 607
    iget v3, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mListTopGap:I

    if-lez v3, :cond_5a

    iget v3, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mListTopGap:I

    const/16 v4, 0x12c

    if-ge v3, v4, :cond_5a

    iget v3, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mListTopGap:I

    const/high16 v4, 0x4170

    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int/2addr v3, v4

    mul-int/lit8 v2, v3, 0x2

    .line 608
    .local v2, marginHeight:I
    :goto_3d
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mDisplayManager:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v3

    sub-int/2addr v3, v2

    iget v4, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mListRowHeight:I

    mul-int/lit8 v4, v4, 0x3

    if-ge v3, v4, :cond_66

    .line 609
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mDisplayManager:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 614
    :goto_54
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mListFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 620
    .end local v0           #layout:Landroid/view/ViewGroup$LayoutParams;
    .end local v2           #marginHeight:I
    :cond_59
    :goto_59
    return-void

    .line 607
    .restart local v0       #layout:Landroid/view/ViewGroup$LayoutParams;
    :cond_5a
    invoke-virtual {p0}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_3d

    .line 612
    .restart local v2       #marginHeight:I
    :cond_66
    iget v3, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mListRowHeight:I

    mul-int/lit8 v3, v3, 0x3

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_54

    .line 618
    .end local v0           #layout:Landroid/view/ViewGroup$LayoutParams;
    .end local v2           #marginHeight:I
    :cond_6d
    const-string v3, "MobilePrint"

    const-string v4, "MPrintSearchActivity : mPrinterListDialog or mListFrame is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_59
.end method

.method private scanPrinter()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 659
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mPrinterListDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_d

    .line 660
    const-string v0, "MobilePrint"

    const-string v1, "MPrintSearchActivity : mPrinterListDialog is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    :goto_c
    return-void

    .line 664
    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mScanProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 666
    iget-boolean v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mScanning:Z

    if-nez v0, :cond_36

    .line 668
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mPrinterList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mPrinterList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 669
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mPrinterItemList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mPrinterItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 670
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mListAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 671
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mPrinterList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 672
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mNoDevicesText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 676
    :cond_36
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mSearchManager:Lcom/sec/android/app/mobileprint/MPrintSearchManager;

    if-nez v0, :cond_49

    .line 677
    new-instance v0, Lcom/sec/android/app/mobileprint/MPrintSearchManager;

    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mAppContext:Landroid/content/Context;

    new-instance v2, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback;-><init>(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;Lcom/sec/android/app/mobileprint/MPrintSearchActivity$1;)V

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/mobileprint/MPrintSearchManager;-><init>(Landroid/content/Context;Lcom/sec/android/app/mobileprint/MPrintSearchManager$Callback;)V

    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mSearchManager:Lcom/sec/android/app/mobileprint/MPrintSearchManager;

    .line 679
    :cond_49
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mSearchManager:Lcom/sec/android/app/mobileprint/MPrintSearchManager;

    invoke-virtual {v0}, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->requestSearchPrinter()I

    .line 680
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mScanning:Z

    goto :goto_c
.end method

.method private showPrinterList()V
    .registers 8

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 451
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mPrinterListDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_74

    .line 452
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 453
    .local v6, builder:Landroid/app/AlertDialog$Builder;
    const v0, 0x7f080002

    invoke-virtual {v6, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 454
    const v0, 0x7f080006

    invoke-virtual {v6, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 455
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mDialogKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 456
    const v0, 0x7f08000a

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 457
    invoke-virtual {v6, v2}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    .line 459
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mPrinterListDialog:Landroid/app/AlertDialog;

    .line 461
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_72

    .line 462
    .local v2, listPadding:I
    :goto_32
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mPrinterListDialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->makeupPrinterListLayout()Landroid/view/View;

    move-result-object v1

    move v4, v2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    .line 463
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mPrinterListDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mDialogCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 464
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mPrinterListDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$10;

    invoke-direct {v1, p0}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$10;-><init>(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 476
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mPrinterListDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 478
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mPrinterListDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$11;

    invoke-direct {v1, p0}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$11;-><init>(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 488
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mPrinterListDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$12;

    invoke-direct {v1, p0}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$12;-><init>(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 498
    .end local v2           #listPadding:I
    .end local v6           #builder:Landroid/app/AlertDialog$Builder;
    :goto_71
    return-void

    .restart local v6       #builder:Landroid/app/AlertDialog$Builder;
    :cond_72
    move v2, v3

    .line 461
    goto :goto_32

    .line 496
    .end local v6           #builder:Landroid/app/AlertDialog$Builder;
    :cond_74
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mPrinterListDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_71
.end method

.method private showRestrictAlert()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 408
    iget-boolean v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mReselectMode:Z

    if-nez v0, :cond_15

    iget-boolean v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mRestrictAlertClosed:Z

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mSettingManager:Lcom/sec/android/app/mobileprint/MPrintSettingManager;

    invoke-virtual {v0}, Lcom/sec/android/app/mobileprint/MPrintSettingManager;->loadRestrictAlertInfo()Z

    move-result v0

    if-nez v0, :cond_15

    .line 409
    invoke-virtual {p0, v1}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->showDialog(I)V

    .line 415
    :goto_14
    return-void

    .line 413
    :cond_15
    iput-boolean v1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mRestrictAlertClosed:Z

    .line 414
    invoke-direct {p0}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->startMainProcess()V

    goto :goto_14
.end method

.method private startMainProcess()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 418
    iget-boolean v1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mReselectMode:Z

    if-ne v1, v2, :cond_1e

    .line 419
    iput-boolean v2, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mIsNeededPrinterListDialog:Z

    .line 420
    invoke-direct {p0}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->showPrinterList()V

    .line 421
    invoke-static {}, Lcom/sec/android/app/mobileprint/MPrintCommon;->isUSBConnected()Z

    move-result v1

    if-nez v1, :cond_1a

    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mAppContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/app/mobileprint/MPrintCommon;->isWifiConnected(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 422
    :cond_1a
    invoke-direct {p0}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->scanPrinter()V

    .line 448
    :cond_1d
    :goto_1d
    return-void

    .line 426
    :cond_1e
    invoke-static {}, Lcom/sec/android/app/mobileprint/MPrintCommon;->isUSBConnected()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 427
    invoke-direct {p0}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->getUsbPrinterAttr()V

    goto :goto_1d

    .line 431
    :cond_28
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mSettingManager:Lcom/sec/android/app/mobileprint/MPrintSettingManager;

    invoke-virtual {v1}, Lcom/sec/android/app/mobileprint/MPrintSettingManager;->loadPrinterInfo()Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    move-result-object v0

    .line 432
    .local v0, printerInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;
    invoke-static {v0}, Lcom/sec/android/app/mobileprint/MPrintCommon;->checkPrinterInfo(Lcom/sec/android/app/mobileprint/MPrintPrinterItem;)Z

    move-result v1

    if-ne v1, v2, :cond_3a

    .line 433
    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mSelectedPrinter:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    .line 434
    invoke-direct {p0}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->gotoMainActivity()V

    goto :goto_1d

    .line 438
    :cond_3a
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mAppContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/app/mobileprint/MPrintCommon;->isWifiConnected(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 439
    iput-boolean v2, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mIsNeededPrinterListDialog:Z

    .line 440
    invoke-direct {p0}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->showPrinterList()V

    .line 441
    invoke-direct {p0}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->scanPrinter()V

    goto :goto_1d

    .line 444
    :cond_4d
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->showDialog(I)V

    goto :goto_1d
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter "newConfig"

    .prologue
    .line 392
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 394
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mCurrentWindowOrientation:I

    if-eq v0, v1, :cond_10

    .line 395
    invoke-direct {p0}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->rearrangePrinterListDialog()V

    .line 396
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mCurrentWindowOrientation:I

    .line 398
    :cond_10
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 157
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 159
    iput-object p0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mAppContext:Landroid/content/Context;

    .line 160
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mWifi:Landroid/net/wifi/WifiManager;

    .line 161
    invoke-virtual {p0}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mDisplayManager:Landroid/view/Display;

    .line 162
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 163
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mDisplayManager:Landroid/view/Display;

    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 164
    new-instance v1, Lcom/sec/android/app/mobileprint/MPrintSettingManager;

    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mAppContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sec/android/app/mobileprint/MPrintSettingManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mSettingManager:Lcom/sec/android/app/mobileprint/MPrintSettingManager;

    .line 166
    if-eqz p1, :cond_43

    .line 167
    const-string v1, "never_show_again_checked"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mIsCheckedOnOldRestrictAlert:Z

    .line 168
    const-string v1, "restrict_alert_closed"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mRestrictAlertClosed:Z

    .line 171
    :cond_43
    invoke-virtual {p0}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 172
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "ReselectMode"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mReselectMode:Z

    .line 173
    iget-boolean v1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mReselectMode:Z

    if-nez v1, :cond_5a

    .line 174
    invoke-direct {p0, v0}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->getIntentData(Landroid/content/Intent;)V

    .line 175
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mFilePath:Ljava/lang/String;

    if-nez v1, :cond_a6

    .line 184
    :cond_5a
    :goto_5a
    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mAppContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->setContentView(Landroid/view/View;)V

    .line 186
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mPrinterItemList:Ljava/util/ArrayList;

    .line 187
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mPrinterList:Ljava/util/ArrayList;

    .line 188
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mAppContext:Landroid/content/Context;

    const v3, 0x1090011

    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mPrinterList:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mListAdapter:Landroid/widget/ArrayAdapter;

    .line 190
    new-instance v1, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$3;-><init>(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;)V

    iput-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mDialogKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 198
    new-instance v1, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$4;-><init>(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;)V

    iput-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 211
    new-instance v1, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$5;

    invoke-direct {v1, p0}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$5;-><init>(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;)V

    iput-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mDialogCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 219
    new-instance v1, Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mAppContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mScanProgress:Landroid/widget/ProgressBar;

    .line 220
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mScanProgress:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 221
    return-void

    .line 179
    :cond_a6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MPrintSearchActivity : mFilePath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/mobileprint/MPrintCommon;->printSecuLog(Ljava/lang/String;)V

    goto :goto_5a
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 11
    .parameter "id"

    .prologue
    const v5, 0x7f080005

    const/4 v8, 0x2

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 281
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 282
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f080001

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 285
    if-ne p1, v6, :cond_50

    .line 286
    new-instance v4, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$6;

    invoke-direct {v4, p0}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$6;-><init>(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;)V

    invoke-virtual {v0, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 296
    const v4, 0x7f080006

    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 297
    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mDialogKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 298
    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mDialogCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 320
    :goto_2e
    sparse-switch p1, :sswitch_data_fa

    .line 371
    const-string v4, "MobilePrint"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MPrintSearchActivity : unknown Dialog ID("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :goto_4f
    return-object v3

    .line 300
    :cond_50
    if-ne p1, v8, :cond_65

    .line 302
    const v4, 0x7f080006

    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 311
    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mDialogKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 312
    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mDialogCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_2e

    .line 315
    :cond_65
    const v4, 0x1080027

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 316
    invoke-virtual {v0, v5, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_2e

    .line 322
    :sswitch_6f
    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mAppContext:Landroid/content/Context;

    const v5, 0x7f030005

    invoke-static {v4, v5, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 323
    .local v1, checkboxLayout:Landroid/view/View;
    const v3, 0x7f0c001b

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mNeverShowCheckBox:Landroid/widget/CheckBox;

    .line 324
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mNeverShowCheckBox:Landroid/widget/CheckBox;

    new-instance v4, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$8;

    invoke-direct {v4, p0}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$8;-><init>(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    iget-boolean v3, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mIsCheckedOnOldRestrictAlert:Z

    if-ne v3, v6, :cond_98

    .line 330
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mNeverShowCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 331
    iput-boolean v7, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mIsCheckedOnOldRestrictAlert:Z

    .line 333
    :cond_98
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 375
    .end local v1           #checkboxLayout:Landroid/view/View;
    :goto_9b
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    goto :goto_4f

    .line 337
    :sswitch_a0
    const v3, 0x7f08000d

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 338
    new-array v2, v8, [Ljava/lang/String;

    .line 339
    .local v2, wifis:[Ljava/lang/String;
    new-instance v3, Ljava/lang/String;

    const v4, 0x7f08000e

    invoke-virtual {p0, v4}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v7

    .line 340
    new-instance v3, Ljava/lang/String;

    const v4, 0x7f08000f

    invoke-virtual {p0, v4}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v6

    .line 341
    new-instance v3, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$9;

    invoke-direct {v3, p0}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$9;-><init>(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;)V

    invoke-virtual {v0, v2, v7, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_9b

    .line 359
    .end local v2           #wifis:[Ljava/lang/String;
    :sswitch_cd
    const v3, 0x7f080037

    invoke-virtual {p0, v3}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_9b

    .line 362
    :sswitch_d8
    const v3, 0x7f080038

    invoke-virtual {p0, v3}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_9b

    .line 365
    :sswitch_e3
    const v3, 0x7f08003c

    invoke-virtual {p0, v3}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_9b

    .line 368
    :sswitch_ee
    const v3, 0x7f080035

    invoke-virtual {p0, v3}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_9b

    .line 320
    nop

    :sswitch_data_fa
    .sparse-switch
        0x1 -> :sswitch_6f
        0x2 -> :sswitch_a0
        0x65 -> :sswitch_cd
        0x66 -> :sswitch_d8
        0x69 -> :sswitch_e3
        0x132 -> :sswitch_ee
    .end sparse-switch
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 253
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mSearchManager:Lcom/sec/android/app/mobileprint/MPrintSearchManager;

    if-eqz v0, :cond_a

    .line 254
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mSearchManager:Lcom/sec/android/app/mobileprint/MPrintSearchManager;

    invoke-virtual {v0}, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->release()V

    .line 257
    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_15

    .line 258
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 259
    iput-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 262
    :cond_15
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mPrinterListDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_20

    .line 263
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mPrinterListDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 264
    iput-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mPrinterListDialog:Landroid/app/AlertDialog;

    .line 267
    :cond_20
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 268
    return-void
.end method

.method protected onPause()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 239
    invoke-virtual {p0, v0, v0}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->overridePendingTransition(II)V

    .line 240
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 241
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .registers 2
    .parameter "savedInstanceState"

    .prologue
    .line 225
    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 226
    invoke-direct {p0}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->showRestrictAlert()V

    .line 227
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .registers 6
    .parameter "id"
    .parameter "dialog"
    .parameter "args"

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 380
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    .line 382
    if-ne p1, v0, :cond_b

    .line 383
    invoke-virtual {p0, v0}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->removeDialog(I)V

    .line 388
    :cond_a
    :goto_a
    return-void

    .line 385
    :cond_b
    if-ne p1, v1, :cond_a

    .line 386
    invoke-virtual {p0, v1}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->removeDialog(I)V

    goto :goto_a
.end method

.method protected onResume()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 231
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 232
    iget-boolean v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mRestrictAlertClosed:Z

    if-ne v0, v1, :cond_f

    iget-boolean v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mIsNeededPrinterListDialog:Z

    if-ne v0, v1, :cond_f

    .line 233
    invoke-direct {p0}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->showPrinterList()V

    .line 235
    :cond_f
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 272
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mNeverShowCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_f

    .line 273
    const-string v0, "never_show_again_checked"

    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mNeverShowCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 275
    :cond_f
    const-string v0, "restrict_alert_closed"

    iget-boolean v1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mRestrictAlertClosed:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 276
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 277
    return-void
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mSearchManager:Lcom/sec/android/app/mobileprint/MPrintSearchManager;

    if-eqz v0, :cond_9

    .line 246
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mSearchManager:Lcom/sec/android/app/mobileprint/MPrintSearchManager;

    invoke-virtual {v0}, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->requestCancelSearching()I

    .line 248
    :cond_9
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 249
    return-void
.end method
