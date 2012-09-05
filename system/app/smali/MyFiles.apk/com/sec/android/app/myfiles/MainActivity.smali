.class public Lcom/sec/android/app/myfiles/MainActivity;
.super Landroid/app/ActivityGroup;
.source "MainActivity.java"


# static fields
.field public static mContext:Landroid/content/Context;

.field public static sMyThis:Lcom/sec/android/app/myfiles/MainActivity;


# instance fields
.field private intentFilter:Landroid/content/IntentFilter;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCurrentView:I

.field public mHandler:Landroid/os/Handler;

.field private mHomeButton:Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;

.field private mIsActivityaunched:Z

.field private mMainView:Lcom/sec/android/app/myfiles/MainActivityView;

.field private mObserver:Landroid/database/ContentObserver;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSdEjectFilter:Landroid/content/IntentFilter;

.field private mSdEjectReceiver:Landroid/content/BroadcastReceiver;

.field private mUpButton:Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;

.field private mWidgetPanel:Lcom/sec/android/app/myfiles/Panel_Myfilelist_bySpinner;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 53
    sput-object v0, Lcom/sec/android/app/myfiles/MainActivity;->mContext:Landroid/content/Context;

    .line 56
    sput-object v0, Lcom/sec/android/app/myfiles/MainActivity;->sMyThis:Lcom/sec/android/app/myfiles/MainActivity;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Landroid/app/ActivityGroup;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/myfiles/MainActivity;->mIsActivityaunched:Z

    .line 55
    iput-object v1, p0, Lcom/sec/android/app/myfiles/MainActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 57
    iput-object v1, p0, Lcom/sec/android/app/myfiles/MainActivity;->intentFilter:Landroid/content/IntentFilter;

    .line 58
    iput-object v1, p0, Lcom/sec/android/app/myfiles/MainActivity;->mSdEjectReceiver:Landroid/content/BroadcastReceiver;

    .line 59
    iput-object v1, p0, Lcom/sec/android/app/myfiles/MainActivity;->mSdEjectFilter:Landroid/content/IntentFilter;

    .line 63
    new-instance v0, Lcom/sec/android/app/myfiles/MainActivity$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/myfiles/MainActivity$1;-><init>(Lcom/sec/android/app/myfiles/MainActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/MainActivity;->mObserver:Landroid/database/ContentObserver;

    .line 75
    new-instance v0, Lcom/sec/android/app/myfiles/MainActivity$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/myfiles/MainActivity$2;-><init>(Lcom/sec/android/app/myfiles/MainActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/MainActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/myfiles/MainActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/MainActivity;->refreshActivity()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/myfiles/MainActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/sec/android/app/myfiles/MainActivity;->mIsActivityaunched:Z

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/myfiles/MainActivity;)Lcom/sec/android/app/myfiles/MainActivityView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/app/myfiles/MainActivity;->mMainView:Lcom/sec/android/app/myfiles/MainActivityView;

    return-object v0
.end method

.method private initViews()V
    .registers 5

    .prologue
    .line 279
    iget-object v0, p0, Lcom/sec/android/app/myfiles/MainActivity;->mMainView:Lcom/sec/android/app/myfiles/MainActivityView;

    iget-object v1, p0, Lcom/sec/android/app/myfiles/MainActivity;->mMainView:Lcom/sec/android/app/myfiles/MainActivityView;

    const-string v2, "All"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/myfiles/MainActivityView;->newTabSpec(Ljava/lang/String;)Lcom/sec/android/app/myfiles/MainActivityView$TabSpec;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/sec/android/app/myfiles/AllFileBrowser;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/app/myfiles/MainActivityView$TabSpec;->setContent(Landroid/content/Intent;)Lcom/sec/android/app/myfiles/MainActivityView$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/MainActivityView;->addTab(Lcom/sec/android/app/myfiles/MainActivityView$TabSpec;)V

    .line 282
    iget-object v0, p0, Lcom/sec/android/app/myfiles/MainActivity;->mMainView:Lcom/sec/android/app/myfiles/MainActivityView;

    iget-object v1, p0, Lcom/sec/android/app/myfiles/MainActivity;->mMainView:Lcom/sec/android/app/myfiles/MainActivityView;

    const-string v2, "Detail_list"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/myfiles/MainActivityView;->newTabSpec(Ljava/lang/String;)Lcom/sec/android/app/myfiles/MainActivityView$TabSpec;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/app/myfiles/MainActivityView$TabSpec;->setContent(Landroid/content/Intent;)Lcom/sec/android/app/myfiles/MainActivityView$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/MainActivityView;->addTab(Lcom/sec/android/app/myfiles/MainActivityView$TabSpec;)V

    .line 284
    iget-object v0, p0, Lcom/sec/android/app/myfiles/MainActivity;->mMainView:Lcom/sec/android/app/myfiles/MainActivityView;

    iget-object v1, p0, Lcom/sec/android/app/myfiles/MainActivity;->mMainView:Lcom/sec/android/app/myfiles/MainActivityView;

    const-string v2, "All_Thumb"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/myfiles/MainActivityView;->newTabSpec(Ljava/lang/String;)Lcom/sec/android/app/myfiles/MainActivityView$TabSpec;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/app/myfiles/MainActivityView$TabSpec;->setContent(Landroid/content/Intent;)Lcom/sec/android/app/myfiles/MainActivityView$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/MainActivityView;->addTab(Lcom/sec/android/app/myfiles/MainActivityView$TabSpec;)V

    .line 290
    return-void
.end method

.method private refreshActivity()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 396
    invoke-static {}, Lcom/sec/android/app/myfiles/FileUtils;->InitMediaList()V

    .line 397
    iget-object v0, p0, Lcom/sec/android/app/myfiles/MainActivity;->mMainView:Lcom/sec/android/app/myfiles/MainActivityView;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/MainActivityView;->getCurrentTab()I

    move-result v0

    packed-switch v0, :pswitch_data_20

    .line 410
    :goto_d
    return-void

    .line 399
    :pswitch_e
    sget-object v0, Lcom/sec/android/app/myfiles/AllFileBrowser;->sMyThis:Lcom/sec/android/app/myfiles/AllFileBrowser;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/AllFileBrowser;->refreshActivity(Z)V

    goto :goto_d

    .line 402
    :pswitch_14
    sget-object v0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->sMyThis:Lcom/sec/android/app/myfiles/AllFileBrowserDetail;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->refreshActivity(Z)V

    goto :goto_d

    .line 405
    :pswitch_1a
    sget-object v0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->sMyThis:Lcom/sec/android/app/myfiles/AllFileBrowserThumb;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->refreshActivity(Z)V

    goto :goto_d

    .line 397
    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_e
        :pswitch_14
        :pswitch_1a
    .end packed-switch
.end method

.method private setSdEjectReceiver()V
    .registers 3

    .prologue
    .line 132
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/MainActivity;->mSdEjectFilter:Landroid/content/IntentFilter;

    .line 133
    iget-object v0, p0, Lcom/sec/android/app/myfiles/MainActivity;->mSdEjectFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/sec/android/app/myfiles/MainActivity;->mSdEjectFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/sec/android/app/myfiles/MainActivity;->mSdEjectFilter:Landroid/content/IntentFilter;

    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 137
    new-instance v0, Lcom/sec/android/app/myfiles/MainActivity$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/myfiles/MainActivity$3;-><init>(Lcom/sec/android/app/myfiles/MainActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/MainActivity;->mSdEjectReceiver:Landroid/content/BroadcastReceiver;

    .line 188
    iget-object v0, p0, Lcom/sec/android/app/myfiles/MainActivity;->mSdEjectReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/sec/android/app/myfiles/MainActivity;->mSdEjectFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/myfiles/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 189
    return-void
.end method


# virtual methods
.method public changeViewMode(I)V
    .registers 5
    .parameter "view"

    .prologue
    .line 191
    iput p1, p0, Lcom/sec/android/app/myfiles/MainActivity;->mCurrentView:I

    .line 192
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/myfiles/Util/SharedDataStore;

    move-result-object v0

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->setLastModifiedTime(J)V

    .line 193
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/myfiles/Util/SharedDataStore;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/myfiles/MainActivity;->mCurrentView:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->setCurrentView(I)V

    .line 194
    iget-object v0, p0, Lcom/sec/android/app/myfiles/MainActivity;->mMainView:Lcom/sec/android/app/myfiles/MainActivityView;

    iget v1, p0, Lcom/sec/android/app/myfiles/MainActivity;->mCurrentView:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/MainActivityView;->setCurrentTab(I)V

    .line 195
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 475
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/myfiles/MainActivity;->mIsActivityaunched:Z

    .line 476
    packed-switch p1, :pswitch_data_14

    .line 488
    :cond_6
    :goto_6
    return-void

    .line 479
    :pswitch_7
    invoke-static {}, Lcom/sec/android/app/myfiles/Utils;->hasReadableStorage()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x4

    if-ne p2, v0, :cond_6

    .line 480
    :cond_10
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/MainActivity;->finish()V

    goto :goto_6

    .line 476
    :pswitch_data_14
    .packed-switch 0x3e7
        :pswitch_7
    .end packed-switch
.end method

.method public onBackPressed()V
    .registers 3

    .prologue
    .line 435
    iget v0, p0, Lcom/sec/android/app/myfiles/MainActivity;->mCurrentView:I

    if-nez v0, :cond_a

    .line 436
    sget-object v0, Lcom/sec/android/app/myfiles/AllFileBrowser;->sMyThis:Lcom/sec/android/app/myfiles/AllFileBrowser;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/AllFileBrowser;->onBackPressed()V

    .line 442
    :cond_9
    :goto_9
    return-void

    .line 437
    :cond_a
    iget v0, p0, Lcom/sec/android/app/myfiles/MainActivity;->mCurrentView:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    .line 438
    sget-object v0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->sMyThis:Lcom/sec/android/app/myfiles/AllFileBrowserDetail;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->onBackPressed()V

    goto :goto_9

    .line 439
    :cond_15
    iget v0, p0, Lcom/sec/android/app/myfiles/MainActivity;->mCurrentView:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    .line 440
    sget-object v0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->sMyThis:Lcom/sec/android/app/myfiles/AllFileBrowserThumb;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->onBackPressed()V

    goto :goto_9
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter "newConfig"

    .prologue
    .line 85
    const-string v0, "ActivityManager"

    const-string v1, "MainActivity OnConfigrationChange"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 87
    iget-object v0, p0, Lcom/sec/android/app/myfiles/MainActivity;->mUpButton:Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;->resizeButton()V

    .line 88
    iget-object v0, p0, Lcom/sec/android/app/myfiles/MainActivity;->mHomeButton:Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;->resizeButton()V

    .line 90
    sget-object v0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->sMyThis:Lcom/sec/android/app/myfiles/AllFileBrowserThumb;

    if-eqz v0, :cond_1d

    .line 91
    sget-object v0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->sMyThis:Lcom/sec/android/app/myfiles/AllFileBrowserThumb;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->setNumColumnsByConfiguration(Landroid/content/res/Configuration;)V

    .line 94
    :cond_1d
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 97
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onCreate(Landroid/os/Bundle;)V

    .line 98
    invoke-virtual {p0, v2}, Lcom/sec/android/app/myfiles/MainActivity;->requestWindowFeature(I)Z

    .line 99
    const v0, 0x7f030010

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/MainActivity;->setContentView(I)V

    .line 100
    const-string v0, "MyFiles"

    const-string v1, "MainActivity-onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    sput-object p0, Lcom/sec/android/app/myfiles/MainActivity;->sMyThis:Lcom/sec/android/app/myfiles/MainActivity;

    .line 102
    invoke-static {p0}, Lcom/sec/android/app/myfiles/Utils;->checkMediaScannerScanning(Landroid/content/Context;)Z

    move-result v0

    if-ne v0, v2, :cond_86

    .line 103
    invoke-static {v2}, Lcom/sec/android/app/myfiles/Utils;->setMediaScannerScannig(Z)V

    .line 107
    :goto_20
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/myfiles/Util/SharedDataStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->getCurrentView()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/myfiles/MainActivity;->mCurrentView:I

    .line 108
    sput-object p0, Lcom/sec/android/app/myfiles/MainActivity;->mContext:Landroid/content/Context;

    .line 109
    const v0, 0x7f0c001a

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/myfiles/MainActivityView;

    iput-object v0, p0, Lcom/sec/android/app/myfiles/MainActivity;->mMainView:Lcom/sec/android/app/myfiles/MainActivityView;

    .line 110
    const v0, 0x7f0c0019

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/myfiles/Panel_Myfilelist_bySpinner;

    iput-object v0, p0, Lcom/sec/android/app/myfiles/MainActivity;->mWidgetPanel:Lcom/sec/android/app/myfiles/Panel_Myfilelist_bySpinner;

    .line 111
    iget-object v0, p0, Lcom/sec/android/app/myfiles/MainActivity;->mWidgetPanel:Lcom/sec/android/app/myfiles/Panel_Myfilelist_bySpinner;

    const v1, 0x7f0c003e

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/Panel_Myfilelist_bySpinner;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;

    iput-object v0, p0, Lcom/sec/android/app/myfiles/MainActivity;->mUpButton:Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;

    .line 112
    iget-object v0, p0, Lcom/sec/android/app/myfiles/MainActivity;->mWidgetPanel:Lcom/sec/android/app/myfiles/Panel_Myfilelist_bySpinner;

    const v1, 0x7f0c003c

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/Panel_Myfilelist_bySpinner;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;

    iput-object v0, p0, Lcom/sec/android/app/myfiles/MainActivity;->mHomeButton:Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;

    .line 115
    iget-object v0, p0, Lcom/sec/android/app/myfiles/MainActivity;->mMainView:Lcom/sec/android/app/myfiles/MainActivityView;

    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/MainActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/MainActivityView;->setup(Landroid/app/LocalActivityManager;)V

    .line 116
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/MainActivity;->initViews()V

    .line 117
    iget-object v0, p0, Lcom/sec/android/app/myfiles/MainActivity;->mMainView:Lcom/sec/android/app/myfiles/MainActivityView;

    iget v1, p0, Lcom/sec/android/app/myfiles/MainActivity;->mCurrentView:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/MainActivityView;->setCurrentTab(I)V

    .line 119
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/MainActivity;->mContentResolver:Landroid/content/ContentResolver;

    .line 121
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/MainActivity;->setSdEjectReceiver()V

    .line 123
    iget-object v0, p0, Lcom/sec/android/app/myfiles/MainActivity;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/android/app/myfiles/MainActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 125
    return-void

    .line 105
    :cond_86
    invoke-static {v3}, Lcom/sec/android/app/myfiles/Utils;->setMediaScannerScannig(Z)V

    goto :goto_20
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 490
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 491
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 492
    .local v0, inflater:Landroid/view/MenuInflater;
    const/high16 v1, 0x7f0b

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 493
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 452
    const-string v0, "MyFiles"

    const-string v1, "MainActivity : destroy my files"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    iget-object v0, p0, Lcom/sec/android/app/myfiles/MainActivity;->mSdEjectReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_13

    .line 455
    iget-object v0, p0, Lcom/sec/android/app/myfiles/MainActivity;->mSdEjectReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 456
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/MainActivity;->mSdEjectReceiver:Landroid/content/BroadcastReceiver;

    .line 459
    :cond_13
    iget-object v0, p0, Lcom/sec/android/app/myfiles/MainActivity;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_1e

    .line 460
    iget-object v0, p0, Lcom/sec/android/app/myfiles/MainActivity;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sec/android/app/myfiles/MainActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 463
    :cond_1e
    invoke-static {}, Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher;->getInstance()Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher;->dismiss()V

    .line 465
    invoke-super {p0}, Landroid/app/ActivityGroup;->onDestroy()V

    .line 466
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 5
    .parameter "intent"

    .prologue
    .line 292
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onNewIntent(Landroid/content/Intent;)V

    .line 293
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 295
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_27

    const-string v1, "view"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    :goto_f
    iput v1, p0, Lcom/sec/android/app/myfiles/MainActivity;->mCurrentView:I

    .line 296
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/myfiles/Util/SharedDataStore;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/myfiles/MainActivity;->mCurrentView:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->setCurrentView(I)V

    .line 297
    iget-object v1, p0, Lcom/sec/android/app/myfiles/MainActivity;->mMainView:Lcom/sec/android/app/myfiles/MainActivityView;

    invoke-virtual {v1}, Lcom/sec/android/app/myfiles/MainActivityView;->clearAllTabs()V

    .line 298
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/MainActivity;->initViews()V

    .line 299
    return-void

    .line 295
    :cond_27
    const/16 v1, 0x63

    goto :goto_f
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    .line 496
    iget v0, p0, Lcom/sec/android/app/myfiles/MainActivity;->mCurrentView:I

    if-nez v0, :cond_b

    .line 497
    sget-object v0, Lcom/sec/android/app/myfiles/AllFileBrowser;->sMyThis:Lcom/sec/android/app/myfiles/AllFileBrowser;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/myfiles/AllFileBrowser;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 502
    :goto_a
    return v0

    .line 498
    :cond_b
    iget v0, p0, Lcom/sec/android/app/myfiles/MainActivity;->mCurrentView:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    .line 499
    sget-object v0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->sMyThis:Lcom/sec/android/app/myfiles/AllFileBrowserDetail;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_a

    .line 500
    :cond_17
    iget v0, p0, Lcom/sec/android/app/myfiles/MainActivity;->mCurrentView:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_23

    .line 501
    sget-object v0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->sMyThis:Lcom/sec/android/app/myfiles/AllFileBrowserThumb;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_a

    .line 502
    :cond_23
    const/4 v0, 0x0

    goto :goto_a
.end method

.method protected onPause()V
    .registers 5

    .prologue
    .line 414
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/MainActivity;->unRegisterReceiver()V

    .line 415
    const-string v2, "MyFiles"

    const-string v3, "MainActivity-onPause"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    const-string v2, "MyFiles"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/myfiles/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 417
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 424
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "current_view"

    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/myfiles/Util/SharedDataStore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->getCurrentView()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 426
    const-string v2, "current_sort_by"

    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/myfiles/Util/SharedDataStore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->getCurrentSortBy()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 428
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 429
    invoke-super {p0}, Landroid/app/ActivityGroup;->onPause()V

    .line 430
    return-void
.end method

.method public onResume()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 303
    const-string v0, "MyFiles"

    const-string v1, "MainActivity-onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    sget-object v0, Lcom/sec/android/app/myfiles/MainActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/myfiles/Utils;->isMountedStateCheck(Landroid/content/Context;)V

    .line 305
    sput-object p0, Lcom/sec/android/app/myfiles/MainActivity;->sMyThis:Lcom/sec/android/app/myfiles/MainActivity;

    .line 306
    invoke-super {p0}, Landroid/app/ActivityGroup;->onResume()V

    .line 308
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/MainActivity;->intentFilter:Landroid/content/IntentFilter;

    .line 309
    iget-object v0, p0, Lcom/sec/android/app/myfiles/MainActivity;->intentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/sec/android/app/myfiles/MainActivity;->intentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lcom/sec/android/app/myfiles/MainActivity;->intentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/sec/android/app/myfiles/MainActivity;->intentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, Lcom/sec/android/app/myfiles/MainActivity;->intentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lcom/sec/android/app/myfiles/MainActivity;->intentFilter:Landroid/content/IntentFilter;

    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 319
    new-instance v0, Lcom/sec/android/app/myfiles/MainActivity$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/myfiles/MainActivity$4;-><init>(Lcom/sec/android/app/myfiles/MainActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/MainActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 378
    iget-object v0, p0, Lcom/sec/android/app/myfiles/MainActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/sec/android/app/myfiles/MainActivity;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/myfiles/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 380
    invoke-static {}, Lcom/sec/android/app/myfiles/Utils;->hasReadableStorage()Z

    move-result v0

    if-nez v0, :cond_6a

    .line 382
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/sec/android/app/myfiles/MainActivity;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sec/android/app/myfiles/ListEmptyActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 383
    iget-boolean v1, p0, Lcom/sec/android/app/myfiles/MainActivity;->mIsActivityaunched:Z

    if-nez v1, :cond_6a

    .line 385
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/MainActivity;->isFinishing()Z

    move-result v1

    if-ne v1, v3, :cond_6b

    .line 394
    :cond_6a
    :goto_6a
    return-void

    .line 389
    :cond_6b
    iput-boolean v3, p0, Lcom/sec/android/app/myfiles/MainActivity;->mIsActivityaunched:Z

    .line 390
    const/16 v1, 0x3e7

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/myfiles/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_6a
.end method

.method public onStop()V
    .registers 3

    .prologue
    .line 446
    const-string v0, "MyFiles"

    const-string v1, "MainActivity-onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    invoke-super {p0}, Landroid/app/ActivityGroup;->onStop()V

    .line 448
    return-void
.end method

.method public unRegisterReceiver()V
    .registers 2

    .prologue
    .line 468
    iget-object v0, p0, Lcom/sec/android/app/myfiles/MainActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_c

    .line 469
    iget-object v0, p0, Lcom/sec/android/app/myfiles/MainActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 470
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/MainActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 472
    :cond_c
    return-void
.end method
