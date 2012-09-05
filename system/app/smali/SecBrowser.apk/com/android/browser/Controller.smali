.class public Lcom/android/browser/Controller;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Lcom/android/browser/UiController;
.implements Lcom/android/browser/WebViewController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/Controller$SelectText;,
        Lcom/android/browser/Controller$CopyImage;,
        Lcom/android/browser/Controller$Download;,
        Lcom/android/browser/Controller$Copy;,
        Lcom/android/browser/Controller$PruneThumbnails;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static ENABLE_PINCH_ZOOM_LISTENER:Z

.field private static ENABLE_POWER_CONTROL:Z

.field private static final WINDOW_SHORTCUT_ID_ARRAY:[I

.field protected static mStorageManager:Landroid/os/storage/StorageManager;

.field protected static mStorageVolumes:[Landroid/os/storage/StorageVolume;

.field private static minimumSpace:J

.field private static sThumbnailBitmap:Landroid/graphics/Bitmap;


# instance fields
.field private isReaderArticle:Z

.field private mActionMode:Landroid/view/ActionMode;

.field private mActivity:Landroid/app/Activity;

.field private mActivityPaused:Z

.field mAddFeedUrl:Ljava/lang/String;

.field private mAutoFillSetupMessage:Landroid/os/Message;

.field private mBlockEvents:Z

.field private mBookmarksObserver:Landroid/database/ContentObserver;

.field private mBrowserActivity:Lcom/android/browser/BrowserActivity;

.field private mCachedMenu:Landroid/view/Menu;

.field private mConfigChanged:Z

.field private mCrashRecoveryHandler:Lcom/android/browser/CrashRecoveryHandler;

.field private mCurrentMenuState:I

.field private mExtendedMenuOpen:Z

.field private mFactory:Lcom/android/browser/WebViewFactory;

.field private mHandler:Landroid/os/Handler;

.field private mInLoad:Z

.field private mIntentHandler:Lcom/android/browser/IntentHandler;

.field private mLoadStopped:Z

.field private mMenuIsDown:Z

.field private mMenuState:I

.field private mNetworkHandler:Lcom/android/browser/NetworkStateHandler;

.field private mOldMenuState:I

.field private mOptionsMenuOpen:Z

.field private mPageDialogsHandler:Lcom/android/browser/PageDialogsHandler;

.field private mPrint:Lcom/android/browser/PrintSec;

.field private mSecNavScreenGestureDetector:Lcom/android/browser/SecNavScreenGestureDetector;

.field private mSecPowerControl:Lcom/android/browser/SecPowerControl;

.field private mSettings:Lcom/android/browser/BrowserSettings;

.field private mShouldShowErrorConsole:Z

.field private mSystemAllowGeolocationOrigins:Lcom/android/browser/SystemAllowGeolocationOrigins;

.field private mTabControl:Lcom/android/browser/TabControl;

.field private mUi:Lcom/android/browser/UI;

.field private mUploadHandler:Lcom/android/browser/UploadHandler;

.field private mUrlHandler:Lcom/android/browser/UrlHandler;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field public nextcontent:Ljava/lang/String;

.field public readerScript:Ljava/lang/String;

.field public recogScript:Ljava/lang/String;

.field public sReaderContent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 131
    const-class v0, Lcom/android/browser/Controller;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_25

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/android/browser/Controller;->$assertionsDisabled:Z

    .line 183
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_28

    sput-object v0, Lcom/android/browser/Controller;->WINDOW_SHORTCUT_ID_ARRAY:[I

    .line 271
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getPinchZoomListner()Z

    move-result v0

    sput-boolean v0, Lcom/android/browser/Controller;->ENABLE_PINCH_ZOOM_LISTENER:Z

    .line 272
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getPowerControl()Z

    move-result v0

    sput-boolean v0, Lcom/android/browser/Controller;->ENABLE_POWER_CONTROL:Z

    .line 284
    const-wide/16 v0, 0x2800

    sput-wide v0, Lcom/android/browser/Controller;->minimumSpace:J

    return-void

    .line 131
    :cond_25
    const/4 v0, 0x0

    goto :goto_9

    .line 183
    nop

    :array_28
    .array-data 0x4
        0x29t 0x1t 0xdt 0x7ft
        0x2at 0x1t 0xdt 0x7ft
        0x2bt 0x1t 0xdt 0x7ft
        0x2ct 0x1t 0xdt 0x7ft
        0x2dt 0x1t 0xdt 0x7ft
        0x2et 0x1t 0xdt 0x7ft
        0x2ft 0x1t 0xdt 0x7ft
        0x30t 0x1t 0xdt 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .registers 7
    .parameter "browser"
    .parameter "preloadCrashState"

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 288
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput-object v0, p0, Lcom/android/browser/Controller;->readerScript:Ljava/lang/String;

    .line 171
    iput-object v0, p0, Lcom/android/browser/Controller;->recogScript:Ljava/lang/String;

    .line 223
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/browser/Controller;->mCurrentMenuState:I

    .line 224
    const v0, 0x7f0d0110

    iput v0, p0, Lcom/android/browser/Controller;->mMenuState:I

    .line 225
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/browser/Controller;->mOldMenuState:I

    .line 259
    iput-boolean v3, p0, Lcom/android/browser/Controller;->mActivityPaused:Z

    .line 289
    iput-object p1, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    move-object v0, p1

    .line 290
    check-cast v0, Lcom/android/browser/BrowserActivity;

    iput-object v0, p0, Lcom/android/browser/Controller;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    .line 291
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/Controller;->mSettings:Lcom/android/browser/BrowserSettings;

    .line 292
    new-instance v0, Lcom/android/browser/TabControl;

    invoke-direct {v0, p0}, Lcom/android/browser/TabControl;-><init>(Lcom/android/browser/Controller;)V

    iput-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    .line 293
    iget-object v0, p0, Lcom/android/browser/Controller;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v0, p0}, Lcom/android/browser/BrowserSettings;->setController(Lcom/android/browser/Controller;)V

    .line 294
    invoke-static {p0}, Lcom/android/browser/CrashRecoveryHandler;->initialize(Lcom/android/browser/Controller;)Lcom/android/browser/CrashRecoveryHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/Controller;->mCrashRecoveryHandler:Lcom/android/browser/CrashRecoveryHandler;

    .line 295
    if-eqz p2, :cond_3c

    .line 296
    iget-object v0, p0, Lcom/android/browser/Controller;->mCrashRecoveryHandler:Lcom/android/browser/CrashRecoveryHandler;

    invoke-virtual {v0}, Lcom/android/browser/CrashRecoveryHandler;->preloadCrashState()V

    .line 298
    :cond_3c
    new-instance v0, Lcom/android/browser/BrowserWebViewFactory;

    invoke-direct {v0, p1}, Lcom/android/browser/BrowserWebViewFactory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/browser/Controller;->mFactory:Lcom/android/browser/WebViewFactory;

    .line 300
    new-instance v0, Lcom/android/browser/UrlHandler;

    invoke-direct {v0, p0}, Lcom/android/browser/UrlHandler;-><init>(Lcom/android/browser/Controller;)V

    iput-object v0, p0, Lcom/android/browser/Controller;->mUrlHandler:Lcom/android/browser/UrlHandler;

    .line 301
    new-instance v0, Lcom/android/browser/IntentHandler;

    iget-object v1, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Lcom/android/browser/IntentHandler;-><init>(Landroid/app/Activity;Lcom/android/browser/Controller;)V

    iput-object v0, p0, Lcom/android/browser/Controller;->mIntentHandler:Lcom/android/browser/IntentHandler;

    .line 302
    new-instance v0, Lcom/android/browser/PageDialogsHandler;

    iget-object v1, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Lcom/android/browser/PageDialogsHandler;-><init>(Landroid/content/Context;Lcom/android/browser/Controller;)V

    iput-object v0, p0, Lcom/android/browser/Controller;->mPageDialogsHandler:Lcom/android/browser/PageDialogsHandler;

    .line 305
    sget-boolean v0, Lcom/android/browser/Controller;->ENABLE_PINCH_ZOOM_LISTENER:Z

    if-eqz v0, :cond_71

    iget-object v0, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/browser/BrowserActivity;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_71

    .line 306
    new-instance v0, Lcom/android/browser/SecNavScreenGestureDetector;

    iget-object v1, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/android/browser/SecNavScreenGestureDetector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/browser/Controller;->mSecNavScreenGestureDetector:Lcom/android/browser/SecNavScreenGestureDetector;

    .line 309
    :cond_71
    sget-boolean v0, Lcom/android/browser/Controller;->ENABLE_POWER_CONTROL:Z

    if-eqz v0, :cond_88

    iget-object v0, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/browser/BrowserActivity;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_88

    .line 310
    new-instance v0, Lcom/android/browser/SecPowerControl;

    iget-object v1, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/browser/Controller;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-direct {v0, v1, v2}, Lcom/android/browser/SecPowerControl;-><init>(Landroid/app/Activity;Lcom/android/browser/BrowserSettings;)V

    iput-object v0, p0, Lcom/android/browser/Controller;->mSecPowerControl:Lcom/android/browser/SecPowerControl;

    .line 313
    :cond_88
    invoke-direct {p0}, Lcom/android/browser/Controller;->startHandler()V

    .line 314
    new-instance v0, Lcom/android/browser/Controller$1;

    iget-object v1, p0, Lcom/android/browser/Controller;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/browser/Controller$1;-><init>(Lcom/android/browser/Controller;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/browser/Controller;->mBookmarksObserver:Landroid/database/ContentObserver;

    .line 324
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/browser/Controller;->mBookmarksObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 328
    new-instance v0, Lcom/android/browser/PrintSec;

    iget-object v1, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-direct {v0, v1, v2}, Lcom/android/browser/PrintSec;-><init>(Landroid/app/Activity;Lcom/android/browser/TabControl;)V

    iput-object v0, p0, Lcom/android/browser/Controller;->mPrint:Lcom/android/browser/PrintSec;

    .line 331
    new-instance v0, Lcom/android/browser/NetworkStateHandler;

    iget-object v1, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Lcom/android/browser/NetworkStateHandler;-><init>(Landroid/app/Activity;Lcom/android/browser/Controller;)V

    iput-object v0, p0, Lcom/android/browser/Controller;->mNetworkHandler:Lcom/android/browser/NetworkStateHandler;

    .line 333
    new-instance v0, Lcom/android/browser/SystemAllowGeolocationOrigins;

    iget-object v1, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/browser/SystemAllowGeolocationOrigins;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/browser/Controller;->mSystemAllowGeolocationOrigins:Lcom/android/browser/SystemAllowGeolocationOrigins;

    .line 335
    iget-object v0, p0, Lcom/android/browser/Controller;->mSystemAllowGeolocationOrigins:Lcom/android/browser/SystemAllowGeolocationOrigins;

    invoke-virtual {v0}, Lcom/android/browser/SystemAllowGeolocationOrigins;->start()V

    .line 337
    invoke-direct {p0}, Lcom/android/browser/Controller;->openIconDatabase()V

    .line 338
    return-void
.end method

.method public static GetAvailableExternalMemorySize()Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    .line 2470
    const/4 v0, 0x0

    .line 2471
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/browser/BrowserSettings;->isDownloadInternalMemory()Z

    move-result v2

    if-ne v2, v1, :cond_15

    .line 2472
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/android/browser/Controller;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2474
    :cond_15
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/browser/BrowserSettings;->isDownloadInternalMemory()Z

    move-result v2

    if-nez v2, :cond_28

    .line 2475
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/android/browser/Controller;->getExternalSDStoragePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2477
    :cond_28
    new-instance v2, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 2478
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v3, v0

    .line 2479
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v5, v0

    .line 2480
    mul-long v2, v5, v3

    .line 2481
    sget-wide v4, Lcom/android/browser/Controller;->minimumSpace:J

    cmp-long v0, v2, v4

    if-ltz v0, :cond_4c

    .line 2482
    const-string v0, "Controller"

    const-string v2, "GetAvailableExternalMemorySize : true"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 2487
    :goto_4b
    return v0

    .line 2486
    :cond_4c
    const-string v0, "Controller"

    const-string v1, "GetAvailableExternalMemorySize : false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2487
    const/4 v0, 0x0

    goto :goto_4b
.end method

.method static synthetic access$000(Lcom/android/browser/Controller;)Lcom/android/browser/TabControl;
    .registers 2
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/browser/Controller;Landroid/os/Bundle;Landroid/content/Intent;JZ)V
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 131
    invoke-direct/range {p0 .. p5}, Lcom/android/browser/Controller;->onPreloginFinished(Landroid/os/Bundle;Landroid/content/Intent;JZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/browser/Controller;)Landroid/app/Activity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/browser/Controller;)Lcom/android/browser/BrowserSettings;
    .registers 2
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/browser/Controller;->mSettings:Lcom/android/browser/BrowserSettings;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/browser/Controller;Ljava/lang/CharSequence;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/android/browser/Controller;->copy(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/browser/Controller;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/browser/Controller;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/browser/Controller;Lcom/android/browser/Tab;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/android/browser/Controller;->updateScreenshot(Lcom/android/browser/Tab;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/browser/Controller;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/browser/Controller;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/browser/Controller;)Lcom/android/browser/UI;
    .registers 2
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    return-object v0
.end method

.method private copy(Ljava/lang/CharSequence;)V
    .registers 6
    .parameter "text"

    .prologue
    .line 720
    iget-object v1, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 722
    .local v0, cm:Landroid/content/ClipboardManager;
    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 724
    iget-object v1, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    const v2, 0x10405c2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 725
    return-void
.end method

.method private createNewTab(ZZZ)Lcom/android/browser/Tab;
    .registers 6
    .parameter "incognito"
    .parameter "setActive"
    .parameter "useCurrent"

    .prologue
    .line 2936
    const/4 v0, 0x0

    .line 2937
    .local v0, tab:Lcom/android/browser/Tab;
    iget-object v1, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->canCreateNewTab()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 2938
    iget-object v1, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1, p1}, Lcom/android/browser/TabControl;->createNewTab(Z)Lcom/android/browser/Tab;

    move-result-object v0

    .line 2939
    invoke-virtual {p0, v0}, Lcom/android/browser/Controller;->addTab(Lcom/android/browser/Tab;)V

    .line 2940
    if-eqz p2, :cond_17

    .line 2941
    invoke-virtual {p0, v0}, Lcom/android/browser/Controller;->setActiveTab(Lcom/android/browser/Tab;)V

    .line 2951
    :cond_17
    :goto_17
    return-object v0

    .line 2944
    :cond_18
    if-eqz p3, :cond_25

    .line 2945
    iget-object v1, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 2946
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/Controller;->reuseTab(Lcom/android/browser/Tab;Lcom/android/browser/IntentHandler$UrlData;)V

    goto :goto_17

    .line 2948
    :cond_25
    iget-object v1, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v1}, Lcom/android/browser/UI;->showMaxTabsWarning()V

    goto :goto_17
.end method

.method static createScreenshot(Landroid/webkit/WebView;II)Landroid/graphics/Bitmap;
    .registers 15
    .parameter "view"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v9, 0x0

    .line 2349
    if-eqz p0, :cond_f

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v8

    if-eqz v8, :cond_f

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContentWidth()I

    move-result v8

    if-nez v8, :cond_11

    :cond_f
    move-object v5, v9

    .line 2386
    .end local p0
    :goto_10
    return-object v5

    .line 2356
    .restart local p0
    :cond_11
    const/4 v3, 0x2

    .line 2357
    .local v3, filter_scale:I
    mul-int/lit8 v7, p1, 0x2

    .line 2358
    .local v7, scaledWidth:I
    mul-int/lit8 v6, p2, 0x2

    .line 2359
    .local v6, scaledHeight:I
    sget-object v8, Lcom/android/browser/Controller;->sThumbnailBitmap:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_2a

    sget-object v8, Lcom/android/browser/Controller;->sThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    if-ne v8, v7, :cond_2a

    sget-object v8, Lcom/android/browser/Controller;->sThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    if-eq v8, v6, :cond_3d

    .line 2361
    :cond_2a
    sget-object v8, Lcom/android/browser/Controller;->sThumbnailBitmap:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_35

    .line 2362
    sget-object v8, Lcom/android/browser/Controller;->sThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 2363
    sput-object v9, Lcom/android/browser/Controller;->sThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 2365
    :cond_35
    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v6, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    sput-object v8, Lcom/android/browser/Controller;->sThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 2368
    :cond_3d
    new-instance v0, Landroid/graphics/Canvas;

    sget-object v8, Lcom/android/browser/Controller;->sThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2369
    .local v0, canvas:Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContentWidth()I

    move-result v1

    .line 2370
    .local v1, contentWidth:I
    int-to-float v8, v7

    invoke-virtual {p0}, Landroid/webkit/WebView;->getScale()F

    move-result v10

    int-to-float v11, v1

    mul-float/2addr v10, v11

    div-float v4, v8, v10

    .line 2371
    .local v4, overviewScale:F
    instance-of v8, p0, Lcom/android/browser/BrowserWebView;

    if-eqz v8, :cond_63

    move-object v8, p0

    .line 2372
    check-cast v8, Lcom/android/browser/BrowserWebView;

    invoke-virtual {v8}, Lcom/android/browser/BrowserWebView;->getTitleHeight()I

    move-result v8

    neg-int v2, v8

    .line 2373
    .local v2, dy:I
    const/4 v8, 0x0

    int-to-float v10, v2

    mul-float/2addr v10, v4

    invoke-virtual {v0, v8, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2376
    .end local v2           #dy:I
    :cond_63
    invoke-virtual {v0, v4, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 2378
    instance-of v8, p0, Lcom/android/browser/BrowserWebView;

    if-eqz v8, :cond_7a

    .line 2379
    check-cast p0, Lcom/android/browser/BrowserWebView;

    .end local p0
    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserWebView;->drawContent(Landroid/graphics/Canvas;)V

    .line 2383
    :goto_6f
    sget-object v8, Lcom/android/browser/Controller;->sThumbnailBitmap:Landroid/graphics/Bitmap;

    const/4 v10, 0x1

    invoke-static {v8, p1, p2, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 2385
    .local v5, ret:Landroid/graphics/Bitmap;
    invoke-virtual {v0, v9}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_10

    .line 2381
    .end local v5           #ret:Landroid/graphics/Bitmap;
    .restart local p0
    :cond_7a
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->draw(Landroid/graphics/Canvas;)V

    goto :goto_6f
.end method

.method static getDesiredThumbnailHeight(Landroid/content/Context;)I
    .registers 3
    .parameter

    .prologue
    .line 2344
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    return v0
.end method

.method static getDesiredThumbnailWidth(Landroid/content/Context;)I
    .registers 3
    .parameter

    .prologue
    .line 2333
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    return v0
.end method

.method public static getExternalSDStoragePath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2462
    sget-object v0, Lcom/android/browser/Controller;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    array-length v0, v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_10

    .line 2463
    sget-object v0, Lcom/android/browser/Controller;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 2465
    :goto_f
    return-object v0

    :cond_10
    sget-object v0, Lcom/android/browser/Controller;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_f
.end method

.method public static getExternalStoragePath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2458
    sget-object v0, Lcom/android/browser/Controller;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getNextTab()Lcom/android/browser/Tab;
    .registers 4

    .prologue
    .line 3184
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    iget-object v1, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getCurrentPosition()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v0

    return-object v0
.end method

.method private getPrevTab()Lcom/android/browser/Tab;
    .registers 4

    .prologue
    .line 3193
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getCurrentPosition()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v0

    return-object v0
.end method

.method private goLive()V
    .registers 4

    .prologue
    .line 2117
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 2118
    .local v0, t:Lcom/android/browser/Tab;
    invoke-virtual {v0}, Lcom/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/Tab;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 2119
    return-void
.end method

.method private maybeUpdateFavicon(Lcom/android/browser/Tab;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 6
    .parameter "tab"
    .parameter "originalUrl"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 1316
    if-nez p4, :cond_3

    .line 1323
    :cond_2
    :goto_2
    return-void

    .line 1319
    :cond_3
    invoke-virtual {p1}, Lcom/android/browser/Tab;->isPrivateBrowsingEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1320
    iget-object v0, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p2, p3, p4}, Lcom/android/browser/Bookmarks;->updateFavicon(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_2
.end method

.method private onPreloginFinished(Landroid/os/Bundle;Landroid/content/Intent;JZ)V
    .registers 22
    .parameter "icicle"
    .parameter "intent"
    .parameter "currentTabId"
    .parameter "restoreIncognitoTabs"

    .prologue
    .line 422
    const-wide/16 v1, -0x1

    cmp-long v1, p3, v1

    if-nez v1, :cond_8b

    .line 423
    new-instance v1, Lcom/android/browser/Controller$PruneThumbnails;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/browser/Controller$PruneThumbnails;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-static {v1}, Lcom/android/browser/BackgroundHandler;->execute(Ljava/lang/Runnable;)V

    .line 424
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 429
    .local v7, extra:Landroid/os/Bundle;
    invoke-static/range {p2 .. p2}, Lcom/android/browser/IntentHandler;->getUrlDataFromIntent(Landroid/content/Intent;)Lcom/android/browser/IntentHandler$UrlData;

    move-result-object v14

    .line 430
    .local v14, urlData:Lcom/android/browser/IntentHandler$UrlData;
    const/4 v12, 0x0

    .line 431
    .local v12, t:Lcom/android/browser/Tab;
    invoke-virtual {v14}, Lcom/android/browser/IntentHandler$UrlData;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_84

    .line 432
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/Controller;->openTabToHomePage()Lcom/android/browser/Tab;

    move-result-object v12

    .line 436
    :goto_26
    if-eqz v12, :cond_33

    .line 437
    const-string v1, "com.android.browser.application_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/android/browser/Tab;->setAppId(Ljava/lang/String;)V

    .line 439
    :cond_33
    invoke-virtual {v12}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v15

    .line 440
    .local v15, webView:Landroid/webkit/WebView;
    if-eqz v7, :cond_49

    .line 441
    const-string v1, "browser.initialZoomLevel"

    const/4 v2, 0x0

    invoke-virtual {v7, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 442
    .local v11, scale:I
    if-lez v11, :cond_49

    const/16 v1, 0x3e8

    if-gt v11, v1, :cond_49

    .line 443
    invoke-virtual {v15, v11}, Landroid/webkit/WebView;->setInitialScale(I)V

    .line 446
    .end local v11           #scale:I
    :cond_49
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getTabs()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/browser/UI;->updateTabs(Ljava/util/List;)V

    .line 474
    .end local v7           #extra:Landroid/os/Bundle;
    .end local v12           #t:Lcom/android/browser/Tab;
    .end local v15           #webView:Landroid/webkit/WebView;
    :cond_58
    :goto_58
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/Controller;->getSettings()Lcom/android/browser/BrowserSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/BrowserSettings;->getJsEngineFlags()Ljava/lang/String;

    move-result-object v9

    .line 475
    .local v9, jsFlags:Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_71

    .line 476
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/Controller;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/webkit/WebView;->setJsFlags(Ljava/lang/String;)V

    .line 478
    :cond_71
    const-string v1, "show_bookmarks"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_83

    .line 479
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/browser/Controller;->bookmarksOrHistoryPicker(Z)V

    .line 481
    :cond_83
    return-void

    .line 434
    .end local v9           #jsFlags:Ljava/lang/String;
    .restart local v7       #extra:Landroid/os/Bundle;
    .restart local v12       #t:Lcom/android/browser/Tab;
    :cond_84
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/browser/Controller;->openTab(Lcom/android/browser/IntentHandler$UrlData;)Lcom/android/browser/Tab;

    move-result-object v12

    goto :goto_26

    .line 448
    .end local v7           #extra:Landroid/os/Bundle;
    .end local v12           #t:Lcom/android/browser/Tab;
    .end local v14           #urlData:Lcom/android/browser/IntentHandler$UrlData;
    :cond_8b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v2}, Lcom/android/browser/UI;->needsRestoreAllTabs()Z

    move-result v6

    move-object/from16 v2, p1

    move-wide/from16 v3, p3

    move/from16 v5, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/browser/TabControl;->restoreState(Landroid/os/Bundle;JZZ)V

    .line 450
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getTabs()Ljava/util/List;

    move-result-object v13

    .line 451
    .local v13, tabs:Ljava/util/List;,"Ljava/util/List<Lcom/android/browser/Tab;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v10, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 452
    .local v10, restoredTabs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_b5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_cd

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/browser/Tab;

    .line 453
    .restart local v12       #t:Lcom/android/browser/Tab;
    invoke-virtual {v12}, Lcom/android/browser/Tab;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b5

    .line 455
    .end local v12           #t:Lcom/android/browser/Tab;
    :cond_cd
    new-instance v1, Lcom/android/browser/Controller$PruneThumbnails;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2, v10}, Lcom/android/browser/Controller$PruneThumbnails;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-static {v1}, Lcom/android/browser/BackgroundHandler;->execute(Ljava/lang/Runnable;)V

    .line 456
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_e2

    .line 457
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/Controller;->openTabToHomePage()Lcom/android/browser/Tab;

    .line 459
    :cond_e2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v1, v13}, Lcom/android/browser/UI;->updateTabs(Ljava/util/List;)V

    .line 462
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/browser/Controller;->setActiveTab(Lcom/android/browser/Tab;)V

    .line 465
    invoke-static/range {p2 .. p2}, Lcom/android/browser/IntentHandler;->getUrlDataFromIntent(Landroid/content/Intent;)Lcom/android/browser/IntentHandler$UrlData;

    move-result-object v14

    .line 469
    .restart local v14       #urlData:Lcom/android/browser/IntentHandler$UrlData;
    if-eqz p1, :cond_102

    invoke-virtual {v14}, Lcom/android/browser/IntentHandler$UrlData;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_58

    .line 470
    :cond_102
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/browser/Controller;->mIntentHandler:Lcom/android/browser/IntentHandler;

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Lcom/android/browser/IntentHandler;->onNewIntent(Landroid/content/Intent;)V

    goto/16 :goto_58
.end method

.method private openIconDatabase()V
    .registers 3

    .prologue
    .line 579
    invoke-static {}, Landroid/webkit/WebIconDatabase;->getInstance()Landroid/webkit/WebIconDatabase;

    move-result-object v0

    .line 580
    .local v0, instance:Landroid/webkit/WebIconDatabase;
    new-instance v1, Lcom/android/browser/Controller$3;

    invoke-direct {v1, p0, v0}, Lcom/android/browser/Controller$3;-><init>(Lcom/android/browser/Controller;Landroid/webkit/WebIconDatabase;)V

    invoke-static {v1}, Lcom/android/browser/BackgroundHandler;->execute(Ljava/lang/Runnable;)V

    .line 587
    return-void
.end method

.method private pauseWebViewTimers(Lcom/android/browser/Tab;)Z
    .registers 5
    .parameter "tab"

    .prologue
    const/4 v0, 0x1

    .line 924
    if-nez p1, :cond_4

    .line 931
    :goto_3
    return v0

    .line 926
    :cond_4
    invoke-virtual {p1}, Lcom/android/browser/Tab;->inPageLoad()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 927
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieSyncManager;->stopSync()V

    .line 928
    invoke-static {}, Lcom/android/browser/WebViewTimersControl;->getInstance()Lcom/android/browser/WebViewTimersControl;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/browser/WebViewTimersControl;->onBrowserActivityPause(Landroid/webkit/WebView;)V

    goto :goto_3

    .line 931
    :cond_1d
    const/4 v0, 0x0

    goto :goto_3
.end method

.method private releaseWakeLock()V
    .registers 3

    .prologue
    .line 899
    iget-object v0, p0, Lcom/android/browser/Controller;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/browser/Controller;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 900
    iget-object v0, p0, Lcom/android/browser/Controller;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 901
    iget-object v0, p0, Lcom/android/browser/Controller;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 903
    :cond_18
    return-void
.end method

.method private resumeWebViewTimers(Lcom/android/browser/Tab;)V
    .registers 5
    .parameter "tab"

    .prologue
    .line 910
    invoke-virtual {p1}, Lcom/android/browser/Tab;->inPageLoad()Z

    move-result v0

    .line 911
    .local v0, inLoad:Z
    iget-boolean v2, p0, Lcom/android/browser/Controller;->mActivityPaused:Z

    if-nez v2, :cond_a

    if-eqz v0, :cond_10

    :cond_a
    iget-boolean v2, p0, Lcom/android/browser/Controller;->mActivityPaused:Z

    if-eqz v2, :cond_22

    if-eqz v0, :cond_22

    .line 912
    :cond_10
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/CookieSyncManager;->startSync()V

    .line 913
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    .line 914
    .local v1, w:Landroid/webkit/WebView;
    invoke-static {}, Lcom/android/browser/WebViewTimersControl;->getInstance()Lcom/android/browser/WebViewTimersControl;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/browser/WebViewTimersControl;->onBrowserActivityResume(Landroid/webkit/WebView;)V

    .line 916
    .end local v1           #w:Landroid/webkit/WebView;
    :cond_22
    return-void
.end method

.method public static setStorageVolume(Lcom/android/browser/BrowserActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 2453
    const-string v0, "storage"

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    sput-object v0, Lcom/android/browser/Controller;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 2454
    sget-object v0, Lcom/android/browser/Controller;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v0

    sput-object v0, Lcom/android/browser/Controller;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    .line 2455
    return-void
.end method

.method private shareCurrentPage(Lcom/android/browser/Tab;)V
    .registers 9
    .parameter "tab"

    .prologue
    .line 679
    if-eqz p1, :cond_27

    .line 680
    iget-object v0, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/android/browser/Tab;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/browser/Tab;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-static {v5}, Lcom/android/browser/Controller;->getDesiredThumbnailWidth(Landroid/content/Context;)I

    move-result v5

    iget-object v6, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-static {v6}, Lcom/android/browser/Controller;->getDesiredThumbnailHeight(Landroid/content/Context;)I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/android/browser/Controller;->createScreenshot(Landroid/webkit/WebView;II)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/browser/Controller;->sharePage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 686
    :cond_27
    return-void
.end method

.method static final sharePage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .registers 9
    .parameter "c"
    .parameter "title"
    .parameter "url"
    .parameter "favicon"
    .parameter "screenshot"

    .prologue
    .line 703
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 704
    .local v1, send:Landroid/content/Intent;
    const-string v2, "text/plain"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 705
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 706
    const-string v2, "android.intent.extra.SUBJECT"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 707
    const-string v2, "share_favicon"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 708
    const-string v2, "share_screenshot"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 709
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v0

    .line 710
    .local v0, mSettings:Lcom/android/browser/BrowserSettings;
    const-string v2, "BRIGHTNESS"

    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->getBrightness()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 712
    const v2, 0x7f0c006f

    :try_start_30
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3b
    .catch Landroid/content/ActivityNotFoundException; {:try_start_30 .. :try_end_3b} :catch_3c

    .line 717
    :goto_3b
    return-void

    .line 714
    :catch_3c
    move-exception v2

    goto :goto_3b
.end method

.method private showPreloadedTab(Lcom/android/browser/IntentHandler$UrlData;)Lcom/android/browser/Tab;
    .registers 8
    .parameter "urlData"

    .prologue
    const/4 v2, 0x0

    .line 2773
    invoke-virtual {p1}, Lcom/android/browser/IntentHandler$UrlData;->isPreloaded()Z

    move-result v4

    if-nez v4, :cond_8

    .line 2797
    :goto_7
    return-object v2

    .line 2776
    :cond_8
    invoke-virtual {p1}, Lcom/android/browser/IntentHandler$UrlData;->getPreloadedTab()Lcom/android/browser/PreloadedTabControl;

    move-result-object v3

    .line 2777
    .local v3, tabControl:Lcom/android/browser/PreloadedTabControl;
    invoke-virtual {p1}, Lcom/android/browser/IntentHandler$UrlData;->getSearchBoxQueryToSubmit()Ljava/lang/String;

    move-result-object v1

    .line 2778
    .local v1, sbQuery:Ljava/lang/String;
    if-eqz v1, :cond_20

    .line 2779
    iget-object v4, p1, Lcom/android/browser/IntentHandler$UrlData;->mUrl:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/browser/IntentHandler$UrlData;->mHeaders:Ljava/util/Map;

    invoke-virtual {v3, v1, v4, v5}, Lcom/android/browser/PreloadedTabControl;->searchBoxSubmit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v4

    if-nez v4, :cond_20

    .line 2781
    invoke-virtual {v3}, Lcom/android/browser/PreloadedTabControl;->destroy()V

    goto :goto_7

    .line 2786
    :cond_20
    iget-object v4, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v4}, Lcom/android/browser/TabControl;->canCreateNewTab()Z

    move-result v4

    if-nez v4, :cond_37

    .line 2787
    iget-object v4, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/browser/TabControl;->getLeastUsedTab(Lcom/android/browser/Tab;)Lcom/android/browser/Tab;

    move-result-object v0

    .line 2788
    .local v0, leastUsed:Lcom/android/browser/Tab;
    if-eqz v0, :cond_37

    .line 2789
    invoke-virtual {p0, v0}, Lcom/android/browser/Controller;->closeTab(Lcom/android/browser/Tab;)V

    .line 2792
    .end local v0           #leastUsed:Lcom/android/browser/Tab;
    :cond_37
    invoke-virtual {v3}, Lcom/android/browser/PreloadedTabControl;->getTab()Lcom/android/browser/Tab;

    move-result-object v2

    .line 2793
    .local v2, t:Lcom/android/browser/Tab;
    invoke-virtual {v2}, Lcom/android/browser/Tab;->refreshIdAfterPreload()V

    .line 2794
    iget-object v4, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v4, v2}, Lcom/android/browser/TabControl;->addPreloadedTab(Lcom/android/browser/Tab;)V

    .line 2795
    invoke-virtual {p0, v2}, Lcom/android/browser/Controller;->addTab(Lcom/android/browser/Tab;)V

    .line 2796
    invoke-virtual {p0, v2}, Lcom/android/browser/Controller;->setActiveTab(Lcom/android/browser/Tab;)V

    goto :goto_7
.end method

.method private startHandler()V
    .registers 2

    .prologue
    .line 590
    new-instance v0, Lcom/android/browser/Controller$4;

    invoke-direct {v0, p0}, Lcom/android/browser/Controller$4;-><init>(Lcom/android/browser/Controller;)V

    iput-object v0, p0, Lcom/android/browser/Controller;->mHandler:Landroid/os/Handler;

    .line 666
    return-void
.end method

.method private updateInLoadMenuItems(Landroid/view/Menu;)V
    .registers 5
    .parameter

    .prologue
    .line 1750
    if-nez p1, :cond_3

    .line 1761
    :cond_2
    :goto_2
    return-void

    .line 1753
    :cond_3
    const v0, 0x7f0d0112

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1754
    iget-boolean v0, p0, Lcom/android/browser/Controller;->mInLoad:Z

    if-eqz v0, :cond_26

    const v0, 0x7f0d0134

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1757
    :goto_15
    if-eqz v0, :cond_2

    .line 1758
    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 1759
    invoke-interface {v0}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_2

    .line 1754
    :cond_26
    const v0, 0x7f0d0135

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    goto :goto_15
.end method

.method private updateScreenshot(Lcom/android/browser/Tab;)V
    .registers 9
    .parameter "tab"

    .prologue
    .line 2395
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v6

    .line 2396
    .local v6, view:Landroid/webkit/WebView;
    if-nez v6, :cond_7

    .line 2449
    :cond_6
    :goto_6
    return-void

    .line 2400
    :cond_7
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v4

    .line 2401
    .local v4, url:Ljava/lang/String;
    invoke-virtual {v6}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v3

    .line 2403
    .local v3, originalUrl:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 2410
    sget-object v0, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_27

    invoke-virtual {p1}, Lcom/android/browser/Tab;->isBookmarkedSite()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2414
    :cond_27
    iget-object v0, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/browser/Controller;->getDesiredThumbnailWidth(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/browser/Controller;->getDesiredThumbnailHeight(Landroid/content/Context;)I

    move-result v1

    invoke-static {v6, v0, v1}, Lcom/android/browser/Controller;->createScreenshot(Landroid/webkit/WebView;II)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 2416
    .local v5, bm:Landroid/graphics/Bitmap;
    if-eqz v5, :cond_6

    .line 2420
    iget-object v0, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2421
    .local v2, cr:Landroid/content/ContentResolver;
    new-instance v0, Lcom/android/browser/Controller$11;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/browser/Controller$11;-><init>(Lcom/android/browser/Controller;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/browser/Controller$11;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_6
.end method


# virtual methods
.method AddFeedToGoogleReader(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 3579
    const-string v0, "Controller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AddFeedToGoogleReader : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3582
    const-string v0, "http://www.google.com/reader/i/#stream/feed/"

    iput-object v0, p0, Lcom/android/browser/Controller;->mAddFeedUrl:Ljava/lang/String;

    .line 3583
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/browser/Controller;->mAddFeedUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/Controller;->mAddFeedUrl:Ljava/lang/String;

    .line 3585
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 3586
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/Controller;->mAddFeedUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 3591
    :cond_40
    return-void
.end method

.method public accessReaderFromAssets()Ljava/lang/String;
    .registers 4

    .prologue
    .line 3403
    iget-object v0, p0, Lcom/android/browser/Controller;->readerScript:Ljava/lang/String;

    if-nez v0, :cond_3d

    .line 3406
    :try_start_4
    iget-object v0, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "reader.js"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 3407
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v1

    .line 3408
    new-array v1, v1, [B

    .line 3409
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    .line 3410
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 3411
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lcom/android/browser/Controller;->readerScript:Ljava/lang/String;

    .line 3412
    const-string v0, "onPageFinished"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "accessReaderFromAssets "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/Controller;->readerScript:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_3d} :catch_40

    .line 3419
    :cond_3d
    iget-object v0, p0, Lcom/android/browser/Controller;->readerScript:Ljava/lang/String;

    return-object v0

    .line 3414
    :catch_40
    move-exception v0

    .line 3416
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public accessRecognizearticleFromAssets()Ljava/lang/String;
    .registers 4

    .prologue
    .line 3427
    iget-object v0, p0, Lcom/android/browser/Controller;->recogScript:Ljava/lang/String;

    if-nez v0, :cond_3d

    .line 3430
    :try_start_4
    iget-object v0, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "recognizearticle.js"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 3431
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v1

    .line 3432
    new-array v1, v1, [B

    .line 3433
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    .line 3434
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 3435
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lcom/android/browser/Controller;->recogScript:Ljava/lang/String;

    .line 3436
    const-string v0, "prem onPageFinished"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recognizearticle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/Controller;->recogScript:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_3d} :catch_40

    .line 3443
    :cond_3d
    iget-object v0, p0, Lcom/android/browser/Controller;->recogScript:Ljava/lang/String;

    return-object v0

    .line 3438
    :catch_40
    move-exception v0

    .line 3440
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public activateVoiceSearchMode(Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .parameter "title"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1365
    .local p2, results:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1, p2}, Lcom/android/browser/UI;->showVoiceTitleBar(Ljava/lang/String;Ljava/util/List;)V

    .line 1366
    return-void
.end method

.method protected addTab(Lcom/android/browser/Tab;)V
    .registers 3
    .parameter "tab"

    .prologue
    .line 2673
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1}, Lcom/android/browser/UI;->addTab(Lcom/android/browser/Tab;)V

    .line 2674
    return-void
.end method

.method public attachSubWindow(Lcom/android/browser/Tab;)V
    .registers 4
    .parameter "tab"

    .prologue
    .line 2754
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getSubWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 2755
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-virtual {p1}, Lcom/android/browser/Tab;->getSubViewContainer()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/browser/UI;->attachSubWindow(Landroid/view/View;)V

    .line 2756
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    .line 2760
    sget-boolean v0, Lcom/android/browser/Controller;->ENABLE_PINCH_ZOOM_LISTENER:Z

    if-eqz v0, :cond_36

    .line 2761
    iget-object v0, p0, Lcom/android/browser/Controller;->mSecNavScreenGestureDetector:Lcom/android/browser/SecNavScreenGestureDetector;

    if-eqz v0, :cond_36

    .line 2762
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getSubWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 2763
    iget-object v1, p0, Lcom/android/browser/Controller;->mSecNavScreenGestureDetector:Lcom/android/browser/SecNavScreenGestureDetector;

    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    check-cast v0, Lcom/android/browser/PhoneUi;

    invoke-virtual {v1, v0}, Lcom/android/browser/SecNavScreenGestureDetector;->setUi(Lcom/android/browser/PhoneUi;)V

    .line 2764
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getSubWebView()Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/Controller;->mSecNavScreenGestureDetector:Lcom/android/browser/SecNavScreenGestureDetector;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setPinchZoomListener(Landroid/webkit/PinchZoomListener;)V

    .line 2770
    :cond_36
    return-void
.end method

.method public bookmarkedStatusHasChanged(Lcom/android/browser/Tab;)V
    .registers 3
    .parameter "tab"

    .prologue
    .line 1328
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1}, Lcom/android/browser/UI;->bookmarkedStatusHasChanged(Lcom/android/browser/Tab;)V

    .line 1329
    return-void
.end method

.method public bookmarksOrHistoryPicker(Z)V
    .registers 7
    .parameter

    .prologue
    .line 1498
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_9

    .line 1536
    :goto_8
    return-void

    .line 1502
    :cond_9
    invoke-virtual {p0}, Lcom/android/browser/Controller;->isInCustomActionMode()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1503
    invoke-virtual {p0}, Lcom/android/browser/Controller;->endActionMode()V

    .line 1505
    :cond_12
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1509
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 1511
    const-string v2, "url"

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1512
    const-string v2, "title"

    invoke-virtual {v0}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1513
    invoke-virtual {v0}, Landroid/webkit/WebView;->getTouchIconUrl()Ljava/lang/String;

    move-result-object v2

    .line 1514
    if-eqz v2, :cond_47

    .line 1515
    const-string v3, "touch_icon_url"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1516
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    .line 1517
    if-eqz v2, :cond_47

    .line 1518
    const-string v3, "user_agent"

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1522
    :cond_47
    const-string v2, "thumbnail"

    iget-object v3, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/android/browser/Controller;->getDesiredThumbnailWidth(Landroid/content/Context;)I

    move-result v3

    iget-object v4, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/android/browser/Controller;->getDesiredThumbnailHeight(Landroid/content/Context;)I

    move-result v4

    invoke-static {v0, v3, v4}, Lcom/android/browser/Controller;->createScreenshot(Landroid/webkit/WebView;II)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1525
    const-string v2, "favicon"

    invoke-virtual {v0}, Landroid/webkit/WebView;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1529
    const-string v0, "gravity"

    const-wide/16 v2, 0x35

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1532
    const-string v2, "disable_new_window"

    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->canCreateNewTab()Z

    move-result v0

    if-nez v0, :cond_84

    const/4 v0, 0x1

    :goto_77
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1534
    iget-object v2, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    if-eqz p1, :cond_86

    sget-object v0, Lcom/android/browser/UI$ComboViews;->History:Lcom/android/browser/UI$ComboViews;

    :goto_80
    invoke-interface {v2, v0, v1}, Lcom/android/browser/UI;->showComboView(Lcom/android/browser/UI$ComboViews;Landroid/os/Bundle;)V

    goto :goto_8

    .line 1532
    :cond_84
    const/4 v0, 0x0

    goto :goto_77

    .line 1534
    :cond_86
    sget-object v0, Lcom/android/browser/UI$ComboViews;->Bookmarks:Lcom/android/browser/UI$ComboViews;

    goto :goto_80
.end method

.method public closeCurrentTab()V
    .registers 2

    .prologue
    .line 2987
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/browser/Controller;->closeCurrentTab(Z)V

    .line 2988
    return-void
.end method

.method protected closeCurrentTab(Z)V
    .registers 7
    .parameter "andQuit"

    .prologue
    .line 2991
    iget-object v3, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v3}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1d

    .line 2992
    iget-object v3, p0, Lcom/android/browser/Controller;->mCrashRecoveryHandler:Lcom/android/browser/CrashRecoveryHandler;

    invoke-virtual {v3}, Lcom/android/browser/CrashRecoveryHandler;->clearState()V

    .line 2993
    iget-object v3, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/browser/TabControl;->removeTab(Lcom/android/browser/Tab;)Z

    .line 2994
    iget-object v3, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 3016
    :goto_1c
    return-void

    .line 2997
    :cond_1d
    iget-object v3, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v3}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 2998
    .local v0, current:Lcom/android/browser/Tab;
    iget-object v3, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v3}, Lcom/android/browser/TabControl;->getCurrentPosition()I

    move-result v2

    .line 2999
    .local v2, pos:I
    invoke-virtual {v0}, Lcom/android/browser/Tab;->getParent()Lcom/android/browser/Tab;

    move-result-object v1

    .line 3000
    .local v1, newTab:Lcom/android/browser/Tab;
    if-nez v1, :cond_41

    .line 3001
    iget-object v3, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v1

    .line 3002
    if-nez v1, :cond_41

    .line 3003
    iget-object v3, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v3, v4}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v1

    .line 3006
    :cond_41
    if-eqz p1, :cond_51

    .line 3007
    iget-object v3, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v3, v1}, Lcom/android/browser/TabControl;->setCurrentTab(Lcom/android/browser/Tab;)Z

    .line 3008
    invoke-virtual {p0, v0}, Lcom/android/browser/Controller;->closeTab(Lcom/android/browser/Tab;)V

    .line 3014
    :cond_4b
    :goto_4b
    iget-object v3, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v3}, Lcom/android/browser/UI;->updateReaderIcon()V

    goto :goto_1c

    .line 3009
    :cond_51
    invoke-virtual {p0, v1}, Lcom/android/browser/Controller;->switchToTab(Lcom/android/browser/Tab;)Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 3011
    invoke-virtual {p0, v0}, Lcom/android/browser/Controller;->closeTab(Lcom/android/browser/Tab;)V

    goto :goto_4b
.end method

.method protected closeEmptyTab()V
    .registers 3

    .prologue
    .line 2708
    iget-object v1, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 2709
    .local v0, current:Lcom/android/browser/Tab;
    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v1

    if-nez v1, :cond_19

    .line 2711
    invoke-virtual {p0}, Lcom/android/browser/Controller;->closeCurrentTab()V

    .line 2713
    :cond_19
    return-void
.end method

.method public closeTab(Lcom/android/browser/Tab;)V
    .registers 3
    .parameter "tab"

    .prologue
    .line 3024
    invoke-virtual {p0, p1}, Lcom/android/browser/Controller;->removeTab(Lcom/android/browser/Tab;)V

    .line 3026
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0}, Lcom/android/browser/UI;->updateReaderIcon()V

    .line 3028
    return-void
.end method

.method public createBookmarkCurrentPageIntent(Z)Landroid/content/Intent;
    .registers 7
    .parameter

    .prologue
    .line 2288
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v1

    .line 2289
    if-nez v1, :cond_8

    .line 2290
    const/4 v0, 0x0

    .line 2315
    :goto_7
    return-object v0

    .line 2292
    :cond_8
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    const-class v3, Lcom/android/browser/SecAddBookmarkPage;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2294
    const-string v2, "url"

    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2295
    const-string v2, "title"

    invoke-virtual {v1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2296
    invoke-virtual {v1}, Landroid/webkit/WebView;->getTouchIconUrl()Ljava/lang/String;

    move-result-object v2

    .line 2297
    if-eqz v2, :cond_3d

    .line 2298
    const-string v3, "touch_icon_url"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2299
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    .line 2300
    if-eqz v2, :cond_3d

    .line 2301
    const-string v3, "user_agent"

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2305
    :cond_3d
    const-string v2, "thumbnail"

    iget-object v3, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/android/browser/Controller;->getDesiredThumbnailWidth(Landroid/content/Context;)I

    move-result v3

    iget-object v4, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/android/browser/Controller;->getDesiredThumbnailHeight(Landroid/content/Context;)I

    move-result v4

    invoke-static {v1, v3, v4}, Lcom/android/browser/Controller;->createScreenshot(Landroid/webkit/WebView;II)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2308
    const-string v2, "favicon"

    invoke-virtual {v1}, Landroid/webkit/WebView;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2309
    if-eqz p1, :cond_63

    .line 2310
    const-string v1, "check_for_dupe"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2314
    :cond_63
    const-string v1, "gravity"

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_7
.end method

.method public createNewSnapshotTab(JZ)Lcom/android/browser/SnapshotTab;
    .registers 6
    .parameter "snapshotId"
    .parameter "setActive"

    .prologue
    .line 2956
    const/4 v0, 0x0

    .line 2957
    .local v0, tab:Lcom/android/browser/SnapshotTab;
    iget-object v1, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->canCreateNewTab()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 2958
    iget-object v1, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1, p1, p2}, Lcom/android/browser/TabControl;->createSnapshotTab(J)Lcom/android/browser/SnapshotTab;

    move-result-object v0

    .line 2959
    invoke-virtual {p0, v0}, Lcom/android/browser/Controller;->addTab(Lcom/android/browser/Tab;)V

    .line 2960
    if-eqz p3, :cond_17

    .line 2961
    invoke-virtual {p0, v0}, Lcom/android/browser/Controller;->setActiveTab(Lcom/android/browser/Tab;)V

    .line 2966
    :cond_17
    :goto_17
    return-object v0

    .line 2964
    :cond_18
    iget-object v1, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v1}, Lcom/android/browser/UI;->showMaxTabsWarning()V

    goto :goto_17
.end method

.method didUserStopLoading()Z
    .registers 2

    .prologue
    .line 1003
    iget-boolean v0, p0, Lcom/android/browser/Controller;->mLoadStopped:Z

    return v0
.end method

.method public dismissSubWindow(Lcom/android/browser/Tab;)V
    .registers 3
    .parameter "tab"

    .prologue
    .line 2739
    invoke-virtual {p0, p1}, Lcom/android/browser/Controller;->removeSubWindow(Lcom/android/browser/Tab;)V

    .line 2741
    invoke-virtual {p1}, Lcom/android/browser/Tab;->dismissSubWindow()V

    .line 2742
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    .line 2743
    return-void
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "ev"

    .prologue
    .line 3514
    iget-boolean v0, p0, Lcom/android/browser/Controller;->mBlockEvents:Z

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 3498
    iget-boolean v0, p0, Lcom/android/browser/Controller;->mBlockEvents:Z

    return v0
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 3502
    iget-boolean v0, p0, Lcom/android/browser/Controller;->mBlockEvents:Z

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "ev"

    .prologue
    .line 3506
    iget-boolean v0, p0, Lcom/android/browser/Controller;->mBlockEvents:Z

    return v0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "ev"

    .prologue
    .line 3510
    iget-boolean v0, p0, Lcom/android/browser/Controller;->mBlockEvents:Z

    return v0
.end method

.method public displayReader()V
    .registers 4

    .prologue
    .line 3477
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 3478
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 3479
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginsEnabled(Z)V

    .line 3481
    const-string v0, "Controller"

    const-string v1, "Inside displayReader"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3482
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0}, Lcom/android/browser/UI;->runDialog()V

    .line 3483
    return-void
.end method

.method public displayRssLinks()V
    .registers 6

    .prologue
    .line 3549
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/browser/Controller;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    const-class v2, Lcom/android/browser/BrowserRssNewlinkPage;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3552
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 3553
    if-nez v0, :cond_10

    .line 3571
    :cond_f
    :goto_f
    return-void

    .line 3556
    :cond_10
    invoke-virtual {v0}, Landroid/webkit/WebView;->getWebFeedLinks()[Landroid/webkit/WebFeedLink;

    move-result-object v2

    .line 3558
    if-eqz v2, :cond_f

    .line 3561
    array-length v0, v2

    .line 3562
    const-string v3, "Feed_number"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3564
    const/4 v0, 0x0

    :goto_1d
    array-length v3, v2

    if-ge v0, v3, :cond_63

    .line 3566
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "title"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aget-object v4, v2, v0

    invoke-virtual {v4}, Landroid/webkit/WebFeedLink;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3567
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "url"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aget-object v4, v2, v0

    invoke-virtual {v4}, Landroid/webkit/WebFeedLink;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3564
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 3570
    :cond_63
    iget-object v0, p0, Lcom/android/browser/Controller;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/BrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_f
.end method

.method doStart(Landroid/os/Bundle;Landroid/content/Intent;)V
    .registers 15
    .parameter "icicle"
    .parameter "intent"

    .prologue
    .line 353
    if-eqz p1, :cond_8e

    const-string v0, "lastActiveDate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    move-object v7, v0

    .line 355
    .local v7, lastActiveDate:Ljava/util/Calendar;
    :goto_b
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 356
    .local v8, today:Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    .line 357
    .local v10, yesterday:Ljava/util/Calendar;
    const/4 v0, 0x5

    const/4 v1, -0x1

    invoke-virtual {v10, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 359
    if-eqz v7, :cond_91

    invoke-virtual {v7, v10}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_91

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_91

    const/4 v6, 0x1

    .line 364
    .local v6, restoreIncognitoTabs:Z
    :goto_27
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0, p1, v6}, Lcom/android/browser/TabControl;->canRestoreState(Landroid/os/Bundle;Z)J

    move-result-wide v4

    .line 367
    .local v4, currentTabId:J
    const-wide/16 v0, -0x1

    cmp-long v0, v4, v0

    if-nez v0, :cond_3a

    .line 371
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeSessionCookie()V

    .line 376
    :cond_3a
    sget-boolean v0, Lcom/android/browser/Controller;->ENABLE_PINCH_ZOOM_LISTENER:Z

    if-eqz v0, :cond_58

    .line 377
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v9

    .line 378
    .local v9, webview:Landroid/webkit/WebView;
    iget-object v0, p0, Lcom/android/browser/Controller;->mSecNavScreenGestureDetector:Lcom/android/browser/SecNavScreenGestureDetector;

    if-eqz v0, :cond_58

    .line 379
    if-eqz v9, :cond_58

    .line 380
    iget-object v1, p0, Lcom/android/browser/Controller;->mSecNavScreenGestureDetector:Lcom/android/browser/SecNavScreenGestureDetector;

    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    check-cast v0, Lcom/android/browser/PhoneUi;

    invoke-virtual {v1, v0}, Lcom/android/browser/SecNavScreenGestureDetector;->setUi(Lcom/android/browser/PhoneUi;)V

    .line 381
    iget-object v0, p0, Lcom/android/browser/Controller;->mSecNavScreenGestureDetector:Lcom/android/browser/SecNavScreenGestureDetector;

    invoke-virtual {v9, v0}, Landroid/webkit/WebView;->setPinchZoomListener(Landroid/webkit/PinchZoomListener;)V

    .line 386
    .end local v9           #webview:Landroid/webkit/WebView;
    :cond_58
    sget-boolean v0, Lcom/android/browser/Controller;->ENABLE_POWER_CONTROL:Z

    if-eqz v0, :cond_80

    iget-object v0, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/browser/BrowserActivity;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_80

    .line 390
    iget-object v0, p0, Lcom/android/browser/Controller;->mSecPowerControl:Lcom/android/browser/SecPowerControl;

    if-eqz v0, :cond_6d

    .line 391
    iget-object v0, p0, Lcom/android/browser/Controller;->mSecPowerControl:Lcom/android/browser/SecPowerControl;

    invoke-virtual {v0}, Lcom/android/browser/SecPowerControl;->updatePowerSavingMode()V

    .line 394
    :cond_6d
    iget-object v0, p0, Lcom/android/browser/Controller;->mSecPowerControl:Lcom/android/browser/SecPowerControl;

    invoke-virtual {v0}, Lcom/android/browser/SecPowerControl;->getAutoBright()Z

    move-result v0

    if-nez v0, :cond_80

    .line 395
    iget-object v0, p0, Lcom/android/browser/Controller;->mSecPowerControl:Lcom/android/browser/SecPowerControl;

    iget-object v1, p0, Lcom/android/browser/Controller;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v1}, Lcom/android/browser/BrowserSettings;->getBrightness()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/browser/SecPowerControl;->setWindowBrightness(I)V

    .line 398
    :cond_80
    iget-object v11, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    new-instance v0, Lcom/android/browser/Controller$2;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/browser/Controller$2;-><init>(Lcom/android/browser/Controller;Landroid/content/Intent;Landroid/os/Bundle;JZ)V

    invoke-static {v11, v0}, Lcom/android/browser/GoogleAccountLogin;->startLoginIfNeeded(Landroid/app/Activity;Ljava/lang/Runnable;)V

    .line 418
    return-void

    .line 353
    .end local v4           #currentTabId:J
    .end local v6           #restoreIncognitoTabs:Z
    .end local v7           #lastActiveDate:Ljava/util/Calendar;
    .end local v8           #today:Ljava/util/Calendar;
    .end local v10           #yesterday:Ljava/util/Calendar;
    :cond_8e
    const/4 v7, 0x0

    goto/16 :goto_b

    .line 359
    .restart local v7       #lastActiveDate:Ljava/util/Calendar;
    .restart local v8       #today:Ljava/util/Calendar;
    .restart local v10       #yesterday:Ljava/util/Calendar;
    :cond_91
    const/4 v6, 0x0

    goto :goto_27
.end method

.method public doUpdateVisitedHistory(Lcom/android/browser/Tab;Z)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1195
    invoke-virtual {p1}, Lcom/android/browser/Tab;->isPrivateBrowsingEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1204
    :cond_7
    :goto_7
    return-void

    .line 1196
    :cond_8
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    .line 1198
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v1, 0x1

    const-string v3, "about:"

    const/4 v5, 0x6

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1202
    iget-object v1, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/browser/DataController;->getInstance(Landroid/content/Context;)Lcom/android/browser/DataController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/browser/DataController;->updateVisitedHistory(Ljava/lang/String;)V

    .line 1203
    iget-object v0, p0, Lcom/android/browser/Controller;->mCrashRecoveryHandler:Lcom/android/browser/CrashRecoveryHandler;

    invoke-virtual {v0}, Lcom/android/browser/CrashRecoveryHandler;->backupState()V

    goto :goto_7
.end method

.method public editUrl()V
    .registers 3

    .prologue
    .line 1343
    iget-boolean v0, p0, Lcom/android/browser/Controller;->mOptionsMenuOpen:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->closeOptionsMenu()V

    .line 1344
    :cond_9
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/browser/UI;->editUrl(Z)V

    .line 1345
    return-void
.end method

.method public endActionMode()V
    .registers 2

    .prologue
    .line 2257
    iget-object v0, p0, Lcom/android/browser/Controller;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_9

    .line 2258
    iget-object v0, p0, Lcom/android/browser/Controller;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 2260
    :cond_9
    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .registers 2

    .prologue
    .line 542
    iget-object v0, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 537
    iget-object v0, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getCurrentTab()Lcom/android/browser/Tab;
    .registers 2

    .prologue
    .line 670
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTopWebView()Landroid/webkit/WebView;
    .registers 2

    .prologue
    .line 2208
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentWebView()Landroid/webkit/WebView;
    .registers 2

    .prologue
    .line 2213
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultVideoPoster()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 1281
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0}, Lcom/android/browser/UI;->getDefaultVideoPoster()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method getMaxTabs()I
    .registers 3

    .prologue
    .line 563
    iget-object v0, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method getSettings()Lcom/android/browser/BrowserSettings;
    .registers 2

    .prologue
    .line 550
    iget-object v0, p0, Lcom/android/browser/Controller;->mSettings:Lcom/android/browser/BrowserSettings;

    return-object v0
.end method

.method public getTabControl()Lcom/android/browser/TabControl;
    .registers 2

    .prologue
    .line 568
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    return-object v0
.end method

.method public getTabs()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/browser/Tab;",
            ">;"
        }
    .end annotation

    .prologue
    .line 573
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getTabs()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUi()Lcom/android/browser/UI;
    .registers 2

    .prologue
    .line 559
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    return-object v0
.end method

.method public getVideoLoadingProgressView()Landroid/view/View;
    .registers 2

    .prologue
    .line 1286
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0}, Lcom/android/browser/UI;->getVideoLoadingProgressView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getVisitedHistory(Landroid/webkit/ValueCallback;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1208
    .local p1, callback:Landroid/webkit/ValueCallback;,"Landroid/webkit/ValueCallback<[Ljava/lang/String;>;"
    new-instance v0, Lcom/android/browser/Controller$5;

    invoke-direct {v0, p0, p1}, Lcom/android/browser/Controller$5;-><init>(Lcom/android/browser/Controller;Landroid/webkit/ValueCallback;)V

    .line 1219
    .local v0, task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;[Ljava/lang/String;>;"
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1220
    return-void
.end method

.method public getWebViewFactory()Lcom/android/browser/WebViewFactory;
    .registers 2

    .prologue
    .line 517
    iget-object v0, p0, Lcom/android/browser/Controller;->mFactory:Lcom/android/browser/WebViewFactory;

    return-object v0
.end method

.method goBackOnePageOrQuit()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 3094
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Z)Z

    move-result v0

    if-ne v0, v2, :cond_18

    .line 3095
    const-string v0, "Controller"

    const-string v1, "goBackOnePageOrQuit : current tab is empty"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3096
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-static {p0, v0}, Lcom/android/browser/OfflineComboViewActivity;->handleGoBackOnePageOrQuit(Lcom/android/browser/Controller;Lcom/android/browser/TabControl;)V

    .line 3100
    :cond_18
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 3101
    if-nez v0, :cond_26

    .line 3109
    iget-object v0, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    .line 3136
    :goto_25
    return-void

    .line 3112
    :cond_26
    invoke-virtual {v0}, Lcom/android/browser/Tab;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 3113
    invoke-virtual {v0}, Lcom/android/browser/Tab;->goBack()V

    goto :goto_25

    .line 3117
    :cond_30
    invoke-virtual {v0}, Lcom/android/browser/Tab;->getParent()Lcom/android/browser/Tab;

    move-result-object v1

    .line 3118
    if-eqz v1, :cond_3d

    .line 3119
    invoke-virtual {p0, v1}, Lcom/android/browser/Controller;->switchToTab(Lcom/android/browser/Tab;)Z

    .line 3121
    invoke-virtual {p0, v0}, Lcom/android/browser/Controller;->closeTab(Lcom/android/browser/Tab;)V

    goto :goto_25

    .line 3123
    :cond_3d
    invoke-virtual {v0}, Lcom/android/browser/Tab;->getAppId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_49

    invoke-virtual {v0}, Lcom/android/browser/Tab;->closeOnBack()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 3124
    :cond_49
    invoke-virtual {p0, v2}, Lcom/android/browser/Controller;->closeCurrentTab(Z)V

    .line 3133
    :cond_4c
    iget-object v0, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    goto :goto_25
.end method

.method public handleNewIntent(Landroid/content/Intent;)V
    .registers 4
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    .line 739
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0}, Lcom/android/browser/UI;->isWebShowing()Z

    move-result v0

    if-nez v0, :cond_e

    .line 740
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, v1}, Lcom/android/browser/UI;->showWeb(Z)V

    .line 744
    :cond_e
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Z)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_20

    .line 745
    invoke-static {p0, p1}, Lcom/android/browser/OfflineComboViewActivity;->loadOfflineCombinedPageIfNeeded(Lcom/android/browser/Controller;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 752
    :goto_1f
    return-void

    .line 751
    :cond_20
    iget-object v0, p0, Lcom/android/browser/Controller;->mIntentHandler:Lcom/android/browser/IntentHandler;

    invoke-virtual {v0, p1}, Lcom/android/browser/IntentHandler;->onNewIntent(Landroid/content/Intent;)V

    goto :goto_1f
.end method

.method public hideAutoLogin(Lcom/android/browser/Tab;)V
    .registers 3
    .parameter "tab"

    .prologue
    .line 1304
    sget-boolean v0, Lcom/android/browser/Controller;->$assertionsDisabled:Z

    if-nez v0, :cond_10

    invoke-virtual {p1}, Lcom/android/browser/Tab;->inForeground()Z

    move-result v0

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1305
    :cond_10
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1}, Lcom/android/browser/UI;->hideAutoLogin(Lcom/android/browser/Tab;)V

    .line 1306
    return-void
.end method

.method public hideCustomView()V
    .registers 2

    .prologue
    .line 1395
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0}, Lcom/android/browser/UI;->isCustomViewShowing()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1396
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0}, Lcom/android/browser/UI;->onHideCustomView()V

    .line 1398
    iget v0, p0, Lcom/android/browser/Controller;->mOldMenuState:I

    iput v0, p0, Lcom/android/browser/Controller;->mMenuState:I

    .line 1399
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/browser/Controller;->mOldMenuState:I

    .line 1400
    iget-object v0, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1402
    :cond_19
    return-void
.end method

.method protected isActivityPaused()Z
    .registers 2

    .prologue
    .line 967
    iget-boolean v0, p0, Lcom/android/browser/Controller;->mActivityPaused:Z

    return v0
.end method

.method public isCustomViewShowing()Z
    .registers 2

    .prologue
    .line 896
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0}, Lcom/android/browser/UI;->isCustomViewShowing()Z

    move-result v0

    return v0
.end method

.method public isInCustomActionMode()Z
    .registers 2

    .prologue
    .line 2249
    iget-object v0, p0, Lcom/android/browser/Controller;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method isInLoad()Z
    .registers 2

    .prologue
    .line 2273
    iget-boolean v0, p0, Lcom/android/browser/Controller;->mInLoad:Z

    return v0
.end method

.method public isMenuDown()Z
    .registers 2

    .prologue
    .line 3357
    iget-boolean v0, p0, Lcom/android/browser/Controller;->mMenuIsDown:Z

    return v0
.end method

.method public isRssLinkedPage()Z
    .registers 8

    .prologue
    const/4 v4, 0x0

    .line 3523
    :try_start_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Z)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 3541
    :cond_c
    :goto_c
    return v4

    .line 3525
    :cond_d
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v3

    .line 3527
    .local v3, view:Landroid/webkit/WebView;
    if-eqz v3, :cond_c

    .line 3530
    invoke-virtual {v3}, Landroid/webkit/WebView;->getWebFeedLinks()[Landroid/webkit/WebFeedLink;

    move-result-object v2

    .line 3532
    .local v2, links:[Landroid/webkit/WebFeedLink;
    if-eqz v2, :cond_c

    .line 3534
    array-length v0, v2

    .line 3536
    .local v0, a:I
    array-length v5, v2
    :try_end_1b
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1b} :catch_1f

    if-eqz v5, :cond_c

    .line 3537
    const/4 v4, 0x1

    goto :goto_c

    .line 3540
    .end local v0           #a:I
    .end local v2           #links:[Landroid/webkit/WebFeedLink;
    .end local v3           #view:Landroid/webkit/WebView;
    :catch_1f
    move-exception v1

    .line 3541
    .local v1, e:Ljava/lang/NoClassDefFoundError;
    goto :goto_c
.end method

.method public loadUrl(Lcom/android/browser/Tab;Ljava/lang/String;)V
    .registers 4
    .parameter "tab"
    .parameter "url"

    .prologue
    .line 3052
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/browser/Controller;->loadUrl(Lcom/android/browser/Tab;Ljava/lang/String;Ljava/util/Map;)V

    .line 3053
    return-void
.end method

.method protected loadUrl(Lcom/android/browser/Tab;Ljava/lang/String;Ljava/util/Map;)V
    .registers 5
    .parameter "tab"
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/browser/Tab;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3056
    .local p3, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_d

    .line 3057
    invoke-virtual {p0, p1}, Lcom/android/browser/Controller;->dismissSubWindow(Lcom/android/browser/Tab;)V

    .line 3058
    invoke-virtual {p1, p2, p3}, Lcom/android/browser/Tab;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 3059
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1}, Lcom/android/browser/UI;->onProgressChanged(Lcom/android/browser/Tab;)V

    .line 3061
    :cond_d
    return-void
.end method

.method protected loadUrlDataIn(Lcom/android/browser/Tab;Lcom/android/browser/IntentHandler$UrlData;)V
    .registers 5
    .parameter "t"
    .parameter "data"

    .prologue
    .line 3070
    if-eqz p2, :cond_b

    .line 3071
    iget-object v0, p2, Lcom/android/browser/IntentHandler$UrlData;->mVoiceIntent:Landroid/content/Intent;

    if-eqz v0, :cond_c

    .line 3072
    iget-object v0, p2, Lcom/android/browser/IntentHandler$UrlData;->mVoiceIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Lcom/android/browser/Tab;->activateVoiceSearchMode(Landroid/content/Intent;)V

    .line 3079
    :cond_b
    :goto_b
    return-void

    .line 3073
    :cond_c
    invoke-virtual {p2}, Lcom/android/browser/IntentHandler$UrlData;->isPreloaded()Z

    move-result v0

    if-nez v0, :cond_b

    .line 3076
    iget-object v0, p2, Lcom/android/browser/IntentHandler$UrlData;->mUrl:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/browser/IntentHandler$UrlData;->mHeaders:Ljava/util/Map;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/browser/Controller;->loadUrl(Lcom/android/browser/Tab;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_b
.end method

.method protected loadUrlFromContext(Ljava/lang/String;)V
    .registers 5
    .parameter "url"

    .prologue
    .line 3032
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 3033
    .local v0, tab:Lcom/android/browser/Tab;
    if-eqz v0, :cond_28

    invoke-virtual {v0}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    .line 3035
    .local v1, view:Landroid/webkit/WebView;
    :goto_a
    if-eqz p1, :cond_27

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_27

    if-eqz v0, :cond_27

    if-eqz v1, :cond_27

    .line 3036
    invoke-static {p1}, Lcom/android/browser/UrlUtils;->smartUrlFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3037
    invoke-virtual {v1}, Landroid/webkit/WebView;->getWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v2

    invoke-virtual {v2, v1, p1}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 3038
    invoke-virtual {p0, v0, p1}, Lcom/android/browser/Controller;->loadUrl(Lcom/android/browser/Tab;Ljava/lang/String;)V

    .line 3041
    :cond_27
    return-void

    .line 3033
    .end local v1           #view:Landroid/webkit/WebView;
    :cond_28
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .registers 4
    .parameter "mode"

    .prologue
    .line 2267
    invoke-virtual {p0}, Lcom/android/browser/Controller;->isInCustomActionMode()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2270
    :goto_6
    return-void

    .line 2268
    :cond_7
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    iget-boolean v1, p0, Lcom/android/browser/Controller;->mInLoad:Z

    invoke-interface {v0, v1}, Lcom/android/browser/UI;->onActionModeFinished(Z)V

    .line 2269
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/Controller;->mActionMode:Landroid/view/ActionMode;

    goto :goto_6
.end method

.method onActionModeStarted(Landroid/view/ActionMode;)V
    .registers 3
    .parameter "mode"

    .prologue
    .line 2240
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1}, Lcom/android/browser/UI;->onActionModeStarted(Landroid/view/ActionMode;)V

    .line 2241
    iput-object p1, p0, Lcom/android/browser/Controller;->mActionMode:Landroid/view/ActionMode;

    .line 2242
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1406
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_a

    .line 1489
    :goto_9
    return-void

    .line 1407
    :cond_a
    packed-switch p1, :pswitch_data_110

    .line 1488
    :cond_d
    :goto_d
    :pswitch_d
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    goto :goto_9

    .line 1409
    :pswitch_15
    if-ne p2, v3, :cond_d

    if-eqz p3, :cond_d

    .line 1410
    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1411
    const-string v1, "privacy_clear_history"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1412
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->removeParentChildRelationShips()V

    goto :goto_d

    .line 1418
    :pswitch_2d
    iget-object v0, p0, Lcom/android/browser/Controller;->mUploadHandler:Lcom/android/browser/UploadHandler;

    if-eqz v0, :cond_d

    .line 1419
    iget-object v0, p0, Lcom/android/browser/Controller;->mUploadHandler:Lcom/android/browser/UploadHandler;

    invoke-virtual {v0, p2, p3}, Lcom/android/browser/UploadHandler;->onResult(ILandroid/content/Intent;)V

    goto :goto_d

    .line 1425
    :pswitch_37
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getSettings()Lcom/android/browser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->getAutoFillProfile()Landroid/webkit/WebSettings$AutoFillProfile;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 1426
    iget-object v0, p0, Lcom/android/browser/Controller;->mAutoFillSetupMessage:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1427
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/Controller;->mAutoFillSetupMessage:Landroid/os/Message;

    goto :goto_d

    .line 1433
    :pswitch_4a
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Z)Z

    move-result v0

    if-ne v0, v1, :cond_63

    .line 1434
    if-ne p2, v1, :cond_63

    .line 1435
    const-string v0, "Controller"

    const-string v1, "exit_browser : back from offline page"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1436
    iget-object v0, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_d

    .line 1443
    :cond_63
    :pswitch_63
    if-eqz p3, :cond_d

    if-ne p2, v3, :cond_d

    .line 1446
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, v2}, Lcom/android/browser/UI;->showWeb(Z)V

    .line 1447
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_88

    .line 1448
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 1449
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 1450
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/Controller;->loadUrl(Lcom/android/browser/Tab;Ljava/lang/String;)V

    goto :goto_d

    .line 1451
    :cond_88
    const-string v0, "open_all"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b4

    .line 1452
    const-string v0, "open_all"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1454
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 1455
    array-length v6, v5

    move v3, v2

    move-object v4, v0

    :goto_9d
    if-ge v3, v6, :cond_d

    aget-object v7, v5, v3

    .line 1456
    iget-object v0, p0, Lcom/android/browser/Controller;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->openInBackground()Z

    move-result v0

    if-nez v0, :cond_b2

    move v0, v1

    :goto_aa
    invoke-virtual {p0, v7, v4, v0, v1}, Lcom/android/browser/Controller;->openTab(Ljava/lang/String;Lcom/android/browser/Tab;ZZ)Lcom/android/browser/Tab;

    move-result-object v4

    .line 1455
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_9d

    :cond_b2
    move v0, v2

    .line 1456
    goto :goto_aa

    .line 1459
    :cond_b4
    const-string v0, "snapshot_id"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1460
    const-string v0, "snapshot_id"

    const-wide/16 v2, -0x1

    invoke-virtual {p3, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 1462
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_d

    .line 1463
    invoke-virtual {p0, v2, v3, v1}, Lcom/android/browser/Controller;->createNewSnapshotTab(JZ)Lcom/android/browser/SnapshotTab;

    goto/16 :goto_d

    .line 1469
    :pswitch_cf
    if-ne p2, v3, :cond_d

    if-eqz p3, :cond_d

    .line 1470
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1471
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 1472
    if-eqz v3, :cond_fa

    const-string v4, "new_window"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_fa

    .line 1474
    iget-object v3, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v3}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v3

    iget-object v4, p0, Lcom/android/browser/Controller;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v4}, Lcom/android/browser/BrowserSettings;->openInBackground()Z

    move-result v4

    if-nez v4, :cond_f8

    :goto_f3
    invoke-virtual {p0, v0, v3, v1, v2}, Lcom/android/browser/Controller;->openTab(Ljava/lang/String;Lcom/android/browser/Tab;ZZ)Lcom/android/browser/Tab;

    goto/16 :goto_d

    :cond_f8
    move v1, v2

    goto :goto_f3

    .line 1476
    :cond_fa
    iget-object v1, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v1

    .line 1477
    invoke-virtual {p0, v1}, Lcom/android/browser/Controller;->dismissSubWindow(Lcom/android/browser/Tab;)V

    .line 1478
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_d

    .line 1480
    invoke-virtual {p0, v0}, Lcom/android/browser/Controller;->AddFeedToGoogleReader(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 1407
    :pswitch_data_110
    .packed-switch 0x1
        :pswitch_63
        :pswitch_d
        :pswitch_15
        :pswitch_2d
        :pswitch_37
        :pswitch_d
        :pswitch_cf
        :pswitch_4a
    .end packed-switch
.end method

.method protected onBackKey()V
    .registers 3

    .prologue
    .line 1542
    iget-object v1, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v1}, Lcom/android/browser/UI;->onBackKey()Z

    move-result v1

    if-nez v1, :cond_19

    .line 1543
    iget-object v1, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentSubWindow()Landroid/webkit/WebView;

    move-result-object v0

    .line 1544
    .local v0, subwindow:Landroid/webkit/WebView;
    if-eqz v0, :cond_24

    .line 1545
    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1546
    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 1554
    .end local v0           #subwindow:Landroid/webkit/WebView;
    :cond_19
    :goto_19
    return-void

    .line 1548
    .restart local v0       #subwindow:Landroid/webkit/WebView;
    :cond_1a
    iget-object v1, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/browser/Controller;->dismissSubWindow(Lcom/android/browser/Tab;)V

    goto :goto_19

    .line 1551
    :cond_24
    invoke-virtual {p0}, Lcom/android/browser/Controller;->goBackOnePageOrQuit()V

    goto :goto_19
.end method

.method protected onConfgurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .parameter "config"

    .prologue
    .line 730
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/Controller;->mConfigChanged:Z

    .line 731
    iget-object v0, p0, Lcom/android/browser/Controller;->mPageDialogsHandler:Lcom/android/browser/PageDialogsHandler;

    if-eqz v0, :cond_c

    .line 732
    iget-object v0, p0, Lcom/android/browser/Controller;->mPageDialogsHandler:Lcom/android/browser/PageDialogsHandler;

    invoke-virtual {v0, p1}, Lcom/android/browser/PageDialogsHandler;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 734
    :cond_c
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1}, Lcom/android/browser/UI;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 735
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 9
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2123
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v1

    const v2, 0x7f0d0153

    if-ne v1, v2, :cond_b

    .line 2151
    :cond_a
    :goto_a
    return v0

    .line 2127
    :cond_b
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    .line 2128
    const/4 v1, 0x1

    .line 2129
    sparse-switch v2, :sswitch_data_36

    .line 2149
    invoke-virtual {p0, p1}, Lcom/android/browser/Controller;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_a

    .line 2134
    :sswitch_18
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v3

    .line 2135
    if-eqz v3, :cond_a

    .line 2139
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 2141
    const-string v5, "webview"

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2142
    iget-object v5, p0, Lcom/android/browser/Controller;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x66

    invoke-virtual {v5, v6, v2, v0, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2144
    invoke-virtual {v3, v0}, Landroid/webkit/WebView;->requestFocusNodeHref(Landroid/os/Message;)V

    move v0, v1

    .line 2145
    goto :goto_a

    .line 2129
    nop

    :sswitch_data_36
    .sparse-switch
        0x7f0d0043 -> :sswitch_18
        0x7f0d0143 -> :sswitch_18
        0x7f0d0144 -> :sswitch_18
    .end sparse-switch
.end method

.method public onContextMenuClosed(Landroid/view/Menu;)V
    .registers 4
    .parameter "menu"

    .prologue
    .line 2202
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    iget-boolean v1, p0, Lcom/android/browser/Controller;->mInLoad:Z

    invoke-interface {v0, p1, v1}, Lcom/android/browser/UI;->onContextMenuClosed(Landroid/view/Menu;Z)V

    .line 2203
    return-void
.end method

.method protected onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x2

    const/16 v8, 0x8

    const/4 v7, 0x7

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1574
    instance-of v0, p2, Lcom/android/browser/TitleBar;

    if-eqz v0, :cond_b

    .line 1742
    :cond_a
    :goto_a
    return-void

    .line 1577
    :cond_b
    instance-of v0, p2, Landroid/webkit/WebView;

    if-eqz v0, :cond_a

    .line 1580
    check-cast p2, Landroid/webkit/WebView;

    .line 1581
    invoke-virtual {p2}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v0

    .line 1582
    if-eqz v0, :cond_a

    .line 1586
    invoke-virtual {v0}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v3

    .line 1587
    if-nez v3, :cond_25

    .line 1588
    const-string v0, "Controller"

    const-string v1, "We should not show context menu when nothing is touched"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 1592
    :cond_25
    const/16 v4, 0x9

    if-eq v3, v4, :cond_a

    .line 1600
    iget-object v4, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v4

    .line 1601
    const v5, 0x7f100006

    invoke-virtual {v4, v5, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1604
    invoke-virtual {v0}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v4

    .line 1605
    const v5, 0x7f0d0137

    if-ne v3, v6, :cond_a0

    move v0, v1

    :goto_3f
    invoke-interface {p1, v5, v0}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 1607
    const v5, 0x7f0d013b

    const/4 v0, 0x4

    if-ne v3, v0, :cond_a2

    move v0, v1

    :goto_49
    invoke-interface {p1, v5, v0}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 1609
    const v5, 0x7f0d013e

    const/4 v0, 0x3

    if-ne v3, v0, :cond_a4

    move v0, v1

    :goto_53
    invoke-interface {p1, v5, v0}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 1611
    const v5, 0x7f0d0145

    const/4 v0, 0x5

    if-eq v3, v0, :cond_5e

    if-ne v3, v8, :cond_a6

    :cond_5e
    move v0, v1

    :goto_5f
    invoke-interface {p1, v5, v0}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 1614
    const v5, 0x7f0d0141

    if-eq v3, v7, :cond_69

    if-ne v3, v8, :cond_a8

    :cond_69
    move v0, v1

    :goto_6a
    invoke-interface {p1, v5, v0}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 1617
    if-eq v3, v7, :cond_77

    if-eq v3, v6, :cond_77

    const/4 v0, 0x4

    if-eq v3, v0, :cond_77

    const/4 v0, 0x3

    if-ne v3, v0, :cond_aa

    :cond_77
    move v0, v1

    .line 1621
    :goto_78
    const v5, 0x7f0d014a

    invoke-interface {p1, v5, v0}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 1622
    if-eqz v0, :cond_8f

    .line 1623
    const v0, 0x7f0d014b

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v5, Lcom/android/browser/Controller$SelectText;

    invoke-direct {v5, p2}, Lcom/android/browser/Controller$SelectText;-><init>(Landroid/webkit/WebView;)V

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1627
    :cond_8f
    packed-switch v3, :pswitch_data_224

    .line 1737
    :pswitch_92
    const-string v0, "Controller"

    const-string v1, "We should not get here."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1741
    :cond_99
    :goto_99
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1}, Lcom/android/browser/UI;->onContextMenuCreated(Landroid/view/Menu;)V

    goto/16 :goto_a

    :cond_a0
    move v0, v2

    .line 1605
    goto :goto_3f

    :cond_a2
    move v0, v2

    .line 1607
    goto :goto_49

    :cond_a4
    move v0, v2

    .line 1609
    goto :goto_53

    :cond_a6
    move v0, v2

    .line 1611
    goto :goto_5f

    :cond_a8
    move v0, v2

    .line 1614
    goto :goto_6a

    :cond_aa
    move v0, v2

    .line 1617
    goto :goto_78

    .line 1629
    :pswitch_ac
    invoke-static {v4}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1630
    const v0, 0x7f0d0138

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tel:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1633
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1634
    const-string v1, "phone"

    invoke-static {v4}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1635
    const-string v1, "vnd.android.cursor.item/contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1636
    const v1, 0x7f0d0139

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1638
    const v0, 0x7f0d013a

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/android/browser/Controller$Copy;

    invoke-direct {v1, p0, v4}, Lcom/android/browser/Controller$Copy;-><init>(Lcom/android/browser/Controller;Ljava/lang/CharSequence;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_99

    .line 1644
    :pswitch_10a
    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1645
    const v0, 0x7f0d013c

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mailto:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1648
    const v0, 0x7f0d013d

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/android/browser/Controller$Copy;

    invoke-direct {v1, p0, v4}, Lcom/android/browser/Controller$Copy;-><init>(Lcom/android/browser/Controller;Ljava/lang/CharSequence;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_99

    .line 1654
    :pswitch_146
    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1655
    const v0, 0x7f0d013f

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "geo:0,0?q="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1659
    const v0, 0x7f0d0140

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/android/browser/Controller$Copy;

    invoke-direct {v1, p0, v4}, Lcom/android/browser/Controller$Copy;-><init>(Lcom/android/browser/Controller;Ljava/lang/CharSequence;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_99

    .line 1666
    :pswitch_186
    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1668
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->canCreateNewTab()Z

    move-result v5

    .line 1669
    const v0, 0x7f0d0142

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 1671
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getSettings()Lcom/android/browser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->openInBackground()Z

    move-result v0

    if-eqz v0, :cond_217

    const v0, 0x7f0c0062

    :goto_1a3
    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 1674
    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1675
    if-eqz v5, :cond_1b5

    .line 1676
    if-ne v8, v3, :cond_21b

    .line 1677
    new-instance v0, Lcom/android/browser/Controller$6;

    invoke-direct {v0, p0, p2}, Lcom/android/browser/Controller$6;-><init>(Lcom/android/browser/Controller;Landroid/webkit/WebView;)V

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1706
    :cond_1b5
    :goto_1b5
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Z)Z

    move-result v0

    if-ne v0, v1, :cond_1c9

    .line 1707
    const v0, 0x7f0d0143

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1709
    :cond_1c9
    if-eq v3, v7, :cond_99

    .line 1714
    :pswitch_1cb
    const/4 v0, 0x5

    if-ne v3, v0, :cond_1d1

    .line 1715
    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1717
    :cond_1d1
    const v0, 0x7f0d0148

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/android/browser/Controller$8;

    invoke-direct {v1, p0, v4}, Lcom/android/browser/Controller$8;-><init>(Lcom/android/browser/Controller;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1725
    const v0, 0x7f0d0146

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/android/browser/Controller$Download;

    iget-object v2, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/webkit/WebView;->isPrivateBrowsingEnabled()Z

    move-result v3

    invoke-direct {v1, v2, v4, v3}, Lcom/android/browser/Controller$Download;-><init>(Landroid/app/Activity;Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1729
    const v0, 0x7f0d0147

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/android/browser/Controller$CopyImage;

    invoke-direct {v1, p0, v4}, Lcom/android/browser/Controller$CopyImage;-><init>(Lcom/android/browser/Controller;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1731
    const v0, 0x7f0d0149

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/android/browser/WallpaperHandler;

    iget-object v2, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2, v4}, Lcom/android/browser/WallpaperHandler;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_99

    .line 1671
    :cond_217
    const v0, 0x7f0c0061

    goto :goto_1a3

    .line 1693
    :cond_21b
    new-instance v0, Lcom/android/browser/Controller$7;

    invoke-direct {v0, p0, v4}, Lcom/android/browser/Controller$7;-><init>(Lcom/android/browser/Controller;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_1b5

    .line 1627
    :pswitch_data_224
    .packed-switch 0x2
        :pswitch_ac
        :pswitch_146
        :pswitch_10a
        :pswitch_1cb
        :pswitch_92
        :pswitch_186
        :pswitch_186
    .end packed-switch
.end method

.method onCreateDialog(I)Landroid/app/Dialog;
    .registers 4
    .parameter

    .prologue
    .line 3599
    packed-switch p1, :pswitch_data_18

    .line 3612
    :goto_3
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 3602
    :pswitch_5
    iget-object v0, p0, Lcom/android/browser/Controller;->mPrint:Lcom/android/browser/PrintSec;

    if-eqz v0, :cond_10

    .line 3603
    iget-object v0, p0, Lcom/android/browser/Controller;->mPrint:Lcom/android/browser/PrintSec;

    invoke-virtual {v0}, Lcom/android/browser/PrintSec;->onCreateDialog()Landroid/app/ProgressDialog;

    move-result-object v0

    goto :goto_4

    .line 3605
    :cond_10
    const-string v0, "Controller"

    const-string v1, "onCreateDialog : mPrint is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 3599
    :pswitch_data_18
    .packed-switch 0x65
        :pswitch_5
    .end packed-switch
.end method

.method protected onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter

    .prologue
    .line 1564
    iget v0, p0, Lcom/android/browser/Controller;->mMenuState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    .line 1565
    const/4 v0, 0x0

    .line 1569
    :goto_6
    return v0

    .line 1567
    :cond_7
    iget-object v0, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 1568
    const v1, 0x7f100005

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1569
    const/4 v0, 0x1

    goto :goto_6
.end method

.method onDestroy()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 935
    iget-object v2, p0, Lcom/android/browser/Controller;->mUploadHandler:Lcom/android/browser/UploadHandler;

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/android/browser/Controller;->mUploadHandler:Lcom/android/browser/UploadHandler;

    invoke-virtual {v2}, Lcom/android/browser/UploadHandler;->handled()Z

    move-result v2

    if-nez v2, :cond_15

    .line 936
    iget-object v2, p0, Lcom/android/browser/Controller;->mUploadHandler:Lcom/android/browser/UploadHandler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/browser/UploadHandler;->onResult(ILandroid/content/Intent;)V

    .line 937
    iput-object v4, p0, Lcom/android/browser/Controller;->mUploadHandler:Lcom/android/browser/UploadHandler;

    .line 939
    :cond_15
    iget-object v2, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    if-nez v2, :cond_1a

    .line 964
    :goto_19
    return-void

    .line 940
    :cond_1a
    iget-object v2, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v2}, Lcom/android/browser/UI;->onDestroy()V

    .line 944
    sget-boolean v2, Lcom/android/browser/Controller;->ENABLE_PINCH_ZOOM_LISTENER:Z

    if-eqz v2, :cond_2e

    .line 945
    iget-object v2, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v1

    .line 946
    .local v1, webview:Landroid/webkit/WebView;
    if-eqz v1, :cond_2e

    .line 947
    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setPinchZoomListener(Landroid/webkit/PinchZoomListener;)V

    .line 952
    .end local v1           #webview:Landroid/webkit/WebView;
    :cond_2e
    iget-object v2, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 953
    .local v0, t:Lcom/android/browser/Tab;
    if-eqz v0, :cond_3c

    .line 954
    invoke-virtual {p0, v0}, Lcom/android/browser/Controller;->dismissSubWindow(Lcom/android/browser/Tab;)V

    .line 955
    invoke-virtual {p0, v0}, Lcom/android/browser/Controller;->removeTab(Lcom/android/browser/Tab;)V

    .line 957
    :cond_3c
    iget-object v2, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/browser/Controller;->mBookmarksObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 959
    iget-object v2, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->destroy()V

    .line 960
    invoke-static {}, Landroid/webkit/WebIconDatabase;->getInstance()Landroid/webkit/WebIconDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebIconDatabase;->close()V

    .line 962
    iget-object v2, p0, Lcom/android/browser/Controller;->mSystemAllowGeolocationOrigins:Lcom/android/browser/SystemAllowGeolocationOrigins;

    invoke-virtual {v2}, Lcom/android/browser/SystemAllowGeolocationOrigins;->stop()V

    .line 963
    iput-object v4, p0, Lcom/android/browser/Controller;->mSystemAllowGeolocationOrigins:Lcom/android/browser/SystemAllowGeolocationOrigins;

    goto :goto_19
.end method

.method public onDownloadStart(Lcom/android/browser/Tab;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1254
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v6

    .line 1255
    iget-object v0, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/webkit/WebView;->isPrivateBrowsingEnabled()Z

    move-result v5

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-static/range {v0 .. v5}, Lcom/android/browser/DownloadHandler;->onDownloadStart(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1259
    const-string v0, "application/vnd.webkit.maybe.feed"

    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1b

    .line 1277
    :cond_1a
    :goto_1a
    return-void

    .line 1262
    :cond_1b
    invoke-virtual {v6}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v0

    if-nez v0, :cond_1a

    .line 1265
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    if-ne p1, v0, :cond_3d

    .line 1268
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/Tab;->getParent()Lcom/android/browser/Tab;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 1270
    invoke-virtual {p0}, Lcom/android/browser/Controller;->goBackOnePageOrQuit()V

    goto :goto_1a

    .line 1274
    :cond_3d
    invoke-virtual {p0, p1}, Lcom/android/browser/Controller;->closeTab(Lcom/android/browser/Tab;)V

    goto :goto_1a
.end method

.method public onFavicon(Lcom/android/browser/Tab;Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V
    .registers 6
    .parameter "tab"
    .parameter "view"
    .parameter "icon"

    .prologue
    .line 1161
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1}, Lcom/android/browser/UI;->onTabDataChanged(Lcom/android/browser/Tab;)V

    .line 1162
    invoke-virtual {p2}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1, p3}, Lcom/android/browser/Controller;->maybeUpdateFavicon(Lcom/android/browser/Tab;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 1163
    return-void
.end method

.method onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 11
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 3205
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    .line 3208
    .local v1, noModifiers:Z
    if-nez v1, :cond_17

    const/16 v7, 0x52

    if-eq v7, p1, :cond_14

    const/16 v7, 0x71

    if-eq v7, p1, :cond_14

    const/16 v7, 0x72

    if-ne v7, p1, :cond_17

    .line 3212
    :cond_14
    iput-boolean v6, p0, Lcom/android/browser/Controller;->mMenuIsDown:Z

    .line 3322
    :cond_16
    :goto_16
    return v5

    .line 3216
    :cond_17
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v4

    .line 3217
    .local v4, webView:Landroid/webkit/WebView;
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v3

    .line 3218
    .local v3, tab:Lcom/android/browser/Tab;
    if-eqz v4, :cond_16

    if-eqz v3, :cond_16

    .line 3220
    const/16 v5, 0x1000

    invoke-virtual {p2, v5}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v0

    .line 3221
    .local v0, ctrl:Z
    invoke-virtual {p2, v6}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v2

    .line 3223
    .local v2, shift:Z
    sparse-switch p1, :sswitch_data_b6

    .line 3322
    :cond_30
    iget-object v5, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v5, p1, p2}, Lcom/android/browser/UI;->dispatchKey(ILandroid/view/KeyEvent;)Z

    move-result v5

    goto :goto_16

    .line 3225
    :sswitch_37
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v5

    if-eqz v5, :cond_30

    .line 3226
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v5

    if-eqz v5, :cond_4c

    .line 3228
    invoke-direct {p0}, Lcom/android/browser/Controller;->getPrevTab()Lcom/android/browser/Tab;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/browser/Controller;->switchToTab(Lcom/android/browser/Tab;)Z

    :goto_4a
    move v5, v6

    .line 3233
    goto :goto_16

    .line 3231
    :cond_4c
    invoke-direct {p0}, Lcom/android/browser/Controller;->getNextTab()Lcom/android/browser/Tab;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/browser/Controller;->switchToTab(Lcom/android/browser/Tab;)Z

    goto :goto_4a

    .line 3240
    :sswitch_54
    if-eqz v2, :cond_5b

    .line 3241
    invoke-virtual {p0}, Lcom/android/browser/Controller;->pageUp()V

    :cond_59
    :goto_59
    move v5, v6

    .line 3245
    goto :goto_16

    .line 3242
    :cond_5b
    if-eqz v1, :cond_59

    .line 3243
    invoke-virtual {p0}, Lcom/android/browser/Controller;->pageDown()V

    goto :goto_59

    .line 3247
    :sswitch_61
    if-eqz v1, :cond_30

    .line 3248
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    move v5, v6

    .line 3249
    goto :goto_16

    .line 3251
    :sswitch_68
    if-eqz v1, :cond_30

    .line 3252
    invoke-virtual {v3}, Lcom/android/browser/Tab;->goForward()V

    move v5, v6

    .line 3253
    goto :goto_16

    .line 3255
    :sswitch_6f
    if-eqz v0, :cond_30

    .line 3256
    invoke-virtual {v3}, Lcom/android/browser/Tab;->goBack()V

    move v5, v6

    .line 3257
    goto :goto_16

    .line 3261
    :sswitch_76
    if-eqz v0, :cond_30

    .line 3262
    invoke-virtual {v3}, Lcom/android/browser/Tab;->goForward()V

    move v5, v6

    .line 3263
    goto :goto_16

    .line 3267
    :sswitch_7d
    if-eqz v0, :cond_30

    .line 3268
    invoke-virtual {v4}, Landroid/webkit/WebView;->selectAll()V

    move v5, v6

    .line 3269
    goto :goto_16

    .line 3274
    :sswitch_84
    if-eqz v0, :cond_30

    .line 3276
    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebSettings;->getAdvancedCopyPasteFeature()Z

    move-result v5

    if-ne v6, v5, :cond_99

    .line 3277
    invoke-virtual {v4}, Landroid/webkit/WebView;->copySelectionSec()Z

    move-result v5

    if-ne v6, v5, :cond_30

    move v5, v6

    .line 3278
    goto/16 :goto_16

    .line 3281
    :cond_99
    invoke-virtual {v4}, Landroid/webkit/WebView;->copySelection()Z

    move v5, v6

    .line 3282
    goto/16 :goto_16

    .line 3305
    :sswitch_9f
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v5

    if-eqz v5, :cond_30

    .line 3306
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v5

    if-eqz v5, :cond_b1

    .line 3307
    invoke-virtual {p0}, Lcom/android/browser/Controller;->openIncognitoTab()Lcom/android/browser/Tab;

    :goto_ae
    move v5, v6

    .line 3311
    goto/16 :goto_16

    .line 3309
    :cond_b1
    invoke-virtual {p0}, Lcom/android/browser/Controller;->openTabToHomePage()Lcom/android/browser/Tab;

    goto :goto_ae

    .line 3223
    nop

    :sswitch_data_b6
    .sparse-switch
        0x4 -> :sswitch_61
        0x15 -> :sswitch_6f
        0x16 -> :sswitch_76
        0x1d -> :sswitch_7d
        0x1f -> :sswitch_84
        0x30 -> :sswitch_9f
        0x3d -> :sswitch_37
        0x3e -> :sswitch_54
        0x7d -> :sswitch_68
    .end sparse-switch
.end method

.method onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 3326
    packed-switch p1, :pswitch_data_12

    .line 3334
    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0

    .line 3328
    :pswitch_6
    iget-object v1, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v1}, Lcom/android/browser/UI;->isWebShowing()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3329
    invoke-virtual {p0, v0}, Lcom/android/browser/Controller;->bookmarksOrHistoryPicker(Z)V

    goto :goto_5

    .line 3326
    :pswitch_data_12
    .packed-switch 0x4
        :pswitch_6
    .end packed-switch
.end method

.method onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 3338
    const/16 v1, 0x52

    if-ne v1, p1, :cond_18

    .line 3339
    iput-boolean v0, p0, Lcom/android/browser/Controller;->mMenuIsDown:Z

    .line 3340
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_18

    .line 3341
    invoke-virtual {p0}, Lcom/android/browser/Controller;->onMenuKey()Z

    move-result v0

    .line 3353
    :cond_17
    :goto_17
    return v0

    .line 3344
    :cond_18
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 3345
    packed-switch p1, :pswitch_data_34

    goto :goto_17

    .line 3347
    :pswitch_22
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_17

    .line 3348
    invoke-virtual {p0}, Lcom/android/browser/Controller;->onBackKey()V

    .line 3349
    const/4 v0, 0x1

    goto :goto_17

    .line 3345
    nop

    :pswitch_data_34
    .packed-switch 0x4
        :pswitch_22
    .end packed-switch
.end method

.method protected onLowMemory()V
    .registers 2

    .prologue
    .line 971
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->freeMemory()V

    .line 972
    return-void
.end method

.method protected onMenuKey()Z
    .registers 2

    .prologue
    .line 1557
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0}, Lcom/android/browser/UI;->onMenuKey()Z

    move-result v0

    return v0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .registers 6
    .parameter "featureId"
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2169
    iget-boolean v0, p0, Lcom/android/browser/Controller;->mOptionsMenuOpen:Z

    if-eqz v0, :cond_23

    .line 2170
    iget-boolean v0, p0, Lcom/android/browser/Controller;->mConfigChanged:Z

    if-eqz v0, :cond_d

    .line 2174
    iput-boolean v1, p0, Lcom/android/browser/Controller;->mConfigChanged:Z

    .line 2193
    :goto_c
    return v2

    .line 2176
    :cond_d
    iget-boolean v0, p0, Lcom/android/browser/Controller;->mExtendedMenuOpen:Z

    if-nez v0, :cond_19

    .line 2177
    iput-boolean v2, p0, Lcom/android/browser/Controller;->mExtendedMenuOpen:Z

    .line 2178
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0}, Lcom/android/browser/UI;->onExtendedMenuOpened()V

    goto :goto_c

    .line 2182
    :cond_19
    iput-boolean v1, p0, Lcom/android/browser/Controller;->mExtendedMenuOpen:Z

    .line 2183
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    iget-boolean v1, p0, Lcom/android/browser/Controller;->mInLoad:Z

    invoke-interface {v0, v1}, Lcom/android/browser/UI;->onExtendedMenuClosed(Z)V

    goto :goto_c

    .line 2188
    :cond_23
    iput-boolean v2, p0, Lcom/android/browser/Controller;->mOptionsMenuOpen:Z

    .line 2189
    iput-boolean v1, p0, Lcom/android/browser/Controller;->mConfigChanged:Z

    .line 2190
    iput-boolean v1, p0, Lcom/android/browser/Controller;->mExtendedMenuOpen:Z

    .line 2191
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0}, Lcom/android/browser/UI;->onOptionsMenuOpened()V

    goto :goto_c
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1877
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v2

    if-nez v2, :cond_a

    .line 2113
    :cond_9
    :goto_9
    return v0

    .line 1880
    :cond_a
    iget-boolean v2, p0, Lcom/android/browser/Controller;->mMenuIsDown:Z

    if-eqz v2, :cond_10

    .line 1885
    iput-boolean v0, p0, Lcom/android/browser/Controller;->mMenuIsDown:Z

    .line 1887
    :cond_10
    iget-object v2, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v2, p1}, Lcom/android/browser/UI;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_1a

    move v0, v1

    .line 1889
    goto :goto_9

    .line 1891
    :cond_1a
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_1c4

    :pswitch_21
    goto :goto_9

    .line 1927
    :pswitch_22
    invoke-virtual {p0, v0}, Lcom/android/browser/Controller;->createBookmarkCurrentPageIntent(Z)Landroid/content/Intent;

    move-result-object v0

    .line 1928
    if-eqz v0, :cond_2d

    .line 1929
    iget-object v2, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_2d
    :goto_2d
    move v0, v1

    .line 2113
    goto :goto_9

    .line 1895
    :pswitch_2f
    iget-object v2, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->canCreateNewTab()Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 1896
    iget-object v2, p0, Lcom/android/browser/Controller;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    iget-object v2, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/android/browser/BrowserActivity;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 1897
    invoke-virtual {p0}, Lcom/android/browser/Controller;->openTabToHomePage()Lcom/android/browser/Tab;

    goto :goto_2d

    .line 1899
    :cond_45
    iget-object v2, p0, Lcom/android/browser/Controller;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v2}, Lcom/android/browser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v4, v0, v2}, Lcom/android/browser/Controller;->openTabAndShowWithURL(Landroid/os/Bundle;ZLjava/lang/String;)Lcom/android/browser/Tab;

    goto :goto_2d

    .line 1902
    :cond_4f
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0}, Lcom/android/browser/UI;->showMaxTabsWarning()V

    goto :goto_2d

    .line 1908
    :pswitch_55
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->canCreateNewTab()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 1909
    iget-object v0, p0, Lcom/android/browser/Controller;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    iget-object v0, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/browser/BrowserActivity;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 1910
    invoke-virtual {p0}, Lcom/android/browser/Controller;->openIncognitoTab()Lcom/android/browser/Tab;

    goto :goto_2d

    .line 1912
    :cond_6b
    const-string v0, "browser:incognito"

    invoke-virtual {p0, v4, v1, v0}, Lcom/android/browser/Controller;->openTabAndShowWithURL(Landroid/os/Bundle;ZLjava/lang/String;)Lcom/android/browser/Tab;

    goto :goto_2d

    .line 1915
    :cond_71
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0}, Lcom/android/browser/UI;->showMaxTabsWarning()V

    goto :goto_2d

    .line 1919
    :pswitch_77
    invoke-virtual {p0}, Lcom/android/browser/Controller;->editUrl()V

    goto :goto_2d

    .line 1934
    :pswitch_7b
    iget-boolean v0, p0, Lcom/android/browser/Controller;->mInLoad:Z

    if-eqz v0, :cond_83

    .line 1935
    invoke-virtual {p0}, Lcom/android/browser/Controller;->stopLoading()V

    goto :goto_2d

    .line 1937
    :cond_83
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    goto :goto_2d

    .line 1942
    :pswitch_8b
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/Tab;->goBack()V

    goto :goto_2d

    .line 1946
    :pswitch_93
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/Tab;->goForward()V

    goto :goto_2d

    .line 1951
    :pswitch_9b
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentSubWindow()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_ad

    .line 1952
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/browser/Controller;->dismissSubWindow(Lcom/android/browser/Tab;)V

    goto :goto_2d

    .line 1955
    :cond_ad
    invoke-virtual {p0}, Lcom/android/browser/Controller;->closeCurrentTab()V

    goto/16 :goto_2d

    .line 1959
    :pswitch_b2
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 1960
    iget-object v2, p0, Lcom/android/browser/Controller;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v2}, Lcom/android/browser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/browser/Controller;->loadUrl(Lcom/android/browser/Tab;Ljava/lang/String;)V

    goto/16 :goto_2d

    .line 1965
    :pswitch_c3
    const-string v0, "Controller"

    const-string v2, "enter case print"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1966
    iget-object v0, p0, Lcom/android/browser/Controller;->mPrint:Lcom/android/browser/PrintSec;

    invoke-virtual {v0}, Lcom/android/browser/PrintSec;->requestPrint()V

    goto/16 :goto_2d

    .line 1971
    :pswitch_d1
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    const-class v3, Lcom/android/browser/BrowserPreferencesPage;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1972
    const-string v2, "currentPage"

    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1974
    iget-object v2, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    const/4 v3, 0x3

    invoke-virtual {v2, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_2d

    .line 1978
    :pswitch_ef
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v4, v1}, Landroid/webkit/WebView;->showFindDialog(Ljava/lang/String;Z)Z

    goto/16 :goto_2d

    .line 1982
    :pswitch_f8
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v2

    .line 1983
    if-eqz v2, :cond_2d

    .line 1984
    iget-object v3, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1985
    invoke-virtual {v2}, Lcom/android/browser/Tab;->createSnapshotValues()Landroid/content/ContentValues;

    move-result-object v4

    .line 1986
    if-eqz v4, :cond_11c

    .line 1987
    new-instance v5, Lcom/android/browser/Controller$10;

    invoke-direct {v5, p0, v3, v4}, Lcom/android/browser/Controller$10;-><init>(Lcom/android/browser/Controller;Landroid/content/ContentResolver;Landroid/content/ContentValues;)V

    new-array v3, v1, [Lcom/android/browser/Tab;

    aput-object v2, v3, v0

    invoke-virtual {v5, v3}, Lcom/android/browser/Controller$10;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_2d

    .line 2030
    :cond_11c
    iget-object v2, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0c005c

    invoke-static {v2, v3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2d

    .line 2037
    :pswitch_12a
    sget-boolean v0, Lcom/android/browser/Controller;->ENABLE_POWER_CONTROL:Z

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/browser/BrowserActivity;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 2038
    iget-object v0, p0, Lcom/android/browser/Controller;->mSecPowerControl:Lcom/android/browser/SecPowerControl;

    invoke-virtual {v0}, Lcom/android/browser/SecPowerControl;->onDrawPowerCtrl()V

    goto/16 :goto_2d

    .line 2042
    :pswitch_13d
    iget-object v2, p0, Lcom/android/browser/Controller;->mPageDialogsHandler:Lcom/android/browser/PageDialogsHandler;

    iget-object v3, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v3}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v4}, Lcom/android/browser/PageDialogsHandler;->showPageInfo(Lcom/android/browser/Tab;ZLjava/lang/String;)V

    goto/16 :goto_2d

    .line 2046
    :pswitch_14a
    invoke-direct {p0}, Lcom/android/browser/Controller;->goLive()V

    move v0, v1

    .line 2047
    goto/16 :goto_9

    .line 2050
    :pswitch_150
    invoke-virtual {p0, v1}, Lcom/android/browser/Controller;->bookmarksOrHistoryPicker(Z)V

    goto/16 :goto_2d

    .line 2054
    :pswitch_155
    iget-object v2, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v2

    .line 2055
    if-eqz v2, :cond_9

    .line 2058
    invoke-direct {p0, v2}, Lcom/android/browser/Controller;->shareCurrentPage(Lcom/android/browser/Tab;)V

    goto/16 :goto_2d

    .line 2062
    :pswitch_162
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->debugDump()V

    goto/16 :goto_2d

    .line 2066
    :pswitch_16b
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->dumpV8Counters()V

    goto/16 :goto_2d

    .line 2070
    :pswitch_174
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->zoomIn()Z

    goto/16 :goto_2d

    .line 2074
    :pswitch_17d
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->zoomOut()Z

    goto/16 :goto_2d

    .line 2078
    :pswitch_186
    invoke-virtual {p0}, Lcom/android/browser/Controller;->viewDownloads()V

    goto/16 :goto_2d

    .line 2082
    :pswitch_18b
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 2083
    iget-object v2, p0, Lcom/android/browser/Controller;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v2, v0}, Lcom/android/browser/BrowserSettings;->toggleDesktopUseragent(Landroid/webkit/WebView;)V

    .line 2084
    invoke-virtual {v0}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_2d

    .line 2096
    :pswitch_19d
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    .line 2097
    :goto_1a1
    sget-object v3, Lcom/android/browser/Controller;->WINDOW_SHORTCUT_ID_ARRAY:[I

    array-length v3, v3

    if-ge v0, v3, :cond_2d

    .line 2098
    sget-object v3, Lcom/android/browser/Controller;->WINDOW_SHORTCUT_ID_ARRAY:[I

    aget v3, v3, v0

    if-ne v3, v2, :cond_1c1

    .line 2099
    iget-object v2, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2, v0}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v0

    .line 2100
    if-eqz v0, :cond_2d

    iget-object v2, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v2

    if-eq v0, v2, :cond_2d

    .line 2102
    invoke-virtual {p0, v0}, Lcom/android/browser/Controller;->switchToTab(Lcom/android/browser/Tab;)Z

    goto/16 :goto_2d

    .line 2097
    :cond_1c1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a1

    .line 1891
    :pswitch_data_1c4
    .packed-switch 0x7f0d00fe
        :pswitch_22
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_7b
        :pswitch_93
        :pswitch_2f
        :pswitch_55
        :pswitch_21
        :pswitch_155
        :pswitch_ef
        :pswitch_18b
        :pswitch_f8
        :pswitch_21
        :pswitch_14a
        :pswitch_12a
        :pswitch_13d
        :pswitch_186
        :pswitch_c3
        :pswitch_d1
        :pswitch_162
        :pswitch_16b
        :pswitch_21
        :pswitch_b2
        :pswitch_150
        :pswitch_174
        :pswitch_17d
        :pswitch_19d
        :pswitch_19d
        :pswitch_19d
        :pswitch_19d
        :pswitch_19d
        :pswitch_19d
        :pswitch_19d
        :pswitch_19d
        :pswitch_8b
        :pswitch_77
        :pswitch_9b
    .end packed-switch
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .registers 4
    .parameter "menu"

    .prologue
    .line 2197
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/Controller;->mOptionsMenuOpen:Z

    .line 2198
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    iget-boolean v1, p0, Lcom/android/browser/Controller;->mInLoad:Z

    invoke-interface {v0, v1}, Lcom/android/browser/UI;->onOptionsMenuClosed(Z)V

    .line 2199
    return-void
.end method

.method public onPageFinished(Lcom/android/browser/Tab;)V
    .registers 6
    .parameter

    .prologue
    const/16 v3, 0x6c

    const/4 v2, 0x0

    .line 1067
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1}, Lcom/android/browser/UI;->onTabDataChanged(Lcom/android/browser/Tab;)V

    .line 1068
    invoke-virtual {p1}, Lcom/android/browser/Tab;->isPrivateBrowsingEnabled()Z

    move-result v0

    if-nez v0, :cond_45

    invoke-virtual {p1}, Lcom/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_45

    invoke-virtual {p1}, Lcom/android/browser/Tab;->isSnapshot()Z

    move-result v0

    if-nez v0, :cond_45

    .line 1074
    invoke-virtual {p1}, Lcom/android/browser/Tab;->inForeground()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual {p0}, Lcom/android/browser/Controller;->didUserStopLoading()Z

    move-result v0

    if-eqz v0, :cond_30

    :cond_2a
    invoke-virtual {p1}, Lcom/android/browser/Tab;->inForeground()Z

    move-result v0

    if-nez v0, :cond_45

    .line 1076
    :cond_30
    iget-object v0, p0, Lcom/android/browser/Controller;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3, p1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    .line 1077
    iget-object v0, p0, Lcom/android/browser/Controller;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/browser/Controller;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, v2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1085
    :cond_45
    iget-boolean v0, p0, Lcom/android/browser/Controller;->mActivityPaused:Z

    if-eqz v0, :cond_52

    invoke-direct {p0, p1}, Lcom/android/browser/Controller;->pauseWebViewTimers(Lcom/android/browser/Tab;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 1086
    invoke-direct {p0}, Lcom/android/browser/Controller;->releaseWakeLock()V

    .line 1094
    :cond_52
    invoke-static {}, Lcom/android/browser/Performance;->tracePageFinished()V

    .line 1096
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 1097
    if-eqz v0, :cond_8f

    .line 1100
    const-string v1, "Controller"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WebView value - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/BrowserSettings;->getController()Lcom/android/browser/Controller;

    move-result-object v1

    .line 1103
    invoke-virtual {v0}, Landroid/webkit/WebView;->getReaderFlag()Z

    move-result v2

    if-eqz v2, :cond_88

    .line 1104
    invoke-virtual {v1}, Lcom/android/browser/Controller;->accessRecognizearticleFromAssets()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadinitialJs(Ljava/lang/String;)V

    .line 1105
    :cond_88
    const-string v0, "Controller"

    const-string v1, "BrowserActivity.onPageFinished - After loadinitialJs"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    :cond_8f
    return-void
.end method

.method public onPageStarted(Lcom/android/browser/Tab;Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V
    .registers 8
    .parameter "tab"
    .parameter "view"
    .parameter "favicon"

    .prologue
    const/4 v3, 0x0

    .line 1015
    iget-object v1, p0, Lcom/android/browser/Controller;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6c

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1019
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieSyncManager;->resetSync()V

    .line 1021
    iget-object v1, p0, Lcom/android/browser/Controller;->mNetworkHandler:Lcom/android/browser/NetworkStateHandler;

    invoke-virtual {v1}, Lcom/android/browser/NetworkStateHandler;->isNetworkUp()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 1022
    invoke-virtual {p2, v3}, Landroid/webkit/WebView;->setNetworkAvailable(Z)V

    .line 1029
    :cond_1a
    iget-boolean v1, p0, Lcom/android/browser/Controller;->mActivityPaused:Z

    if-eqz v1, :cond_21

    .line 1030
    invoke-direct {p0, p1}, Lcom/android/browser/Controller;->resumeWebViewTimers(Lcom/android/browser/Tab;)V

    .line 1033
    :cond_21
    iget-object v1, p0, Lcom/android/browser/Controller;->mNetworkHandler:Lcom/android/browser/NetworkStateHandler;

    invoke-virtual {v1}, Lcom/android/browser/NetworkStateHandler;->isNetworkUp()Z

    move-result v1

    if-nez v1, :cond_2e

    .line 1034
    iget-object v1, p0, Lcom/android/browser/Controller;->mNetworkHandler:Lcom/android/browser/NetworkStateHandler;

    invoke-virtual {v1}, Lcom/android/browser/NetworkStateHandler;->createAndShowNetworkDialog()V

    .line 1037
    :cond_2e
    iput-boolean v3, p0, Lcom/android/browser/Controller;->mLoadStopped:Z

    .line 1038
    invoke-virtual {p0}, Lcom/android/browser/Controller;->endActionMode()V

    .line 1040
    iget-object v1, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v1, p1}, Lcom/android/browser/UI;->onTabDataChanged(Lcom/android/browser/Tab;)V

    .line 1042
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 1051
    .local v0, url:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, p3}, Lcom/android/browser/Controller;->maybeUpdateFavicon(Lcom/android/browser/Tab;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 1053
    invoke-static {v0}, Lcom/android/browser/Performance;->tracePageStart(Ljava/lang/String;)V

    .line 1060
    iget-object v1, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v1, v3}, Lcom/android/browser/UI;->setReaderNavBar(Z)V

    .line 1063
    return-void
.end method

.method protected onPause()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x1

    .line 787
    iget-object v3, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v3}, Lcom/android/browser/UI;->isCustomViewShowing()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 788
    invoke-virtual {p0}, Lcom/android/browser/Controller;->hideCustomView()V

    .line 790
    :cond_d
    iget-boolean v3, p0, Lcom/android/browser/Controller;->mActivityPaused:Z

    if-eqz v3, :cond_19

    .line 791
    const-string v3, "Controller"

    const-string v4, "BrowserActivity is already paused."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    :cond_18
    :goto_18
    return-void

    .line 794
    :cond_19
    iput-boolean v5, p0, Lcom/android/browser/Controller;->mActivityPaused:Z

    .line 795
    iget-object v3, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v3}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v1

    .line 796
    .local v1, tab:Lcom/android/browser/Tab;
    if-eqz v1, :cond_57

    .line 797
    invoke-virtual {v1}, Lcom/android/browser/Tab;->pause()V

    .line 798
    invoke-direct {p0, v1}, Lcom/android/browser/Controller;->pauseWebViewTimers(Lcom/android/browser/Tab;)Z

    move-result v3

    if-nez v3, :cond_57

    .line 799
    iget-object v3, p0, Lcom/android/browser/Controller;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v3, :cond_42

    .line 800
    iget-object v3, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    const-string v4, "power"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 802
    .local v0, pm:Landroid/os/PowerManager;
    const-string v3, "Browser"

    invoke-virtual {v0, v5, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/browser/Controller;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 804
    .end local v0           #pm:Landroid/os/PowerManager;
    :cond_42
    iget-object v3, p0, Lcom/android/browser/Controller;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 805
    iget-object v3, p0, Lcom/android/browser/Controller;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/browser/Controller;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x6b

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/32 v5, 0x493e0

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 809
    :cond_57
    iget-object v3, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v3}, Lcom/android/browser/UI;->onPause()V

    .line 810
    iget-object v3, p0, Lcom/android/browser/Controller;->mNetworkHandler:Lcom/android/browser/NetworkStateHandler;

    invoke-virtual {v3}, Lcom/android/browser/NetworkStateHandler;->onPause()V

    .line 812
    iget-object v3, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v3}, Lcom/android/browser/UI;->dismissDialog()V

    .line 814
    invoke-static {}, Landroid/webkit/WebView;->disablePlatformNotifications()V

    .line 815
    iget-object v3, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/android/browser/NfcHandler;->unregister(Landroid/app/Activity;)V

    .line 816
    sget-object v3, Lcom/android/browser/Controller;->sThumbnailBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_79

    .line 817
    sget-object v3, Lcom/android/browser/Controller;->sThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 818
    sput-object v7, Lcom/android/browser/Controller;->sThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 822
    :cond_79
    sget-boolean v3, Lcom/android/browser/Controller;->ENABLE_PINCH_ZOOM_LISTENER:Z

    if-eqz v3, :cond_18

    .line 823
    iget-object v3, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v3}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v2

    .line 824
    .local v2, webview:Landroid/webkit/WebView;
    if-eqz v2, :cond_18

    .line 825
    invoke-virtual {v2, v7}, Landroid/webkit/WebView;->setPinchZoomListener(Landroid/webkit/PinchZoomListener;)V

    goto :goto_18
.end method

.method onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 8
    .parameter

    .prologue
    const v5, 0x7f0d0124

    const v4, 0x7f0d0110

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1764
    invoke-direct {p0, p1}, Lcom/android/browser/Controller;->updateInLoadMenuItems(Landroid/view/Menu;)V

    .line 1767
    iput-object p1, p0, Lcom/android/browser/Controller;->mCachedMenu:Landroid/view/Menu;

    .line 1771
    iget v0, p0, Lcom/android/browser/Controller;->mMenuState:I

    packed-switch v0, :pswitch_data_7c

    .line 1780
    iget v0, p0, Lcom/android/browser/Controller;->mCurrentMenuState:I

    iget v1, p0, Lcom/android/browser/Controller;->mMenuState:I

    if-eq v0, v1, :cond_21

    .line 1781
    invoke-interface {p1, v4, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1782
    invoke-interface {p1, v4, v3}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 1783
    invoke-interface {p1, v5, v3}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 1788
    :cond_21
    sget-boolean v0, Lcom/android/browser/Controller;->ENABLE_POWER_CONTROL:Z

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/browser/BrowserActivity;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 1789
    :cond_2d
    const v0, 0x7f0d011d

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1790
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1791
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1796
    :cond_3a
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Z)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 1797
    const v0, 0x7f0d0136

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1798
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1799
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1800
    new-instance v1, Lcom/android/browser/Controller$9;

    invoke-direct {v1, p0}, Lcom/android/browser/Controller$9;-><init>(Lcom/android/browser/Controller;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1808
    :cond_59
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/browser/Controller;->updateMenuState(Lcom/android/browser/Tab;Landroid/view/Menu;)V

    .line 1811
    :cond_60
    :goto_60
    iget v0, p0, Lcom/android/browser/Controller;->mMenuState:I

    iput v0, p0, Lcom/android/browser/Controller;->mCurrentMenuState:I

    .line 1812
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1}, Lcom/android/browser/UI;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 1773
    :pswitch_6b
    iget v0, p0, Lcom/android/browser/Controller;->mCurrentMenuState:I

    iget v1, p0, Lcom/android/browser/Controller;->mMenuState:I

    if-eq v0, v1, :cond_60

    .line 1774
    invoke-interface {p1, v4, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1775
    invoke-interface {p1, v4, v2}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 1776
    invoke-interface {p1, v5, v2}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    goto :goto_60

    .line 1771
    nop

    :pswitch_data_7c
    .packed-switch -0x1
        :pswitch_6b
    .end packed-switch
.end method

.method public onProgressChanged(Lcom/android/browser/Tab;)V
    .registers 4
    .parameter "tab"

    .prologue
    .line 1112
    iget-object v1, p0, Lcom/android/browser/Controller;->mCrashRecoveryHandler:Lcom/android/browser/CrashRecoveryHandler;

    invoke-virtual {v1}, Lcom/android/browser/CrashRecoveryHandler;->backupState()V

    .line 1113
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getLoadProgress()I

    move-result v0

    .line 1115
    .local v0, newProgress:I
    const/16 v1, 0x64

    if-ne v0, v1, :cond_26

    .line 1116
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 1124
    iget-boolean v1, p0, Lcom/android/browser/Controller;->mInLoad:Z

    if-eqz v1, :cond_20

    .line 1125
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/browser/Controller;->mInLoad:Z

    .line 1126
    iget-object v1, p0, Lcom/android/browser/Controller;->mCachedMenu:Landroid/view/Menu;

    invoke-direct {p0, v1}, Lcom/android/browser/Controller;->updateInLoadMenuItems(Landroid/view/Menu;)V

    .line 1137
    :cond_20
    :goto_20
    iget-object v1, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v1, p1}, Lcom/android/browser/UI;->onProgressChanged(Lcom/android/browser/Tab;)V

    .line 1138
    return-void

    .line 1129
    :cond_26
    iget-boolean v1, p0, Lcom/android/browser/Controller;->mInLoad:Z

    if-nez v1, :cond_20

    .line 1133
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/browser/Controller;->mInLoad:Z

    .line 1134
    iget-object v1, p0, Lcom/android/browser/Controller;->mCachedMenu:Landroid/view/Menu;

    invoke-direct {p0, v1}, Lcom/android/browser/Controller;->updateInLoadMenuItems(Landroid/view/Menu;)V

    goto :goto_20
.end method

.method public onReceivedHttpAuthRequest(Lcom/android/browser/Tab;Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .parameter "tab"
    .parameter "view"
    .parameter "handler"
    .parameter "host"
    .parameter "realm"

    .prologue
    .line 1226
    const/4 v3, 0x0

    .line 1227
    .local v3, username:Ljava/lang/String;
    const/4 v1, 0x0

    .line 1229
    .local v1, password:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/webkit/HttpAuthHandler;->useHttpAuthUsernamePassword()Z

    move-result v2

    .line 1232
    .local v2, reuseHttpAuthUsernamePassword:Z
    if-eqz v2, :cond_1a

    if-eqz p2, :cond_1a

    .line 1233
    invoke-virtual {p2, p4, p5}, Landroid/webkit/WebView;->getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1234
    .local v0, credentials:[Ljava/lang/String;
    if-eqz v0, :cond_1a

    array-length v4, v0

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1a

    .line 1235
    const/4 v4, 0x0

    aget-object v3, v0, v4

    .line 1236
    const/4 v4, 0x1

    aget-object v1, v0, v4

    .line 1240
    .end local v0           #credentials:[Ljava/lang/String;
    :cond_1a
    if-eqz v3, :cond_22

    if-eqz v1, :cond_22

    .line 1241
    invoke-virtual {p3, v3, v1}, Landroid/webkit/HttpAuthHandler;->proceed(Ljava/lang/String;Ljava/lang/String;)V

    .line 1249
    :goto_21
    return-void

    .line 1243
    :cond_22
    invoke-virtual {p1}, Lcom/android/browser/Tab;->inForeground()Z

    move-result v4

    if-eqz v4, :cond_34

    invoke-virtual {p3}, Landroid/webkit/HttpAuthHandler;->suppressDialog()Z

    move-result v4

    if-nez v4, :cond_34

    .line 1244
    iget-object v4, p0, Lcom/android/browser/Controller;->mPageDialogsHandler:Lcom/android/browser/PageDialogsHandler;

    invoke-virtual {v4, p1, p3, p4, p5}, Lcom/android/browser/PageDialogsHandler;->showHttpAuthentication(Lcom/android/browser/Tab;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_21

    .line 1246
    :cond_34
    invoke-virtual {p3}, Landroid/webkit/HttpAuthHandler;->cancel()V

    goto :goto_21
.end method

.method public onReceivedTitle(Lcom/android/browser/Tab;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 1147
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1}, Lcom/android/browser/UI;->onTabDataChanged(Lcom/android/browser/Tab;)V

    .line 1148
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    .line 1149
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_18

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const v2, 0xc350

    if-lt v1, v2, :cond_19

    .line 1157
    :cond_18
    :goto_18
    return-void

    .line 1154
    :cond_19
    invoke-virtual {p1}, Lcom/android/browser/Tab;->isPrivateBrowsingEnabled()Z

    move-result v1

    if-nez v1, :cond_18

    .line 1155
    iget-object v1, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/browser/DataController;->getInstance(Landroid/content/Context;)Lcom/android/browser/DataController;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/android/browser/DataController;->updateHistoryTitle(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18
.end method

.method onResume()V
    .registers 5

    .prologue
    .line 853
    iget-boolean v2, p0, Lcom/android/browser/Controller;->mActivityPaused:Z

    if-nez v2, :cond_c

    .line 854
    const-string v2, "Controller"

    const-string v3, "BrowserActivity is already resumed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    :cond_b
    :goto_b
    return-void

    .line 857
    :cond_c
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/browser/Controller;->mActivityPaused:Z

    .line 858
    iget-object v2, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 859
    .local v0, current:Lcom/android/browser/Tab;
    if-eqz v0, :cond_1d

    .line 860
    invoke-virtual {v0}, Lcom/android/browser/Tab;->resume()V

    .line 861
    invoke-direct {p0, v0}, Lcom/android/browser/Controller;->resumeWebViewTimers(Lcom/android/browser/Tab;)V

    .line 863
    :cond_1d
    invoke-direct {p0}, Lcom/android/browser/Controller;->releaseWakeLock()V

    .line 865
    iget-object v2, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v2}, Lcom/android/browser/UI;->onResume()V

    .line 866
    iget-object v2, p0, Lcom/android/browser/Controller;->mNetworkHandler:Lcom/android/browser/NetworkStateHandler;

    invoke-virtual {v2}, Lcom/android/browser/NetworkStateHandler;->onResume()V

    .line 867
    invoke-static {}, Landroid/webkit/WebView;->enablePlatformNotifications()V

    .line 868
    iget-object v2, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-static {v2, p0}, Lcom/android/browser/NfcHandler;->register(Landroid/app/Activity;Lcom/android/browser/Controller;)V

    .line 871
    sget-boolean v2, Lcom/android/browser/Controller;->ENABLE_PINCH_ZOOM_LISTENER:Z

    if-eqz v2, :cond_50

    .line 872
    iget-object v2, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v1

    .line 873
    .local v1, webview:Landroid/webkit/WebView;
    iget-object v2, p0, Lcom/android/browser/Controller;->mSecNavScreenGestureDetector:Lcom/android/browser/SecNavScreenGestureDetector;

    if-eqz v2, :cond_50

    .line 874
    if-eqz v1, :cond_50

    .line 875
    iget-object v3, p0, Lcom/android/browser/Controller;->mSecNavScreenGestureDetector:Lcom/android/browser/SecNavScreenGestureDetector;

    iget-object v2, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    check-cast v2, Lcom/android/browser/PhoneUi;

    invoke-virtual {v3, v2}, Lcom/android/browser/SecNavScreenGestureDetector;->setUi(Lcom/android/browser/PhoneUi;)V

    .line 876
    iget-object v2, p0, Lcom/android/browser/Controller;->mSecNavScreenGestureDetector:Lcom/android/browser/SecNavScreenGestureDetector;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setPinchZoomListener(Landroid/webkit/PinchZoomListener;)V

    .line 882
    .end local v1           #webview:Landroid/webkit/WebView;
    :cond_50
    sget-boolean v2, Lcom/android/browser/Controller;->ENABLE_POWER_CONTROL:Z

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/android/browser/BrowserActivity;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 883
    iget-object v2, p0, Lcom/android/browser/Controller;->mSecPowerControl:Lcom/android/browser/SecPowerControl;

    invoke-virtual {v2}, Lcom/android/browser/SecPowerControl;->resetForBrightnessSetting()V

    .line 885
    iget-object v2, p0, Lcom/android/browser/Controller;->mSecPowerControl:Lcom/android/browser/SecPowerControl;

    iget-object v2, p0, Lcom/android/browser/Controller;->mSecPowerControl:Lcom/android/browser/SecPowerControl;

    iget-object v3, p0, Lcom/android/browser/Controller;->mSecPowerControl:Lcom/android/browser/SecPowerControl;

    const-string v3, "ColorizeButton"

    invoke-virtual {v2, v3}, Lcom/android/browser/SecPowerControl;->getColorizeButton(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/browser/SecPowerControl;->strPowerSavingMode:Ljava/lang/String;

    .line 886
    iget-object v2, p0, Lcom/android/browser/Controller;->mSecPowerControl:Lcom/android/browser/SecPowerControl;

    sget-object v2, Lcom/android/browser/SecPowerControl;->strPowerSavingMode:Ljava/lang/String;

    if-nez v2, :cond_7b

    .line 887
    iget-object v2, p0, Lcom/android/browser/Controller;->mSecPowerControl:Lcom/android/browser/SecPowerControl;

    const-string v2, "colorize0"

    sput-object v2, Lcom/android/browser/SecPowerControl;->strPowerSavingMode:Ljava/lang/String;

    .line 889
    :cond_7b
    iget-object v2, p0, Lcom/android/browser/Controller;->mSecPowerControl:Lcom/android/browser/SecPowerControl;

    invoke-virtual {v2}, Lcom/android/browser/SecPowerControl;->updatePowerSavingMode()V

    goto :goto_b
.end method

.method onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 838
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0, p1}, Lcom/android/browser/TabControl;->saveState(Landroid/os/Bundle;)V

    .line 839
    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    .line 841
    const-string v0, "lastActiveDate"

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 845
    :cond_14
    sget-boolean v0, Lcom/android/browser/Controller;->ENABLE_POWER_CONTROL:Z

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/browser/BrowserActivity;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 846
    sget-object v0, Lcom/android/browser/SecPowerControl;->strTempPowerSavingMode:Ljava/lang/String;

    sput-object v0, Lcom/android/browser/SecPowerControl;->strPowerSavingMode:Ljava/lang/String;

    .line 850
    :cond_24
    return-void
.end method

.method public onSearchRequested()Z
    .registers 3

    .prologue
    .line 3377
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/browser/UI;->editUrl(Z)V

    .line 3378
    const/4 v0, 0x1

    return v0
.end method

.method public onSetWebView(Lcom/android/browser/Tab;Landroid/webkit/WebView;)V
    .registers 4
    .parameter "tab"
    .parameter "view"

    .prologue
    .line 522
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1, p2}, Lcom/android/browser/UI;->onSetWebView(Lcom/android/browser/Tab;Landroid/webkit/WebView;)V

    .line 523
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 756
    sget-boolean v0, Lcom/android/browser/Controller;->ENABLE_POWER_CONTROL:Z

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/browser/BrowserActivity;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_42

    .line 757
    iget-object v0, p0, Lcom/android/browser/Controller;->mSecPowerControl:Lcom/android/browser/SecPowerControl;

    invoke-virtual {v0}, Lcom/android/browser/SecPowerControl;->getPowserControlPopup()Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 759
    iget-object v0, p0, Lcom/android/browser/Controller;->mSecPowerControl:Lcom/android/browser/SecPowerControl;

    invoke-virtual {v0}, Lcom/android/browser/SecPowerControl;->getPowserControlPopup()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 760
    iget-object v0, p0, Lcom/android/browser/Controller;->mSecPowerControl:Lcom/android/browser/SecPowerControl;

    invoke-virtual {v0}, Lcom/android/browser/SecPowerControl;->getPowserControlPopup()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 761
    :cond_29
    iget-object v0, p0, Lcom/android/browser/Controller;->mSecPowerControl:Lcom/android/browser/SecPowerControl;

    invoke-virtual {v0}, Lcom/android/browser/SecPowerControl;->getPowserControlPopup()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 762
    iget-object v0, p0, Lcom/android/browser/Controller;->mSecPowerControl:Lcom/android/browser/SecPowerControl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/browser/SecPowerControl;->setPowserControlPopup(Landroid/app/AlertDialog;)V

    .line 764
    :cond_38
    iget-object v0, p0, Lcom/android/browser/Controller;->mSecPowerControl:Lcom/android/browser/SecPowerControl;

    invoke-virtual {v0}, Lcom/android/browser/SecPowerControl;->setSettingBrightness()V

    .line 765
    iget-object v0, p0, Lcom/android/browser/Controller;->mSecPowerControl:Lcom/android/browser/SecPowerControl;

    invoke-virtual {v0}, Lcom/android/browser/SecPowerControl;->setColoursDefault()V

    .line 768
    :cond_42
    return-void
.end method

.method public onUnhandledKeyEvent(Landroid/view/KeyEvent;)V
    .registers 4
    .parameter "event"

    .prologue
    .line 1183
    invoke-virtual {p0}, Lcom/android/browser/Controller;->isActivityPaused()Z

    move-result v0

    if-nez v0, :cond_15

    .line 1184
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_16

    .line 1185
    iget-object v0, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 1190
    :cond_15
    :goto_15
    return-void

    .line 1187
    :cond_16
    iget-object v0, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    goto :goto_15
.end method

.method public onUpdateUrl(Ljava/lang/String;)V
    .registers 3
    .parameter "url"

    .prologue
    .line 3389
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1}, Lcom/android/browser/UI;->onUpdateUrl(Ljava/lang/String;)V

    .line 3390
    return-void
.end method

.method public onUpdatedSecurityState(Lcom/android/browser/Tab;)V
    .registers 3
    .parameter "tab"

    .prologue
    .line 1142
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1}, Lcom/android/browser/UI;->onTabDataChanged(Lcom/android/browser/Tab;)V

    .line 1143
    return-void
.end method

.method public onUserCanceledSsl(Lcom/android/browser/Tab;)V
    .registers 4
    .parameter "tab"

    .prologue
    .line 3084
    invoke-virtual {p1}, Lcom/android/browser/Tab;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3085
    invoke-virtual {p1}, Lcom/android/browser/Tab;->goBack()V

    .line 3089
    :goto_9
    return-void

    .line 3087
    :cond_a
    iget-object v0, p0, Lcom/android/browser/Controller;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/browser/Tab;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_9
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter "acceptType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2320
    .local p1, uploadMsg:Landroid/webkit/ValueCallback;,"Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    new-instance v0, Lcom/android/browser/UploadHandler;

    invoke-direct {v0, p0}, Lcom/android/browser/UploadHandler;-><init>(Lcom/android/browser/Controller;)V

    iput-object v0, p0, Lcom/android/browser/Controller;->mUploadHandler:Lcom/android/browser/UploadHandler;

    .line 2321
    iget-object v0, p0, Lcom/android/browser/Controller;->mUploadHandler:Lcom/android/browser/UploadHandler;

    invoke-virtual {v0, p1, p2}, Lcom/android/browser/UploadHandler;->openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V

    .line 2322
    return-void
.end method

.method public openIncognitoTab()Lcom/android/browser/Tab;
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 2826
    const-string v0, "browser:incognito"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v2, v1}, Lcom/android/browser/Controller;->openTab(Ljava/lang/String;ZZZ)Lcom/android/browser/Tab;

    move-result-object v0

    return-object v0
.end method

.method public openTab(Lcom/android/browser/IntentHandler$UrlData;)Lcom/android/browser/Tab;
    .registers 5
    .parameter "urlData"

    .prologue
    const/4 v2, 0x1

    .line 2803
    invoke-direct {p0, p1}, Lcom/android/browser/Controller;->showPreloadedTab(Lcom/android/browser/IntentHandler$UrlData;)Lcom/android/browser/Tab;

    move-result-object v0

    .line 2804
    .local v0, tab:Lcom/android/browser/Tab;
    if-nez v0, :cond_17

    .line 2805
    const/4 v1, 0x0

    invoke-direct {p0, v1, v2, v2}, Lcom/android/browser/Controller;->createNewTab(ZZZ)Lcom/android/browser/Tab;

    move-result-object v0

    .line 2806
    if-eqz v0, :cond_17

    invoke-virtual {p1}, Lcom/android/browser/IntentHandler$UrlData;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_17

    .line 2807
    invoke-virtual {p0, v0, p1}, Lcom/android/browser/Controller;->loadUrlDataIn(Lcom/android/browser/Tab;Lcom/android/browser/IntentHandler$UrlData;)V

    .line 2810
    :cond_17
    return-object v0
.end method

.method public openTab(Ljava/lang/String;Lcom/android/browser/Tab;ZZ)Lcom/android/browser/Tab;
    .registers 11
    .parameter "url"
    .parameter "parent"
    .parameter "setActive"
    .parameter "useCurrent"

    .prologue
    .line 2838
    if-eqz p2, :cond_13

    invoke-virtual {p2}, Lcom/android/browser/Tab;->isPrivateBrowsingEnabled()Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v2, 0x1

    :goto_9
    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/browser/Controller;->openTab(Ljava/lang/String;ZZZLcom/android/browser/Tab;)Lcom/android/browser/Tab;

    move-result-object v0

    return-object v0

    :cond_13
    const/4 v2, 0x0

    goto :goto_9
.end method

.method public openTab(Ljava/lang/String;ZZZ)Lcom/android/browser/Tab;
    .registers 11
    .parameter "url"
    .parameter "incognito"
    .parameter "setActive"
    .parameter "useCurrent"

    .prologue
    .line 2832
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/browser/Controller;->openTab(Ljava/lang/String;ZZZLcom/android/browser/Tab;)Lcom/android/browser/Tab;

    move-result-object v0

    return-object v0
.end method

.method public openTab(Ljava/lang/String;ZZZLcom/android/browser/Tab;)Lcom/android/browser/Tab;
    .registers 7
    .parameter "url"
    .parameter "incognito"
    .parameter "setActive"
    .parameter "useCurrent"
    .parameter "parent"

    .prologue
    .line 2844
    invoke-direct {p0, p2, p3, p4}, Lcom/android/browser/Controller;->createNewTab(ZZZ)Lcom/android/browser/Tab;

    move-result-object v0

    .line 2845
    .local v0, tab:Lcom/android/browser/Tab;
    if-eqz v0, :cond_12

    .line 2846
    if-eqz p5, :cond_d

    if-eq p5, v0, :cond_d

    .line 2847
    invoke-virtual {p5, v0}, Lcom/android/browser/Tab;->addChildTab(Lcom/android/browser/Tab;)V

    .line 2849
    :cond_d
    if-eqz p1, :cond_12

    .line 2850
    invoke-virtual {p0, v0, p1}, Lcom/android/browser/Controller;->loadUrl(Lcom/android/browser/Tab;Ljava/lang/String;)V

    .line 2853
    :cond_12
    return-object v0
.end method

.method public openTabAndShow(Landroid/os/Bundle;Z)Lcom/android/browser/Tab;
    .registers 10
    .parameter "state"
    .parameter "incognito"

    .prologue
    const/4 v6, 0x0

    .line 2863
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v1

    .line 2864
    .local v1, currentTab:Lcom/android/browser/Tab;
    iget-object v4, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v4}, Lcom/android/browser/TabControl;->canCreateNewTab()Z

    move-result v4

    if-nez v4, :cond_19

    .line 2865
    iget-object v4, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v4, v6}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v0

    .line 2866
    .local v0, closeTab:Lcom/android/browser/Tab;
    invoke-virtual {p0, v0}, Lcom/android/browser/Controller;->closeTab(Lcom/android/browser/Tab;)V

    .line 2867
    if-ne v0, v1, :cond_19

    .line 2868
    const/4 v1, 0x0

    .line 2871
    .end local v0           #closeTab:Lcom/android/browser/Tab;
    :cond_19
    iget-object v4, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v4, p1, p2}, Lcom/android/browser/TabControl;->createNewTab(Landroid/os/Bundle;Z)Lcom/android/browser/Tab;

    move-result-object v2

    .line 2872
    .local v2, tab:Lcom/android/browser/Tab;
    invoke-virtual {v2}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v3

    .line 2876
    .local v3, webview:Landroid/webkit/WebView;
    iget-object v4, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    const/4 v5, 0x1

    invoke-virtual {v4, v2, v6, v5}, Lcom/android/browser/TabControl;->setCurrentTab(Lcom/android/browser/Tab;ZZ)Z

    .line 2882
    if-eqz v1, :cond_30

    .line 2884
    :try_start_2b
    iget-object v4, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v4, v1}, Lcom/android/browser/UI;->detachTab(Lcom/android/browser/Tab;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_30} :catch_3d

    .line 2889
    :cond_30
    :goto_30
    :try_start_30
    iget-object v4, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v4, v2}, Lcom/android/browser/UI;->attachTab(Lcom/android/browser/Tab;)V

    .line 2890
    iget-object v4, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v4, v2}, Lcom/android/browser/UI;->setActiveTab(Lcom/android/browser/Tab;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_3a} :catch_3b

    .line 2893
    :goto_3a
    return-object v2

    .line 2891
    :catch_3b
    move-exception v4

    goto :goto_3a

    .line 2885
    :catch_3d
    move-exception v4

    goto :goto_30
.end method

.method public openTabAndShowWithURL(Landroid/os/Bundle;ZLjava/lang/String;)Lcom/android/browser/Tab;
    .registers 11
    .parameter "state"
    .parameter "incognito"
    .parameter "url"

    .prologue
    const/4 v6, 0x0

    .line 2897
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v1

    .line 2898
    .local v1, currentTab:Lcom/android/browser/Tab;
    iget-object v4, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v4}, Lcom/android/browser/TabControl;->canCreateNewTab()Z

    move-result v4

    if-nez v4, :cond_19

    .line 2899
    iget-object v4, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v4, v6}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v0

    .line 2900
    .local v0, closeTab:Lcom/android/browser/Tab;
    invoke-virtual {p0, v0}, Lcom/android/browser/Controller;->closeTab(Lcom/android/browser/Tab;)V

    .line 2901
    if-ne v0, v1, :cond_19

    .line 2902
    const/4 v1, 0x0

    .line 2905
    .end local v0           #closeTab:Lcom/android/browser/Tab;
    :cond_19
    iget-object v4, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v4, p1, p2}, Lcom/android/browser/TabControl;->createNewTab(Landroid/os/Bundle;Z)Lcom/android/browser/Tab;

    move-result-object v2

    .line 2906
    .local v2, tab:Lcom/android/browser/Tab;
    invoke-virtual {v2}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v3

    .line 2907
    .local v3, webview:Landroid/webkit/WebView;
    invoke-virtual {p0, v2, p3}, Lcom/android/browser/Controller;->loadUrl(Lcom/android/browser/Tab;Ljava/lang/String;)V

    .line 2910
    iget-object v4, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    const/4 v5, 0x1

    invoke-virtual {v4, v2, v6, v5}, Lcom/android/browser/TabControl;->setCurrentTab(Lcom/android/browser/Tab;ZZ)Z

    .line 2916
    if-eqz v1, :cond_33

    .line 2918
    :try_start_2e
    iget-object v4, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v4, v1}, Lcom/android/browser/UI;->detachTab(Lcom/android/browser/Tab;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_33} :catch_40

    .line 2923
    :cond_33
    :goto_33
    :try_start_33
    iget-object v4, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v4, v2}, Lcom/android/browser/UI;->attachTab(Lcom/android/browser/Tab;)V

    .line 2924
    iget-object v4, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v4, v2}, Lcom/android/browser/UI;->setActiveTab(Lcom/android/browser/Tab;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_3d} :catch_3e

    .line 2927
    :goto_3d
    return-object v2

    .line 2925
    :catch_3e
    move-exception v4

    goto :goto_3d

    .line 2919
    :catch_40
    move-exception v4

    goto :goto_33
.end method

.method public openTabToHomePage()Lcom/android/browser/Tab;
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2816
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Z)Z

    move-result v0

    if-ne v0, v2, :cond_11

    .line 2817
    invoke-static {p0}, Lcom/android/browser/OfflineComboViewActivity;->openTabToHomePage(Lcom/android/browser/Controller;)Lcom/android/browser/Tab;

    move-result-object v0

    .line 2821
    :goto_10
    return-object v0

    :cond_11
    iget-object v0, p0, Lcom/android/browser/Controller;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1, v2, v1}, Lcom/android/browser/Controller;->openTab(Ljava/lang/String;ZZZ)Lcom/android/browser/Tab;

    move-result-object v0

    goto :goto_10
.end method

.method protected pageDown()V
    .registers 3

    .prologue
    .line 1338
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->pageDown(Z)Z

    .line 1339
    return-void
.end method

.method protected pageUp()V
    .registers 3

    .prologue
    .line 1334
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->pageUp(Z)Z

    .line 1335
    return-void
.end method

.method public recognize(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 3451
    const-string v0, "Controller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Harish: Inside recognize - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3452
    iput-boolean v3, p0, Lcom/android/browser/Controller;->isReaderArticle:Z

    .line 3453
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0, p1}, Lcom/android/browser/TabControl;->getTabFromView(Landroid/webkit/WebView;)Lcom/android/browser/Tab;

    move-result-object v0

    .line 3455
    if-eqz p2, :cond_35

    .line 3457
    const-string v1, "true"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_60

    .line 3459
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/browser/Controller;->isReaderArticle:Z

    .line 3460
    invoke-virtual {p0}, Lcom/android/browser/Controller;->accessReaderFromAssets()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->applyreadability(Ljava/lang/String;)V

    .line 3465
    :cond_35
    :goto_35
    iget-boolean v1, p0, Lcom/android/browser/Controller;->isReaderArticle:Z

    invoke-virtual {v0, v1}, Lcom/android/browser/Tab;->setReaderValue(Z)V

    .line 3466
    const-string v1, "Controller"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reader: isReaderArticle - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/browser/Controller;->isReaderArticle:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3467
    invoke-virtual {v0}, Lcom/android/browser/Tab;->inPageLoad()Z

    move-result v0

    if-nez v0, :cond_5f

    .line 3469
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0}, Lcom/android/browser/UI;->updateReaderIcon()V

    .line 3472
    :cond_5f
    return-void

    .line 3463
    :cond_60
    iput-boolean v3, p0, Lcom/android/browser/Controller;->isReaderArticle:Z

    goto :goto_35
.end method

.method public registerDropdownChangeListener(Lcom/android/browser/UI$DropdownChangeListener;)V
    .registers 3
    .parameter "d"

    .prologue
    .line 3373
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1}, Lcom/android/browser/UI;->registerDropdownChangeListener(Lcom/android/browser/UI$DropdownChangeListener;)V

    .line 3374
    return-void
.end method

.method public removeSubWindow(Lcom/android/browser/Tab;)V
    .registers 4
    .parameter "t"

    .prologue
    .line 2747
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getSubWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 2748
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-virtual {p1}, Lcom/android/browser/Tab;->getSubViewContainer()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/browser/UI;->removeSubWindow(Landroid/view/View;)V

    .line 2750
    :cond_f
    return-void
.end method

.method protected removeTab(Lcom/android/browser/Tab;)V
    .registers 3
    .parameter "tab"

    .prologue
    .line 2677
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1}, Lcom/android/browser/UI;->removeTab(Lcom/android/browser/Tab;)V

    .line 2678
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0, p1}, Lcom/android/browser/TabControl;->removeTab(Lcom/android/browser/Tab;)Z

    .line 2679
    iget-object v0, p0, Lcom/android/browser/Controller;->mCrashRecoveryHandler:Lcom/android/browser/CrashRecoveryHandler;

    invoke-virtual {v0}, Lcom/android/browser/CrashRecoveryHandler;->backupState()V

    .line 2680
    return-void
.end method

.method protected reuseTab(Lcom/android/browser/Tab;Lcom/android/browser/IntentHandler$UrlData;)V
    .registers 4
    .parameter "appTab"
    .parameter "urlData"

    .prologue
    .line 2717
    invoke-virtual {p0, p1}, Lcom/android/browser/Controller;->dismissSubWindow(Lcom/android/browser/Tab;)V

    .line 2720
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1}, Lcom/android/browser/UI;->detachTab(Lcom/android/browser/Tab;)V

    .line 2722
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0, p1}, Lcom/android/browser/TabControl;->recreateWebView(Lcom/android/browser/Tab;)V

    .line 2724
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1}, Lcom/android/browser/UI;->attachTab(Lcom/android/browser/Tab;)V

    .line 2725
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    if-eq v0, p1, :cond_21

    .line 2726
    invoke-virtual {p0, p1}, Lcom/android/browser/Controller;->switchToTab(Lcom/android/browser/Tab;)Z

    .line 2727
    invoke-virtual {p0, p1, p2}, Lcom/android/browser/Controller;->loadUrlDataIn(Lcom/android/browser/Tab;Lcom/android/browser/IntentHandler$UrlData;)V

    .line 2734
    :goto_20
    return-void

    .line 2731
    :cond_21
    invoke-virtual {p0, p1}, Lcom/android/browser/Controller;->setActiveTab(Lcom/android/browser/Tab;)V

    .line 2732
    invoke-virtual {p0, p1, p2}, Lcom/android/browser/Controller;->loadUrlDataIn(Lcom/android/browser/Tab;Lcom/android/browser/IntentHandler$UrlData;)V

    goto :goto_20
.end method

.method public revertVoiceSearchMode(Lcom/android/browser/Tab;)V
    .registers 3
    .parameter "tab"

    .prologue
    .line 1369
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1}, Lcom/android/browser/UI;->revertVoiceTitleBar(Lcom/android/browser/Tab;)V

    .line 1370
    return-void
.end method

.method public setActiveTab(Lcom/android/browser/Tab;)V
    .registers 4
    .parameter "tab"

    .prologue
    .line 2685
    if-eqz p1, :cond_37

    .line 2686
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0, p1}, Lcom/android/browser/TabControl;->setCurrentTab(Lcom/android/browser/Tab;)Z

    .line 2688
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1}, Lcom/android/browser/UI;->setActiveTab(Lcom/android/browser/Tab;)V

    .line 2690
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/browser/UI;->setReaderNavBar(Z)V

    .line 2691
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0}, Lcom/android/browser/UI;->updateReaderIcon()V

    .line 2695
    sget-boolean v0, Lcom/android/browser/Controller;->ENABLE_PINCH_ZOOM_LISTENER:Z

    if-eqz v0, :cond_37

    .line 2696
    iget-object v0, p0, Lcom/android/browser/Controller;->mSecNavScreenGestureDetector:Lcom/android/browser/SecNavScreenGestureDetector;

    if-eqz v0, :cond_37

    .line 2697
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 2698
    iget-object v1, p0, Lcom/android/browser/Controller;->mSecNavScreenGestureDetector:Lcom/android/browser/SecNavScreenGestureDetector;

    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    check-cast v0, Lcom/android/browser/PhoneUi;

    invoke-virtual {v1, v0}, Lcom/android/browser/SecNavScreenGestureDetector;->setUi(Lcom/android/browser/PhoneUi;)V

    .line 2699
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/Controller;->mSecNavScreenGestureDetector:Lcom/android/browser/SecNavScreenGestureDetector;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setPinchZoomListener(Landroid/webkit/PinchZoomListener;)V

    .line 2705
    :cond_37
    return-void
.end method

.method public setBlockEvents(Z)V
    .registers 2
    .parameter "block"

    .prologue
    .line 3395
    iput-boolean p1, p0, Lcom/android/browser/Controller;->mBlockEvents:Z

    .line 3396
    return-void
.end method

.method protected setShouldShowErrorConsole(Z)V
    .registers 4
    .parameter "show"

    .prologue
    .line 980
    iget-boolean v1, p0, Lcom/android/browser/Controller;->mShouldShowErrorConsole:Z

    if-ne p1, v1, :cond_5

    .line 991
    :cond_4
    :goto_4
    return-void

    .line 984
    :cond_5
    iput-boolean p1, p0, Lcom/android/browser/Controller;->mShouldShowErrorConsole:Z

    .line 985
    iget-object v1, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 986
    .local v0, t:Lcom/android/browser/Tab;
    if-eqz v0, :cond_4

    .line 990
    iget-object v1, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v1, v0, p1}, Lcom/android/browser/UI;->setShouldShowErrorConsole(Lcom/android/browser/Tab;Z)V

    goto :goto_4
.end method

.method setUi(Lcom/android/browser/UI;)V
    .registers 2
    .parameter "ui"

    .prologue
    .line 546
    iput-object p1, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    .line 547
    return-void
.end method

.method public setupAutoFill(Landroid/os/Message;)V
    .registers 5
    .parameter

    .prologue
    .line 3364
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/android/browser/BrowserPreferencesPage;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3365
    const-string v1, ":android:show_fragment"

    const-class v2, Lcom/android/browser/AutoFillSettingsFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3367
    iput-object p1, p0, Lcom/android/browser/Controller;->mAutoFillSetupMessage:Landroid/os/Message;

    .line 3368
    iget-object v1, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x5

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 3369
    return-void
.end method

.method public shareCurrentPage()V
    .registers 2

    .prologue
    .line 675
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/browser/Controller;->shareCurrentPage(Lcom/android/browser/Tab;)V

    .line 676
    return-void
.end method

.method public shouldCaptureThumbnails()Z
    .registers 2

    .prologue
    .line 3383
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0}, Lcom/android/browser/UI;->shouldCaptureThumbnails()Z

    move-result v0

    return v0
.end method

.method public shouldOverrideKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4
    .parameter "event"

    .prologue
    .line 1172
    iget-boolean v0, p0, Lcom/android/browser/Controller;->mMenuIsDown:Z

    if-eqz v0, :cond_13

    .line 1174
    iget-object v0, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/view/Window;->isShortcutKey(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 1177
    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public shouldOverrideUrlLoading(Lcom/android/browser/Tab;Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 5
    .parameter "tab"
    .parameter "view"
    .parameter "url"

    .prologue
    .line 1167
    iget-object v0, p0, Lcom/android/browser/Controller;->mUrlHandler:Lcom/android/browser/UrlHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/browser/UrlHandler;->shouldOverrideUrlLoading(Lcom/android/browser/Tab;Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public shouldShowErrorConsole()Z
    .registers 2

    .prologue
    .line 976
    iget-boolean v0, p0, Lcom/android/browser/Controller;->mShouldShowErrorConsole:Z

    return v0
.end method

.method public showAutoLogin(Lcom/android/browser/Tab;)V
    .registers 3
    .parameter "tab"

    .prologue
    .line 1297
    sget-boolean v0, Lcom/android/browser/Controller;->$assertionsDisabled:Z

    if-nez v0, :cond_10

    invoke-virtual {p1}, Lcom/android/browser/Tab;->inForeground()Z

    move-result v0

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1299
    :cond_10
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1}, Lcom/android/browser/UI;->showAutoLogin(Lcom/android/browser/Tab;)V

    .line 1300
    return-void
.end method

.method public showCustomView(Lcom/android/browser/Tab;Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V
    .registers 6
    .parameter "tab"
    .parameter "view"
    .parameter "requestedOrientation"
    .parameter "callback"

    .prologue
    .line 1379
    invoke-virtual {p1}, Lcom/android/browser/Tab;->inForeground()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1380
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0}, Lcom/android/browser/UI;->isCustomViewShowing()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1381
    invoke-interface {p4}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 1391
    :cond_11
    :goto_11
    return-void

    .line 1384
    :cond_12
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p2, p3, p4}, Lcom/android/browser/UI;->showCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V

    .line 1387
    iget v0, p0, Lcom/android/browser/Controller;->mMenuState:I

    iput v0, p0, Lcom/android/browser/Controller;->mOldMenuState:I

    .line 1388
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/browser/Controller;->mMenuState:I

    .line 1389
    iget-object v0, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_11
.end method

.method public showSslCertificateOnError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 5
    .parameter "view"
    .parameter "handler"
    .parameter "error"

    .prologue
    .line 1292
    iget-object v0, p0, Lcom/android/browser/Controller;->mPageDialogsHandler:Lcom/android/browser/PageDialogsHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/browser/PageDialogsHandler;->showSSLCertificateOnError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 1293
    return-void
.end method

.method start(Landroid/os/Bundle;Landroid/content/Intent;)V
    .registers 6
    .parameter "icicle"
    .parameter "intent"

    .prologue
    .line 341
    const-string v1, "no-crash-recovery"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 342
    .local v0, noCrashRecovery:Z
    if-nez p1, :cond_b

    if-eqz v0, :cond_f

    .line 343
    :cond_b
    invoke-virtual {p0, p1, p2}, Lcom/android/browser/Controller;->doStart(Landroid/os/Bundle;Landroid/content/Intent;)V

    .line 347
    :goto_e
    return-void

    .line 345
    :cond_f
    iget-object v1, p0, Lcom/android/browser/Controller;->mCrashRecoveryHandler:Lcom/android/browser/CrashRecoveryHandler;

    invoke-virtual {v1, p2}, Lcom/android/browser/CrashRecoveryHandler;->startRecovery(Landroid/content/Intent;)V

    goto :goto_e
.end method

.method public startVoiceSearch()V
    .registers 4

    .prologue
    .line 1349
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.WEB_SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1350
    const-string v1, "android.speech.extra.LANGUAGE_MODEL"

    const-string v2, "web_search"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1352
    const-string v1, "calling_package"

    iget-object v2, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1354
    const-string v1, "android.speech.extras.SEND_APPLICATION_ID_EXTRA"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1355
    const-string v1, "android.speech.extra.WEB_SEARCH_ONLY"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1356
    iget-object v1, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_2e
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_2e} :catch_2f

    .line 1360
    :goto_2e
    return-void

    .line 1357
    :catch_2f
    move-exception v0

    goto :goto_2e
.end method

.method public stopLoading()V
    .registers 4

    .prologue
    .line 995
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/browser/Controller;->mLoadStopped:Z

    .line 996
    iget-object v2, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 997
    .local v0, tab:Lcom/android/browser/Tab;
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v1

    .line 998
    .local v1, w:Landroid/webkit/WebView;
    invoke-virtual {v1}, Landroid/webkit/WebView;->stopLoading()V

    .line 999
    iget-object v2, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v2, v0}, Lcom/android/browser/UI;->onPageStopped(Lcom/android/browser/Tab;)V

    .line 1000
    return-void
.end method

.method public supportsVoiceSearch()Z
    .registers 3

    .prologue
    .line 1373
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getSettings()Lcom/android/browser/BrowserSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/BrowserSettings;->getSearchEngine()Lcom/android/browser/search/SearchEngine;

    move-result-object v0

    .line 1374
    .local v0, searchEngine:Lcom/android/browser/search/SearchEngine;
    if-eqz v0, :cond_12

    invoke-interface {v0}, Lcom/android/browser/search/SearchEngine;->supportsVoiceSearch()Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    :goto_11
    return v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method

.method public switchToTab(Lcom/android/browser/Tab;)Z
    .registers 4
    .parameter "tab"

    .prologue
    .line 2977
    iget-object v1, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 2978
    .local v0, currentTab:Lcom/android/browser/Tab;
    if-eqz p1, :cond_a

    if-ne p1, v0, :cond_c

    .line 2979
    :cond_a
    const/4 v1, 0x0

    .line 2982
    :goto_b
    return v1

    .line 2981
    :cond_c
    invoke-virtual {p0, p1}, Lcom/android/browser/Controller;->setActiveTab(Lcom/android/browser/Tab;)V

    .line 2982
    const/4 v1, 0x1

    goto :goto_b
.end method

.method public updateMenuState(Lcom/android/browser/Tab;Landroid/view/Menu;)V
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1817
    .line 1822
    if-eqz p1, :cond_10e

    .line 1823
    invoke-virtual {p1}, Lcom/android/browser/Tab;->canGoBack()Z

    move-result v6

    .line 1824
    invoke-virtual {p1}, Lcom/android/browser/Tab;->canGoForward()Z

    move-result v5

    .line 1825
    iget-object v0, p0, Lcom/android/browser/Controller;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1826
    iget-object v0, p0, Lcom/android/browser/Controller;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/browser/BrowserSettings;->hasDesktopUseragent(Landroid/webkit/WebView;)Z

    move-result v3

    .line 1827
    invoke-virtual {p1}, Lcom/android/browser/Tab;->isSnapshot()Z

    move-result v0

    if-nez v0, :cond_ff

    move v0, v1

    .line 1829
    :goto_2b
    const v7, 0x7f0d0131

    invoke-interface {p2, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    .line 1830
    invoke-interface {v7, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1832
    const v6, 0x7f0d0125

    invoke-interface {p2, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 1833
    if-nez v4, :cond_102

    move v4, v1

    :goto_3f
    invoke-interface {v6, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1835
    const v4, 0x7f0d0113

    invoke-interface {p2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 1836
    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1839
    const v4, 0x7f0d0114

    invoke-interface {p2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget-object v5, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v5}, Lcom/android/browser/TabControl;->canCreateNewTab()Z

    move-result v5

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1840
    const v4, 0x7f0d0115

    invoke-interface {p2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget-object v5, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v5}, Lcom/android/browser/TabControl;->canCreateNewTab()Z

    move-result v5

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1843
    iget-boolean v4, p0, Lcom/android/browser/Controller;->mInLoad:Z

    if-eqz v4, :cond_105

    const v4, 0x7f0d0134

    :goto_73
    invoke-interface {p2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 1844
    const v5, 0x7f0d0112

    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 1845
    if-eqz v4, :cond_90

    if-eqz v5, :cond_90

    .line 1846
    invoke-interface {v4}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1847
    invoke-interface {v4}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 1849
    :cond_90
    const v4, 0x7f0d0111

    invoke-interface {p2, v4, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1852
    iget-object v4, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 1853
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.SEND"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1854
    const-string v6, "text/plain"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1855
    const/high16 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 1857
    const v5, 0x7f0d0117

    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    if-eqz v4, :cond_10a

    move v4, v1

    :goto_b8
    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1859
    iget-object v4, p0, Lcom/android/browser/Controller;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v4}, Lcom/android/browser/BrowserSettings;->enableNavDump()Z

    move-result v4

    .line 1860
    const v5, 0x7f0d0122

    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 1861
    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1862
    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1864
    iget-object v4, p0, Lcom/android/browser/Controller;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v4}, Lcom/android/browser/BrowserSettings;->isDebugEnabled()Z

    move-result v4

    .line 1865
    const v5, 0x7f0d0123

    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 1866
    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1867
    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1868
    const v4, 0x7f0d0119

    invoke-interface {p2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 1869
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 1870
    const v3, 0x7f0d0116

    invoke-interface {p2, v3, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1871
    const v3, 0x7f0d011b

    if-nez v0, :cond_10c

    :goto_f6
    invoke-interface {p2, v3, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1873
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1, p2}, Lcom/android/browser/UI;->updateMenuState(Lcom/android/browser/Tab;Landroid/view/Menu;)V

    .line 1874
    return-void

    :cond_ff
    move v0, v2

    .line 1827
    goto/16 :goto_2b

    :cond_102
    move v4, v2

    .line 1833
    goto/16 :goto_3f

    .line 1843
    :cond_105
    const v4, 0x7f0d0135

    goto/16 :goto_73

    :cond_10a
    move v4, v2

    .line 1857
    goto :goto_b8

    :cond_10c
    move v1, v2

    .line 1871
    goto :goto_f6

    :cond_10e
    move v0, v2

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    goto/16 :goto_2b
.end method

.method viewDownloads()V
    .registers 3

    .prologue
    .line 2224
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW_SEC_DOWNLOADS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2226
    iget-object v1, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 2227
    return-void
.end method
