.class public Lcom/android/browser/BrowserSettings;
.super Ljava/lang/Object;
.source "BrowserSettings.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/BrowserSettings$2;
    }
.end annotation


# static fields
.field private static final USER_AGENTS:[Ljava/lang/String;

.field private static mEnablePinchZoomListner:Z

.field private static mEnablePowserControl:Z

.field public static mdefaultPreferHomeUrl:Ljava/lang/String;

.field private static sFactoryResetUrl:Ljava/lang/String;

.field private static sInitialized:Z

.field private static sInstance:Lcom/android/browser/BrowserSettings;


# instance fields
.field private final MOST_VISITED_URL:Ljava/lang/String;

.field private bDownloadInternalMemory:Z

.field public cscHome:Ljava/lang/String;

.field private mAppCachePath:Ljava/lang/String;

.field private mAutoBrightness:Z

.field private mAutofillHandler:Lcom/android/browser/AutofillHandler;

.field private mBrightness:I

.field private mContext:Landroid/content/Context;

.field private mController:Lcom/android/browser/Controller;

.field private mCustomUserAgents:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/webkit/WebSettings;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFontSizeMult:F

.field private mManagedSettings:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/webkit/WebSettings;",
            ">;>;"
        }
    .end annotation
.end field

.field private mNeedsSharedSync:Z

.field private mPageCacheCapacity:I

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mSearchEngine:Lcom/android/browser/search/SearchEngine;

.field private mSetup:Ljava/lang/Runnable;

.field private mWebStorageSizeManager:Lcom/android/browser/WebStorageSizeManager;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 101
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v1, v0, v4

    const-string v1, "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.34 Safari/534.24"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_0 like Mac OS X; en-us) AppleWebKit/532.9 (KHTML, like Gecko) Version/4.0.5 Mobile/8A293 Safari/6531.22.7"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Mozilla/5.0 (iPad; U; CPU OS 3_2 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Version/4.0.4 Mobile/7B367 Safari/531.21.10"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Mozilla/5.0 (Linux; U; Android 2.2; en-us; Nexus One Build/FRF91) AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 Mobile Safari/533.1"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Mozilla/5.0 (Linux; U; Android 3.1; en-us; Xoom Build/HMJ25) AppleWebKit/534.13 (KHTML, like Gecko) Version/4.0 Safari/534.13"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/browser/BrowserSettings;->USER_AGENTS:[Ljava/lang/String;

    .line 138
    sput-boolean v4, Lcom/android/browser/BrowserSettings;->sInitialized:Z

    .line 153
    sput-boolean v3, Lcom/android/browser/BrowserSettings;->mEnablePinchZoomListner:Z

    .line 155
    sput-boolean v3, Lcom/android/browser/BrowserSettings;->mEnablePowserControl:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 185
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput-boolean v1, p0, Lcom/android/browser/BrowserSettings;->mNeedsSharedSync:Z

    .line 140
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/browser/BrowserSettings;->mFontSizeMult:F

    .line 143
    iput v1, p0, Lcom/android/browser/BrowserSettings;->mPageCacheCapacity:I

    .line 156
    const/16 v0, 0x22

    iput v0, p0, Lcom/android/browser/BrowserSettings;->mBrightness:I

    .line 157
    iput-boolean v1, p0, Lcom/android/browser/BrowserSettings;->mAutoBrightness:Z

    .line 159
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/BrowserSettings;->bDownloadInternalMemory:Z

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/BrowserSettings;->cscHome:Ljava/lang/String;

    .line 174
    const-string v0, "content://com.android.browser.home/"

    iput-object v0, p0, Lcom/android/browser/BrowserSettings;->MOST_VISITED_URL:Ljava/lang/String;

    .line 228
    new-instance v0, Lcom/android/browser/BrowserSettings$1;

    invoke-direct {v0, p0}, Lcom/android/browser/BrowserSettings$1;-><init>(Lcom/android/browser/BrowserSettings;)V

    iput-object v0, p0, Lcom/android/browser/BrowserSettings;->mSetup:Ljava/lang/Runnable;

    .line 186
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/BrowserSettings;->mContext:Landroid/content/Context;

    .line 187
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    .line 188
    new-instance v0, Lcom/android/browser/AutofillHandler;

    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/browser/AutofillHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/browser/BrowserSettings;->mAutofillHandler:Lcom/android/browser/AutofillHandler;

    .line 189
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/browser/BrowserSettings;->mManagedSettings:Ljava/util/LinkedList;

    .line 190
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/browser/BrowserSettings;->mCustomUserAgents:Ljava/util/WeakHashMap;

    .line 191
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mAutofillHandler:Lcom/android/browser/AutofillHandler;

    invoke-virtual {v0}, Lcom/android/browser/AutofillHandler;->asyncLoadFromDb()V

    .line 192
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mSetup:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/android/browser/BackgroundHandler;->execute(Ljava/lang/Runnable;)V

    .line 193
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/BrowserSettings;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/browser/BrowserSettings;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput p1, p0, Lcom/android/browser/BrowserSettings;->mFontSizeMult:F

    return p1
.end method

.method static synthetic access$202(Lcom/android/browser/BrowserSettings;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput p1, p0, Lcom/android/browser/BrowserSettings;->mPageCacheCapacity:I

    return p1
.end method

.method static synthetic access$302(Lcom/android/browser/BrowserSettings;Lcom/android/browser/WebStorageSizeManager;)Lcom/android/browser/WebStorageSizeManager;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/browser/BrowserSettings;->mWebStorageSizeManager:Lcom/android/browser/WebStorageSizeManager;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/browser/BrowserSettings;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/browser/BrowserSettings;->getAppCachePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/browser/BrowserSettings;)Landroid/content/SharedPreferences;
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/browser/BrowserSettings;)Landroid/webkit/WebSettings$TextSize;
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/browser/BrowserSettings;->getTextSize()Landroid/webkit/WebSettings$TextSize;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .registers 1

    .prologue
    .line 77
    sget-object v0, Lcom/android/browser/BrowserSettings;->sFactoryResetUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Ljava/lang/String;)Ljava/lang/String;
    .registers 1
    .parameter "x0"

    .prologue
    .line 77
    sput-object p0, Lcom/android/browser/BrowserSettings;->sFactoryResetUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$802(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 77
    sput-boolean p0, Lcom/android/browser/BrowserSettings;->sInitialized:Z

    return p0
.end method

.method private enableBypassQueueTouch()Z
    .registers 4

    .prologue
    .line 1059
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "enable_bypass_queue_touch"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private enableMoveFilter()Z
    .registers 4

    .prologue
    .line 1063
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "enable_move_filter"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private enablePinchZoomListner()V
    .registers 4

    .prologue
    .line 1027
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "enable_pinch_zoom_listner"

    sget-boolean v2, Lcom/android/browser/BrowserSettings;->mEnablePinchZoomListner:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/browser/BrowserSettings;->mEnablePinchZoomListner:Z

    .line 1028
    return-void
.end method

.method private enablePowerControl()V
    .registers 4

    .prologue
    .line 1039
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "enable_power_ctrl"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/browser/BrowserSettings;->mEnablePowserControl:Z

    .line 1040
    return-void
.end method

.method private enableWebTouchDebug()Z
    .registers 4

    .prologue
    .line 1053
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "enable_web_touch_debug"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getAdjustedMinimumFontSize(I)I
    .registers 2
    .parameter "rawValue"

    .prologue
    .line 681
    add-int/lit8 p0, p0, 0x1

    .line 682
    const/4 v0, 0x1

    if-le p0, v0, :cond_7

    .line 683
    add-int/lit8 p0, p0, 0x3

    .line 685
    :cond_7
    return p0
.end method

.method private getAppCachePath()Ljava/lang/String;
    .registers 4

    .prologue
    .line 528
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mAppCachePath:Ljava/lang/String;

    if-nez v0, :cond_13

    .line 529
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mContext:Landroid/content/Context;

    const-string v1, "appcache"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/BrowserSettings;->mAppCachePath:Ljava/lang/String;

    .line 531
    :cond_13
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mAppCachePath:Ljava/lang/String;

    return-object v0
.end method

.method public static getFactoryResetHomeUrl(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .parameter "context"

    .prologue
    .line 485
    invoke-static {}, Lcom/android/browser/BrowserSettings;->requireInitialization()V

    .line 487
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "VODA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TMO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 490
    :cond_27
    sget-object v0, Lcom/android/browser/BrowserSettings;->mdefaultPreferHomeUrl:Ljava/lang/String;

    if-eqz v0, :cond_2f

    .line 491
    sget-object v0, Lcom/android/browser/BrowserSettings;->mdefaultPreferHomeUrl:Ljava/lang/String;

    sput-object v0, Lcom/android/browser/BrowserSettings;->sFactoryResetUrl:Ljava/lang/String;

    .line 495
    :cond_2f
    sget-object v0, Lcom/android/browser/BrowserSettings;->sFactoryResetUrl:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/android/browser/BrowserSettings;
    .registers 1

    .prologue
    .line 182
    sget-object v0, Lcom/android/browser/BrowserSettings;->sInstance:Lcom/android/browser/BrowserSettings;

    return-object v0
.end method

.method public static getPinchZoomListner()Z
    .registers 1

    .prologue
    .line 1031
    sget-boolean v0, Lcom/android/browser/BrowserSettings;->mEnablePinchZoomListner:Z

    if-eqz v0, :cond_6

    .line 1032
    const/4 v0, 0x1

    .line 1034
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static getPowerControl()Z
    .registers 1

    .prologue
    .line 1043
    sget-boolean v0, Lcom/android/browser/BrowserSettings;->mEnablePowserControl:Z

    if-eqz v0, :cond_6

    .line 1044
    const/4 v0, 0x1

    .line 1046
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static getPreloadAlwaysPreferenceString(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 1179
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00fd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPreloadOnWifiOnlyPreferenceString(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 1175
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00fc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getRawTextZoom(I)I
    .registers 2
    .parameter "percent"

    .prologue
    .line 694
    add-int/lit8 v0, p0, -0x64

    div-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0xa

    return v0
.end method

.method private getTextSize()Landroid/webkit/WebSettings$TextSize;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 716
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "text_size"

    const-string v3, "NORMAL"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 717
    .local v0, textSize:Ljava/lang/String;
    invoke-static {v0}, Landroid/webkit/WebSettings$TextSize;->valueOf(Ljava/lang/String;)Landroid/webkit/WebSettings$TextSize;

    move-result-object v1

    return-object v1
.end method

.method public static initialize(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 178
    new-instance v0, Lcom/android/browser/BrowserSettings;

    invoke-direct {v0, p0}, Lcom/android/browser/BrowserSettings;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/browser/BrowserSettings;->sInstance:Lcom/android/browser/BrowserSettings;

    .line 179
    return-void
.end method

.method private static requireInitialization()V
    .registers 2

    .prologue
    .line 310
    const-class v1, Lcom/android/browser/BrowserSettings;

    monitor-enter v1

    .line 311
    :goto_3
    :try_start_3
    sget-boolean v0, Lcom/android/browser/BrowserSettings;->sInitialized:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_11

    if-nez v0, :cond_f

    .line 313
    :try_start_7
    const-class v0, Lcom/android/browser/BrowserSettings;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_11
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_c} :catch_d

    goto :goto_3

    .line 314
    :catch_d
    move-exception v0

    goto :goto_3

    .line 317
    :cond_f
    :try_start_f
    monitor-exit v1

    .line 318
    return-void

    .line 317
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_11

    throw v0
.end method

.method private syncManagedSettings()V
    .registers 6

    .prologue
    .line 448
    invoke-direct {p0}, Lcom/android/browser/BrowserSettings;->syncSharedSettings()V

    .line 449
    iget-object v4, p0, Lcom/android/browser/BrowserSettings;->mManagedSettings:Ljava/util/LinkedList;

    monitor-enter v4

    .line 450
    :try_start_6
    iget-object v3, p0, Lcom/android/browser/BrowserSettings;->mManagedSettings:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 451
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Landroid/webkit/WebSettings;>;>;"
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 452
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 453
    .local v1, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/webkit/WebSettings;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebSettings;

    .line 454
    .local v2, settings:Landroid/webkit/WebSettings;
    if-nez v2, :cond_27

    .line 455
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_c

    .line 460
    .end local v0           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Landroid/webkit/WebSettings;>;>;"
    .end local v1           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/webkit/WebSettings;>;"
    .end local v2           #settings:Landroid/webkit/WebSettings;
    :catchall_24
    move-exception v3

    monitor-exit v4
    :try_end_26
    .catchall {:try_start_6 .. :try_end_26} :catchall_24

    throw v3

    .line 458
    .restart local v0       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Landroid/webkit/WebSettings;>;>;"
    .restart local v1       #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/webkit/WebSettings;>;"
    .restart local v2       #settings:Landroid/webkit/WebSettings;
    :cond_27
    :try_start_27
    invoke-direct {p0, v2}, Lcom/android/browser/BrowserSettings;->syncSetting(Landroid/webkit/WebSettings;)V

    goto :goto_c

    .line 460
    .end local v1           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/webkit/WebSettings;>;"
    .end local v2           #settings:Landroid/webkit/WebSettings;
    :cond_2b
    monitor-exit v4
    :try_end_2c
    .catchall {:try_start_27 .. :try_end_2c} :catchall_24

    .line 461
    return-void
.end method

.method private syncSetting(Landroid/webkit/WebSettings;)V
    .registers 7
    .parameter "settings"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 324
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->enableGeolocation()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 325
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->enableJavascript()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 327
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->enableWebGL()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setWebGLEnabled(Z)V

    .line 329
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->enableLightTouch()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setLightTouchEnabled(Z)V

    .line 330
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->enableNavDump()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setNavDump(Z)V

    .line 331
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->isSkiaHardwareAccelerated()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setHardwareAccelSkiaEnabled(Z)V

    .line 332
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->enableVisualIndicator()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setShowVisualIndicator(Z)V

    .line 333
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->getDefaultTextEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 334
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->getDefaultZoom()Landroid/webkit/WebSettings$ZoomDensity;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    .line 335
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->getMinimumFontSize()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    .line 336
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->getMinimumFontSize()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    .line 337
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->forceEnableUserScalable()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setForceUserScalable(Z)V

    .line 338
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->getPluginState()Landroid/webkit/WebSettings$PluginState;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 339
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->getTextZoom()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    .line 340
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->getDoubleTapZoom()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setDoubleTapZoom(I)V

    .line 341
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->isAutofillEnabled()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setAutoFillEnabled(Z)V

    .line 342
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->getLayoutAlgorithm()Landroid/webkit/WebSettings$LayoutAlgorithm;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 343
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->blockPopupWindows()Z

    move-result v2

    if-nez v2, :cond_10e

    move v2, v3

    :goto_80
    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 344
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->loadImages()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 345
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->loadPageInOverviewMode()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 346
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->rememberPasswords()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 347
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->saveFormdata()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 348
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->isWideViewport()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 349
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->getAutoFillProfile()Landroid/webkit/WebSettings$AutoFillProfile;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setAutoFillProfile(Landroid/webkit/WebSettings$AutoFillProfile;)V

    .line 351
    iget-object v2, p0, Lcom/android/browser/BrowserSettings;->mCustomUserAgents:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 352
    .local v1, ua:Ljava/lang/String;
    if-eqz v1, :cond_111

    .line 353
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 368
    :goto_ba
    const-string v4, "inverted"

    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->useInvertedRendering()Z

    move-result v2

    if-eqz v2, :cond_147

    const-string v2, "true"

    :goto_c4
    invoke-virtual {p1, v4, v2}, Landroid/webkit/WebSettings;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    const-string v2, "inverted_contrast"

    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->getInvertedContrast()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2, v4}, Landroid/webkit/WebSettings;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    const-string v4, "enable_cpu_upload_path"

    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->enableCpuUploadPath()Z

    move-result v2

    if-eqz v2, :cond_14b

    const-string v2, "true"

    :goto_de
    invoke-virtual {p1, v4, v2}, Landroid/webkit/WebSettings;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    invoke-direct {p0}, Lcom/android/browser/BrowserSettings;->enablePinchZoomListner()V

    .line 378
    invoke-direct {p0}, Lcom/android/browser/BrowserSettings;->enablePowerControl()V

    .line 380
    invoke-virtual {p1, v3}, Landroid/webkit/WebSettings;->setLoadByBrowser(Z)V

    .line 381
    invoke-direct {p0}, Lcom/android/browser/BrowserSettings;->enableWebTouchDebug()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setEnablePerformanceTest(Z)V

    .line 384
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->getMotionFilter()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setMotionFilter(I)V

    .line 387
    invoke-direct {p0}, Lcom/android/browser/BrowserSettings;->enableWebTouchDebug()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setTouchDebug(Z)V

    .line 388
    invoke-direct {p0}, Lcom/android/browser/BrowserSettings;->enableBypassQueueTouch()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setBypassQueueTouch(Z)V

    .line 389
    invoke-direct {p0}, Lcom/android/browser/BrowserSettings;->enableMoveFilter()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setMoveFilter(Z)V

    .line 391
    return-void

    .end local v1           #ua:Ljava/lang/String;
    :cond_10e
    move v2, v4

    .line 343
    goto/16 :goto_80

    .line 355
    .restart local v1       #ua:Ljava/lang/String;
    :cond_111
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Z)Z

    move-result v2

    if-ne v2, v3, :cond_13a

    .line 356
    sget-object v2, Lcom/android/browser/BrowserSettings;->USER_AGENTS:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->getUserAgent()I

    move-result v4

    aget-object v2, v2, v4

    if-nez v2, :cond_12e

    .line 357
    new-instance v0, Lcom/android/browser/BrowserHandleUserAgent;

    invoke-direct {v0}, Lcom/android/browser/BrowserHandleUserAgent;-><init>()V

    .line 359
    .local v0, BrUA:Lcom/android/browser/BrowserHandleUserAgent;
    invoke-virtual {v0, p1}, Lcom/android/browser/BrowserHandleUserAgent;->handleUserAgent(Landroid/webkit/WebSettings;)V

    goto :goto_ba

    .line 362
    .end local v0           #BrUA:Lcom/android/browser/BrowserHandleUserAgent;
    :cond_12e
    sget-object v2, Lcom/android/browser/BrowserSettings;->USER_AGENTS:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->getUserAgent()I

    move-result v4

    aget-object v2, v2, v4

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    goto :goto_ba

    .line 365
    :cond_13a
    sget-object v2, Lcom/android/browser/BrowserSettings;->USER_AGENTS:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->getUserAgent()I

    move-result v4

    aget-object v2, v2, v4

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    goto/16 :goto_ba

    .line 368
    :cond_147
    const-string v2, "false"

    goto/16 :goto_c4

    .line 374
    :cond_14b
    const-string v2, "false"

    goto :goto_de
.end method

.method private syncSharedSettings()V
    .registers 3

    .prologue
    .line 440
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/BrowserSettings;->mNeedsSharedSync:Z

    .line 441
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->acceptCookies()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 442
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mController:Lcom/android/browser/Controller;

    if-eqz v0, :cond_1b

    .line 443
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mController:Lcom/android/browser/Controller;

    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->enableJavascriptConsole()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/browser/Controller;->setShouldShowErrorConsole(Z)V

    .line 445
    :cond_1b
    return-void
.end method

.method private syncStaticSettings(Landroid/webkit/WebSettings;)V
    .registers 5
    .parameter "settings"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 398
    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    .line 399
    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDefaultFixedFontSize(I)V

    .line 400
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->getPageCacheCapacity()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setPageCacheCapacity(I)V

    .line 403
    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setNeedInitialFocus(Z)V

    .line 405
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 408
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setEnableSmoothTransition(Z)V

    .line 411
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setEnableDoubleTapBlockZoom(Z)V

    .line 415
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setLoadByBrowser(Z)V

    .line 418
    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 421
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 422
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 423
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 424
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setWorkersEnabled(Z)V

    .line 426
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setFilesystemEnabled(Z)V

    .line 430
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->getWebStorageSizeManager()Lcom/android/browser/WebStorageSizeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/WebStorageSizeManager;->getAppCacheMaxSize()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebSettings;->setAppCacheMaxSize(J)V

    .line 431
    invoke-direct {p0}, Lcom/android/browser/BrowserSettings;->getAppCachePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 432
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mContext:Landroid/content/Context;

    const-string v1, "databases"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 433
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mContext:Landroid/content/Context;

    const-string v1, "geolocation"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setGeolocationDatabasePath(Ljava/lang/String;)V

    .line 435
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mContext:Landroid/content/Context;

    const-string v1, "filesystem"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setFileSystemPath(Ljava/lang/String;)V

    .line 437
    return-void
.end method

.method private updateSearchEngine(Z)V
    .registers 6
    .parameter "force"

    .prologue
    .line 535
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->getSearchEngineName()Ljava/lang/String;

    move-result-object v1

    .line 536
    .local v1, searchEngineName:Ljava/lang/String;
    if-nez p1, :cond_16

    iget-object v2, p0, Lcom/android/browser/BrowserSettings;->mSearchEngine:Lcom/android/browser/search/SearchEngine;

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/android/browser/BrowserSettings;->mSearchEngine:Lcom/android/browser/search/SearchEngine;

    invoke-interface {v2}, Lcom/android/browser/search/SearchEngine;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6b

    .line 538
    :cond_16
    iget-object v2, p0, Lcom/android/browser/BrowserSettings;->mSearchEngine:Lcom/android/browser/search/SearchEngine;

    if-eqz v2, :cond_50

    .line 539
    iget-object v2, p0, Lcom/android/browser/BrowserSettings;->mSearchEngine:Lcom/android/browser/search/SearchEngine;

    invoke-interface {v2}, Lcom/android/browser/search/SearchEngine;->supportsVoiceSearch()Z

    move-result v2

    if-eqz v2, :cond_4b

    iget-object v2, p0, Lcom/android/browser/BrowserSettings;->mController:Lcom/android/browser/Controller;

    if-eqz v2, :cond_4b

    iget-object v2, p0, Lcom/android/browser/BrowserSettings;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v2}, Lcom/android/browser/Controller;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v2

    if-eqz v2, :cond_4b

    .line 543
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2f
    iget-object v2, p0, Lcom/android/browser/BrowserSettings;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v2}, Lcom/android/browser/Controller;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v2

    if-ge v0, v2, :cond_4b

    .line 544
    iget-object v2, p0, Lcom/android/browser/BrowserSettings;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v2}, Lcom/android/browser/Controller;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/browser/Tab;->revertVoiceSearchMode()V

    .line 543
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 547
    .end local v0           #i:I
    :cond_4b
    iget-object v2, p0, Lcom/android/browser/BrowserSettings;->mSearchEngine:Lcom/android/browser/search/SearchEngine;

    invoke-interface {v2}, Lcom/android/browser/search/SearchEngine;->close()V

    .line 549
    :cond_50
    iget-object v2, p0, Lcom/android/browser/BrowserSettings;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/browser/search/SearchEngines;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/android/browser/search/SearchEngine;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/BrowserSettings;->mSearchEngine:Lcom/android/browser/search/SearchEngine;

    .line 551
    iget-object v2, p0, Lcom/android/browser/BrowserSettings;->mController:Lcom/android/browser/Controller;

    if-eqz v2, :cond_6b

    iget-object v2, p0, Lcom/android/browser/BrowserSettings;->mSearchEngine:Lcom/android/browser/search/SearchEngine;

    instance-of v2, v2, Lcom/android/browser/InstantSearchEngine;

    if-eqz v2, :cond_6b

    .line 552
    iget-object v2, p0, Lcom/android/browser/BrowserSettings;->mSearchEngine:Lcom/android/browser/search/SearchEngine;

    check-cast v2, Lcom/android/browser/InstantSearchEngine;

    iget-object v3, p0, Lcom/android/browser/BrowserSettings;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v2, v3}, Lcom/android/browser/InstantSearchEngine;->setController(Lcom/android/browser/Controller;)V

    .line 555
    :cond_6b
    return-void
.end method


# virtual methods
.method public acceptCookies()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 1128
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "accept_cookies"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1129
    if-eqz v1, :cond_33

    .line 1131
    :try_start_c
    const-string v2, "browser_policy"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/enterprise/IBrowserPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IBrowserPolicy;

    move-result-object v2

    .line 1134
    const/4 v3, 0x2

    invoke-interface {v2, v3}, Landroid/app/enterprise/IBrowserPolicy;->getBrowserSettingStatus(I)Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1a} :catch_2e

    move-result v2

    if-nez v2, :cond_33

    .line 1136
    :try_start_1d
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "accept_cookies"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_2d} :catch_31

    .line 1140
    :goto_2d
    return v0

    .line 1138
    :catch_2e
    move-exception v0

    move v0, v1

    goto :goto_2d

    :catch_31
    move-exception v1

    goto :goto_2d

    :cond_33
    move v0, v1

    goto :goto_2d
.end method

.method public autofitPages()Z
    .registers 4

    .prologue
    .line 857
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "autofit_pages"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public blockPopupWindows()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 862
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "block_popup_windows"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 863
    if-nez v1, :cond_32

    .line 865
    :try_start_b
    const-string v2, "browser_policy"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/enterprise/IBrowserPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IBrowserPolicy;

    move-result-object v2

    .line 868
    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/app/enterprise/IBrowserPolicy;->getBrowserSettingStatus(I)Z
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_19} :catch_2d

    move-result v2

    if-nez v2, :cond_32

    .line 870
    :try_start_1c
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "block_popup_windows"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_2c} :catch_30

    .line 874
    :goto_2c
    return v0

    .line 872
    :catch_2d
    move-exception v0

    move v0, v1

    goto :goto_2c

    :catch_30
    move-exception v1

    goto :goto_2c

    :cond_32
    move v0, v1

    goto :goto_2c
.end method

.method public clearCache()V
    .registers 3

    .prologue
    .line 580
    invoke-static {}, Landroid/webkit/WebIconDatabase;->getInstance()Landroid/webkit/WebIconDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebIconDatabase;->removeAllIcons()V

    .line 581
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mController:Lcom/android/browser/Controller;

    if-eqz v1, :cond_17

    .line 582
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v1}, Lcom/android/browser/Controller;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 583
    .local v0, current:Landroid/webkit/WebView;
    if-eqz v0, :cond_17

    .line 584
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 587
    .end local v0           #current:Landroid/webkit/WebView;
    :cond_17
    return-void
.end method

.method public clearCookies()V
    .registers 2

    .prologue
    .line 590
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 591
    return-void
.end method

.method public clearDatabases()V
    .registers 2

    .prologue
    .line 616
    invoke-static {}, Landroid/webkit/WebStorage;->getInstance()Landroid/webkit/WebStorage;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebStorage;->deleteAllData()V

    .line 617
    return-void
.end method

.method public clearFormData()V
    .registers 3

    .prologue
    .line 600
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/webkit/WebViewDatabase;->getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebViewDatabase;->clearFormData()V

    .line 601
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mController:Lcom/android/browser/Controller;

    if-eqz v1, :cond_18

    .line 602
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v1}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 603
    .local v0, currentTopView:Landroid/webkit/WebView;
    if-eqz v0, :cond_18

    .line 604
    invoke-virtual {v0}, Landroid/webkit/WebView;->clearFormData()V

    .line 607
    .end local v0           #currentTopView:Landroid/webkit/WebView;
    :cond_18
    return-void
.end method

.method public clearHistory()V
    .registers 3

    .prologue
    .line 594
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 595
    .local v0, resolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Landroid/provider/Browser;->clearHistory(Landroid/content/ContentResolver;)V

    .line 596
    invoke-static {v0}, Landroid/provider/Browser;->clearSearches(Landroid/content/ContentResolver;)V

    .line 597
    return-void
.end method

.method public clearLocationAccess()V
    .registers 2

    .prologue
    .line 620
    invoke-static {}, Landroid/webkit/GeolocationPermissions;->getInstance()Landroid/webkit/GeolocationPermissions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/GeolocationPermissions;->clearAll()V

    .line 621
    return-void
.end method

.method public clearPasswords()V
    .registers 3

    .prologue
    .line 610
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/webkit/WebViewDatabase;->getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;

    move-result-object v0

    .line 611
    .local v0, db:Landroid/webkit/WebViewDatabase;
    invoke-virtual {v0}, Landroid/webkit/WebViewDatabase;->clearUsernamePassword()V

    .line 612
    invoke-virtual {v0}, Landroid/webkit/WebViewDatabase;->clearHttpAuthUsernamePassword()V

    .line 613
    return-void
.end method

.method public enableCpuUploadPath()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 962
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->isDebugEnabled()Z

    move-result v1

    if-nez v1, :cond_8

    .line 965
    :goto_7
    return v0

    :cond_8
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "enable_cpu_upload_path"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_7
.end method

.method public enableGeolocation()Z
    .registers 4

    .prologue
    .line 1163
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "enable_geolocation"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public enableJavascript()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 818
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "enable_javascript"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 819
    if-eqz v1, :cond_34

    .line 821
    :try_start_c
    const-string v2, "browser_policy"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/enterprise/IBrowserPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IBrowserPolicy;

    move-result-object v2

    .line 824
    const/16 v3, 0x10

    invoke-interface {v2, v3}, Landroid/app/enterprise/IBrowserPolicy;->getBrowserSettingStatus(I)Z
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1b} :catch_2f

    move-result v2

    if-nez v2, :cond_34

    .line 826
    :try_start_1e
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "enable_javascript"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_2e} :catch_32

    .line 830
    :goto_2e
    return v0

    .line 828
    :catch_2f
    move-exception v0

    move v0, v1

    goto :goto_2e

    :catch_32
    move-exception v1

    goto :goto_2e

    :cond_34
    move v0, v1

    goto :goto_2e
.end method

.method public enableJavascriptConsole()Z
    .registers 4

    .prologue
    .line 969
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->isDebugEnabled()Z

    move-result v0

    if-nez v0, :cond_8

    .line 970
    const/4 v0, 0x0

    .line 972
    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "javascript_console"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_7
.end method

.method public enableLightTouch()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 1004
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->isDebugEnabled()Z

    move-result v1

    if-nez v1, :cond_8

    .line 1007
    :goto_7
    return v0

    :cond_8
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "enable_light_touch"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_7
.end method

.method public enableNavDump()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 1011
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->isDebugEnabled()Z

    move-result v1

    if-nez v1, :cond_8

    .line 1014
    :goto_7
    return v0

    :cond_8
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "enable_nav_dump"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_7
.end method

.method public enableVisualIndicator()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 955
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->isDebugEnabled()Z

    move-result v1

    if-nez v1, :cond_8

    .line 958
    :goto_7
    return v0

    :cond_8
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "enable_visual_indicator"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_7
.end method

.method public enableWebGL()Z
    .registers 4

    .prologue
    .line 836
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "enable_webgl"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public forceEnableUserScalable()Z
    .registers 4

    .prologue
    .line 726
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "force_userscalable"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getAdjustedDoubleTapZoom(I)I
    .registers 4
    .parameter "rawValue"

    .prologue
    .line 698
    add-int/lit8 v0, p1, -0x5

    mul-int/lit8 p1, v0, 0x5

    .line 699
    add-int/lit8 v0, p1, 0x64

    int-to-float v0, v0

    iget v1, p0, Lcom/android/browser/BrowserSettings;->mFontSizeMult:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getAdjustedTextZoom(I)I
    .registers 4
    .parameter "rawValue"

    .prologue
    .line 689
    add-int/lit8 v0, p1, -0xa

    mul-int/lit8 p1, v0, 0x5

    .line 690
    add-int/lit8 v0, p1, 0x64

    int-to-float v0, v0

    iget v1, p0, Lcom/android/browser/BrowserSettings;->mFontSizeMult:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getAutoBrightness()Z
    .registers 4

    .prologue
    .line 1214
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "autobrightness"

    iget-boolean v2, p0, Lcom/android/browser/BrowserSettings;->mAutoBrightness:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/browser/BrowserSettings;->mAutoBrightness:Z

    .line 1215
    iget-boolean v0, p0, Lcom/android/browser/BrowserSettings;->mAutoBrightness:Z

    return v0
.end method

.method public getAutoFillProfile()Landroid/webkit/WebSettings$AutoFillProfile;
    .registers 2

    .prologue
    .line 634
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mAutofillHandler:Lcom/android/browser/AutofillHandler;

    invoke-virtual {v0}, Lcom/android/browser/AutofillHandler;->waitForLoad()V

    .line 635
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mAutofillHandler:Lcom/android/browser/AutofillHandler;

    invoke-virtual {v0}, Lcom/android/browser/AutofillHandler;->getAutoFillProfile()Landroid/webkit/WebSettings$AutoFillProfile;

    move-result-object v0

    return-object v0
.end method

.method public getBrightness()I
    .registers 4

    .prologue
    .line 1204
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "brightness"

    iget v2, p0, Lcom/android/browser/BrowserSettings;->mBrightness:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/browser/BrowserSettings;->mBrightness:I

    .line 1205
    iget v0, p0, Lcom/android/browser/BrowserSettings;->mBrightness:I

    return v0
.end method

.method public getBrowserVersion()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1230
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mController:Lcom/android/browser/Controller;

    if-eqz v0, :cond_25

    .line 1231
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0}, Lcom/android/browser/Controller;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 1232
    if-eqz v0, :cond_25

    .line 1233
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 1234
    if-eqz v0, :cond_25

    .line 1235
    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    .line 1236
    if-eqz v0, :cond_25

    .line 1237
    const-string v1, "AppleWebKit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1238
    if-lez v1, :cond_24

    .line 1239
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1248
    :cond_24
    :goto_24
    return-object v0

    :cond_25
    const-string v0, ""

    goto :goto_24
.end method

.method getController()Lcom/android/browser/Controller;
    .registers 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mController:Lcom/android/browser/Controller;

    if-eqz v0, :cond_7

    .line 211
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mController:Lcom/android/browser/Controller;

    .line 213
    :goto_6
    return-object v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getDefaultPreloadSetting()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1186
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "browser_default_preload_setting"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1188
    if-nez v0, :cond_1b

    .line 1189
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00fe

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1191
    :cond_1b
    return-object v0
.end method

.method public getDefaultTextEncoding()Ljava/lang/String;
    .registers 4

    .prologue
    .line 883
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "default_text_encoding"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultZoom()Landroid/webkit/WebSettings$ZoomDensity;
    .registers 4

    .prologue
    .line 848
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "default_zoom"

    const-string v2, "MEDIUM"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 849
    invoke-static {v0}, Landroid/webkit/WebSettings$ZoomDensity;->valueOf(Ljava/lang/String;)Landroid/webkit/WebSettings$ZoomDensity;

    move-result-object v0

    return-object v0
.end method

.method public getDoubleTapZoom()I
    .registers 5

    .prologue
    .line 740
    invoke-static {}, Lcom/android/browser/BrowserSettings;->requireInitialization()V

    .line 741
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "double_tap_zoom"

    const/4 v3, 0x5

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 742
    .local v0, doubleTapZoom:I
    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserSettings;->getAdjustedDoubleTapZoom(I)I

    move-result v1

    return v1
.end method

.method public getHomePage()Ljava/lang/String;
    .registers 4

    .prologue
    .line 891
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f09

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 892
    if-eqz v0, :cond_19

    .line 893
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "homepage"

    const-string v2, "content://com.android.browser.home/"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 896
    :goto_18
    return-object v0

    :cond_19
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "homepage"

    iget-object v2, p0, Lcom/android/browser/BrowserSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/browser/BrowserSettings;->getFactoryResetHomeUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_18
.end method

.method public getInvertedContrast()F
    .registers 5

    .prologue
    .line 1101
    const/high16 v0, 0x3f80

    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "inverted_contrast"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x4120

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public getJsEngineFlags()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1018
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->isDebugEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1019
    const-string v0, ""

    .line 1021
    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "js_engine_flags"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public getLayoutAlgorithm()Landroid/webkit/WebSettings$LayoutAlgorithm;
    .registers 3

    .prologue
    .line 499
    sget-object v0, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    .line 500
    .local v0, layoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->autofitPages()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 501
    sget-object v0, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    .line 503
    :cond_a
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 504
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->isSmallScreen()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 505
    sget-object v0, Landroid/webkit/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;

    .line 514
    :cond_18
    :goto_18
    return-object v0

    .line 507
    :cond_19
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->isNormalLayout()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 508
    sget-object v0, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    goto :goto_18

    .line 510
    :cond_22
    sget-object v0, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    goto :goto_18
.end method

.method public getMinimumFontSize()I
    .registers 5

    .prologue
    .line 721
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "min_font_size"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 722
    .local v0, minFont:I
    invoke-static {v0}, Lcom/android/browser/BrowserSettings;->getAdjustedMinimumFontSize(I)I

    move-result v1

    return v1
.end method

.method public getMotionFilter()I
    .registers 4

    .prologue
    .line 1069
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->isDebugEnabled()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1070
    const/4 v0, 0x3

    .line 1072
    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "motion_filter"

    const-string v2, "3"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_7
.end method

.method public getPageCacheCapacity()I
    .registers 2

    .prologue
    .line 518
    invoke-static {}, Lcom/android/browser/BrowserSettings;->requireInitialization()V

    .line 519
    iget v0, p0, Lcom/android/browser/BrowserSettings;->mPageCacheCapacity:I

    return v0
.end method

.method public getPluginState()Landroid/webkit/WebSettings$PluginState;
    .registers 4

    .prologue
    .line 842
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "plugin_state"

    const-string v2, "ON"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 843
    invoke-static {v0}, Landroid/webkit/WebSettings$PluginState;->valueOf(Ljava/lang/String;)Landroid/webkit/WebSettings$PluginState;

    move-result-object v0

    return-object v0
.end method

.method public getPreferences()Landroid/content/SharedPreferences;
    .registers 2

    .prologue
    .line 707
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public getPreloadEnabled()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1195
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "preload_when"

    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->getDefaultPreloadSetting()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSearchEngine()Lcom/android/browser/search/SearchEngine;
    .registers 2

    .prologue
    .line 558
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mSearchEngine:Lcom/android/browser/search/SearchEngine;

    if-nez v0, :cond_8

    .line 559
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/browser/BrowserSettings;->updateSearchEngine(Z)V

    .line 561
    :cond_8
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mSearchEngine:Lcom/android/browser/search/SearchEngine;

    return-object v0
.end method

.method public getSearchEngineName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 809
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "search_engine"

    const-string v2, "google"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextZoom()I
    .registers 5

    .prologue
    .line 730
    invoke-static {}, Lcom/android/browser/BrowserSettings;->requireInitialization()V

    .line 731
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "text_zoom"

    const/16 v3, 0xa

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 732
    .local v0, textZoom:I
    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserSettings;->getAdjustedTextZoom(I)I

    move-result v1

    return v1
.end method

.method public getUserAgent()I
    .registers 4

    .prologue
    .line 944
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->isDebugEnabled()Z

    move-result v0

    if-nez v0, :cond_8

    .line 945
    const/4 v0, 0x0

    .line 947
    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "user_agent"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_7
.end method

.method public getWebStorageSizeManager()Lcom/android/browser/WebStorageSizeManager;
    .registers 2

    .prologue
    .line 523
    invoke-static {}, Lcom/android/browser/BrowserSettings;->requireInitialization()V

    .line 524
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mWebStorageSizeManager:Lcom/android/browser/WebStorageSizeManager;

    return-object v0
.end method

.method public hasDesktopUseragent(Landroid/webkit/WebView;)Z
    .registers 4
    .parameter "view"

    .prologue
    .line 653
    if-eqz p1, :cond_10

    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mCustomUserAgents:Ljava/util/WeakHashMap;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public haveSDCard()Z
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 786
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mContext:Landroid/content/Context;

    const-string v2, "storage"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 787
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v3

    .line 788
    array-length v4, v3

    move v2, v1

    .line 790
    :goto_11
    if-ge v2, v4, :cond_44

    .line 791
    aget-object v5, v3, v2

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v5

    .line 792
    if-eqz v5, :cond_41

    .line 793
    const-string v6, "sd"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    aget-object v5, v3, v2

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v5

    if-eqz v5, :cond_41

    .line 794
    aget-object v2, v3, v2

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 795
    const-string v2, "mounted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 796
    const/4 v0, 0x1

    .line 804
    :goto_3e
    return v0

    :cond_3f
    move v0, v1

    .line 799
    goto :goto_3e

    .line 790
    :cond_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_44
    move v0, v1

    .line 804
    goto :goto_3e
.end method

.method public isAutofillEnabled()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 905
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "autofill_enabled"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 906
    if-eqz v1, :cond_33

    .line 908
    :try_start_c
    const-string v2, "browser_policy"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/enterprise/IBrowserPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IBrowserPolicy;

    move-result-object v2

    .line 911
    const/4 v3, 0x4

    invoke-interface {v2, v3}, Landroid/app/enterprise/IBrowserPolicy;->getBrowserSettingStatus(I)Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1a} :catch_2e

    move-result v2

    if-nez v2, :cond_33

    .line 913
    :try_start_1d
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "autofill_enabled"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_2d} :catch_31

    .line 917
    :goto_2d
    return v0

    .line 915
    :catch_2e
    move-exception v0

    move v0, v1

    goto :goto_2d

    :catch_31
    move-exception v1

    goto :goto_2d

    :cond_33
    move v0, v1

    goto :goto_2d
.end method

.method public isDebugEnabled()Z
    .registers 4

    .prologue
    .line 565
    invoke-static {}, Lcom/android/browser/BrowserSettings;->requireInitialization()V

    .line 566
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "debug_menu"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isDownloadInternalMemory()Z
    .registers 4

    .prologue
    .line 771
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "download_default_storyage"

    const-string v2, "PHONE"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 773
    const-string v1, "MEMORY_CARD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->haveSDCard()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 774
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/BrowserSettings;->bDownloadInternalMemory:Z

    .line 780
    :goto_1b
    iget-boolean v0, p0, Lcom/android/browser/BrowserSettings;->bDownloadInternalMemory:Z

    return v0

    .line 777
    :cond_1e
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/BrowserSettings;->bDownloadInternalMemory:Z

    goto :goto_1b
.end method

.method public isHardwareAccelerated()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 930
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->isDebugEnabled()Z

    move-result v1

    if-nez v1, :cond_8

    .line 933
    :goto_7
    return v0

    :cond_8
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "enable_hardware_accel"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_7
.end method

.method public isNormalLayout()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 990
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->isDebugEnabled()Z

    move-result v1

    if-nez v1, :cond_8

    .line 993
    :goto_7
    return v0

    :cond_8
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "normal_layout"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_7
.end method

.method public isSkiaHardwareAccelerated()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 937
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->isDebugEnabled()Z

    move-result v1

    if-nez v1, :cond_8

    .line 940
    :goto_7
    return v0

    :cond_8
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "enable_hardware_accel_skia"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_7
.end method

.method public isSmallScreen()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 976
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->isDebugEnabled()Z

    move-result v1

    if-nez v1, :cond_8

    .line 979
    :goto_7
    return v0

    :cond_8
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "small_screen"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_7
.end method

.method public isTracing()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 997
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->isDebugEnabled()Z

    move-result v1

    if-nez v1, :cond_8

    .line 1000
    :goto_7
    return v0

    :cond_8
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "enable_tracing"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_7
.end method

.method public isWideViewport()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 983
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->isDebugEnabled()Z

    move-result v1

    if-nez v1, :cond_8

    .line 986
    :goto_7
    return v0

    :cond_8
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "wide_viewport"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_7
.end method

.method public loadImages()Z
    .registers 4

    .prologue
    .line 879
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "load_images"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public loadPageInOverviewMode()Z
    .registers 4

    .prologue
    .line 853
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "load_page"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 5
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    const/4 v1, 0x0

    .line 466
    invoke-direct {p0}, Lcom/android/browser/BrowserSettings;->syncManagedSettings()V

    .line 467
    const-string v0, "search_engine"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 468
    invoke-direct {p0, v1}, Lcom/android/browser/BrowserSettings;->updateSearchEngine(Z)V

    .line 470
    :cond_f
    const-string v0, "use_instant_search"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 471
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/browser/BrowserSettings;->updateSearchEngine(Z)V

    .line 473
    :cond_1b
    const-string v0, "fullscreen"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 474
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0}, Lcom/android/browser/Controller;->getUi()Lcom/android/browser/UI;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 475
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0}, Lcom/android/browser/Controller;->getUi()Lcom/android/browser/UI;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->useFullscreen()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/browser/UI;->setFullscreen(Z)V

    .line 482
    :cond_38
    :goto_38
    return-void

    .line 477
    :cond_39
    const-string v0, "enable_quick_controls"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 478
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0}, Lcom/android/browser/Controller;->getUi()Lcom/android/browser/UI;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 479
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0}, Lcom/android/browser/Controller;->getUi()Lcom/android/browser/UI;

    move-result-object v0

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/browser/UI;->setUseQuickControls(Z)V

    goto :goto_38
.end method

.method public openInBackground()Z
    .registers 4

    .prologue
    .line 813
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "open_in_background"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public rememberPasswords()Z
    .registers 4

    .prologue
    .line 1167
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "remember_passwords"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public resetDefaultPreferences()V
    .registers 7

    .prologue
    .line 625
    iget-object v2, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "last_autologin_time"

    const-wide/16 v4, -0x1

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 626
    .local v0, gal:J
    iget-object v2, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "last_autologin_time"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 630
    invoke-direct {p0}, Lcom/android/browser/BrowserSettings;->syncManagedSettings()V

    .line 631
    return-void
.end method

.method public saveFormdata()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 1146
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "save_formdata"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1147
    if-eqz v1, :cond_33

    .line 1149
    :try_start_c
    const-string v2, "browser_policy"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/enterprise/IBrowserPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IBrowserPolicy;

    move-result-object v2

    .line 1152
    const/4 v3, 0x4

    invoke-interface {v2, v3}, Landroid/app/enterprise/IBrowserPolicy;->getBrowserSettingStatus(I)Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1a} :catch_2e

    move-result v2

    if-nez v2, :cond_33

    .line 1154
    :try_start_1d
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "save_formdata"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_2d} :catch_31

    .line 1158
    :goto_2d
    return v0

    .line 1156
    :catch_2e
    move-exception v0

    move v0, v1

    goto :goto_2d

    :catch_31
    move-exception v1

    goto :goto_2d

    :cond_33
    move v0, v1

    goto :goto_2d
.end method

.method public setAutoBrightness(Z)V
    .registers 5
    .parameter

    .prologue
    .line 1219
    iput-boolean p1, p0, Lcom/android/browser/BrowserSettings;->mAutoBrightness:Z

    .line 1220
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "autobrightness"

    iget-boolean v2, p0, Lcom/android/browser/BrowserSettings;->mAutoBrightness:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1221
    return-void
.end method

.method public setAutoFillProfile(Landroid/webkit/WebSettings$AutoFillProfile;Landroid/os/Message;)V
    .registers 4
    .parameter "profile"
    .parameter "msg"

    .prologue
    .line 639
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mAutofillHandler:Lcom/android/browser/AutofillHandler;

    invoke-virtual {v0}, Lcom/android/browser/AutofillHandler;->waitForLoad()V

    .line 640
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mAutofillHandler:Lcom/android/browser/AutofillHandler;

    invoke-virtual {v0, p1, p2}, Lcom/android/browser/AutofillHandler;->setAutoFillProfile(Landroid/webkit/WebSettings$AutoFillProfile;Landroid/os/Message;)V

    .line 645
    invoke-direct {p0}, Lcom/android/browser/BrowserSettings;->syncManagedSettings()V

    .line 646
    return-void
.end method

.method public setAutofillEnabled(Z)V
    .registers 4
    .parameter

    .prologue
    .line 922
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "autofill_enabled"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 923
    return-void
.end method

.method public setBrightness(I)V
    .registers 5
    .parameter

    .prologue
    .line 1209
    iput p1, p0, Lcom/android/browser/BrowserSettings;->mBrightness:I

    .line 1210
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "brightness"

    iget v2, p0, Lcom/android/browser/BrowserSettings;->mBrightness:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1211
    return-void
.end method

.method public setController(Lcom/android/browser/Controller;)V
    .registers 4
    .parameter "controller"

    .prologue
    .line 196
    iput-object p1, p0, Lcom/android/browser/BrowserSettings;->mController:Lcom/android/browser/Controller;

    .line 197
    sget-boolean v0, Lcom/android/browser/BrowserSettings;->sInitialized:Z

    if-eqz v0, :cond_9

    .line 198
    invoke-direct {p0}, Lcom/android/browser/BrowserSettings;->syncSharedSettings()V

    .line 201
    :cond_9
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mController:Lcom/android/browser/Controller;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mSearchEngine:Lcom/android/browser/search/SearchEngine;

    instance-of v0, v0, Lcom/android/browser/InstantSearchEngine;

    if-eqz v0, :cond_1c

    .line 202
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mSearchEngine:Lcom/android/browser/search/SearchEngine;

    check-cast v0, Lcom/android/browser/InstantSearchEngine;

    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0, v1}, Lcom/android/browser/InstantSearchEngine;->setController(Lcom/android/browser/Controller;)V

    .line 204
    :cond_1c
    return-void
.end method

.method public setDebugEnabled(Z)V
    .registers 5
    .parameter "value"

    .prologue
    .line 570
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 571
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v1, "debug_menu"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 572
    if-nez p1, :cond_13

    .line 574
    const-string v1, "enable_hardware_accel_skia"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 576
    :cond_13
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 577
    return-void
.end method

.method public setDownloadDefaultStorage(Landroid/content/Context;I)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 755
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 757
    const/4 v1, 0x1

    if-ne p2, v1, :cond_14

    .line 758
    const-string v1, "download_default_storyage"

    const-string v2, "PHONE"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 759
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 767
    :goto_13
    return-void

    .line 763
    :cond_14
    const-string v1, "download_default_storyage"

    const-string v2, "MEMORY_CARD"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 764
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_13
.end method

.method public setHomePage(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 900
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "homepage"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 901
    return-void
.end method

.method public setTextZoom(I)V
    .registers 5
    .parameter "percent"

    .prologue
    .line 736
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "text_zoom"

    invoke-static {p1}, Lcom/android/browser/BrowserSettings;->getRawTextZoom(I)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 737
    return-void
.end method

.method public showSecurityWarnings()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 1110
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "show_security_warnings"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1111
    if-nez v1, :cond_33

    .line 1113
    :try_start_b
    const-string v2, "browser_policy"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/enterprise/IBrowserPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IBrowserPolicy;

    move-result-object v2

    .line 1116
    const/16 v3, 0x8

    invoke-interface {v2, v3}, Landroid/app/enterprise/IBrowserPolicy;->getBrowserSettingStatus(I)Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1a} :catch_2e

    move-result v2

    if-eqz v2, :cond_33

    .line 1118
    :try_start_1d
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "show_security_warnings"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_2d} :catch_31

    .line 1122
    :goto_2d
    return v0

    .line 1120
    :catch_2e
    move-exception v0

    move v0, v1

    goto :goto_2d

    :catch_31
    move-exception v1

    goto :goto_2d

    :cond_33
    move v0, v1

    goto :goto_2d
.end method

.method public startManagingSettings(Landroid/webkit/WebSettings;)V
    .registers 5
    .parameter "settings"

    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/android/browser/BrowserSettings;->mNeedsSharedSync:Z

    if-eqz v0, :cond_7

    .line 219
    invoke-direct {p0}, Lcom/android/browser/BrowserSettings;->syncSharedSettings()V

    .line 221
    :cond_7
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mManagedSettings:Ljava/util/LinkedList;

    monitor-enter v1

    .line 222
    :try_start_a
    invoke-direct {p0, p1}, Lcom/android/browser/BrowserSettings;->syncStaticSettings(Landroid/webkit/WebSettings;)V

    .line 223
    invoke-direct {p0, p1}, Lcom/android/browser/BrowserSettings;->syncSetting(Landroid/webkit/WebSettings;)V

    .line 224
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mManagedSettings:Ljava/util/LinkedList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 225
    monitor-exit v1

    .line 226
    return-void

    .line 225
    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_a .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method public toggleDebugSettings()V
    .registers 2

    .prologue
    .line 649
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->isDebugEnabled()Z

    move-result v0

    if-nez v0, :cond_b

    const/4 v0, 0x1

    :goto_7
    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserSettings;->setDebugEnabled(Z)V

    .line 650
    return-void

    .line 649
    :cond_b
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public toggleDesktopUseragent(Landroid/webkit/WebView;)V
    .registers 6
    .parameter "view"

    .prologue
    .line 657
    if-nez p1, :cond_3

    .line 678
    :goto_2
    return-void

    .line 660
    :cond_3
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 661
    .local v1, settings:Landroid/webkit/WebSettings;
    iget-object v2, p0, Lcom/android/browser/BrowserSettings;->mCustomUserAgents:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4b

    .line 662
    iget-object v2, p0, Lcom/android/browser/BrowserSettings;->mCustomUserAgents:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Z)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3f

    .line 664
    sget-object v2, Lcom/android/browser/BrowserSettings;->USER_AGENTS:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->getUserAgent()I

    move-result v3

    aget-object v2, v2, v3

    if-nez v2, :cond_33

    .line 665
    new-instance v0, Lcom/android/browser/BrowserHandleUserAgent;

    invoke-direct {v0}, Lcom/android/browser/BrowserHandleUserAgent;-><init>()V

    .line 667
    .local v0, BrUA:Lcom/android/browser/BrowserHandleUserAgent;
    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserHandleUserAgent;->handleUserAgent(Landroid/webkit/WebSettings;)V

    goto :goto_2

    .line 670
    .end local v0           #BrUA:Lcom/android/browser/BrowserHandleUserAgent;
    :cond_33
    sget-object v2, Lcom/android/browser/BrowserSettings;->USER_AGENTS:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->getUserAgent()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    goto :goto_2

    .line 673
    :cond_3f
    sget-object v2, Lcom/android/browser/BrowserSettings;->USER_AGENTS:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->getUserAgent()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    goto :goto_2

    .line 675
    :cond_4b
    iget-object v2, p0, Lcom/android/browser/BrowserSettings;->mCustomUserAgents:Ljava/util/WeakHashMap;

    const-string v3, "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.34 Safari/534.24"

    invoke-virtual {v2, v1, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 676
    const-string v2, "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.34 Safari/534.24"

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public useFullscreen()Z
    .registers 4

    .prologue
    .line 1093
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "fullscreen"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public useInstantSearch()Z
    .registers 4

    .prologue
    .line 1089
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "use_instant_search"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public useInvertedRendering()Z
    .registers 4

    .prologue
    .line 1097
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "inverted"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public useMostVisitedHomepage()Z
    .registers 3

    .prologue
    .line 1085
    const-string v0, "content://com.android.browser.home/"

    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public useQuickControls()Z
    .registers 4

    .prologue
    .line 1081
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "enable_quick_controls"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
