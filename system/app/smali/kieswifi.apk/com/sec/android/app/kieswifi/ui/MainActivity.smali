.class public Lcom/sec/android/app/kieswifi/ui/MainActivity;
.super Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity;
.source "MainActivity.java"

# interfaces
.implements Lcom/samsung/api/DeviceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/kieswifi/ui/MainActivity$AnimationThread;
    }
.end annotation


# static fields
.field public static appStart:Z

.field private static mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;


# instance fields
.field private deviceAdapter:Lcom/sec/android/app/kieswifi/view/UPNPContentsAdapter;

.field private deviceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/api/DeviceItem;",
            ">;"
        }
    .end annotation
.end field

.field private deviceListView:Landroid/widget/ListView;

.field private emptytext:Landroid/widget/TextView;

.field private emptyview:Landroid/widget/ImageView;

.field private enterwpa:Landroid/widget/RelativeLayout;

.field private headerText:Landroid/widget/TextView;

.field private headerText_search:Landroid/widget/TextView;

.field private headerText_search_h:Landroid/widget/TextView;

.field private mGuiHandler:Landroid/os/Handler;

.field private mMainIsResume:Z

.field private mMotionListener:Landroid/hardware/motion/MRListener;

.field private mRefreshButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

.field private mStopAnimation:Z

.field public mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field public mainPause:Z

.field private selectedServer:Lcom/samsung/api/DeviceItem;

.field private server_header:Landroid/widget/RelativeLayout;

.field private server_search_header:Landroid/widget/RelativeLayout;

.field upnpConstants:Lcom/sec/android/app/kieswifi/UpnpConstants;

.field wifiApEnabled:Z

.field private wpa:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 83
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->appStart:Z

    .line 96
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity;-><init>()V

    .line 67
    iput-object v1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->deviceAdapter:Lcom/sec/android/app/kieswifi/view/UPNPContentsAdapter;

    .line 68
    iput-object v1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->deviceList:Ljava/util/List;

    .line 69
    iput-object v1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->selectedServer:Lcom/samsung/api/DeviceItem;

    .line 70
    iput-object v1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->deviceListView:Landroid/widget/ListView;

    .line 71
    iput-object v1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->server_search_header:Landroid/widget/RelativeLayout;

    .line 72
    iput-object v1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->server_header:Landroid/widget/RelativeLayout;

    .line 73
    iput-object v1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->headerText:Landroid/widget/TextView;

    .line 74
    iput-object v1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->headerText_search:Landroid/widget/TextView;

    .line 75
    iput-object v1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->headerText_search_h:Landroid/widget/TextView;

    .line 76
    iput-object v1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->emptyview:Landroid/widget/ImageView;

    .line 77
    iput-object v1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->emptytext:Landroid/widget/TextView;

    .line 78
    iput-object v1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->wpa:Landroid/widget/TextView;

    .line 79
    iput-object v1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->enterwpa:Landroid/widget/RelativeLayout;

    .line 80
    iput-boolean v2, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->wifiApEnabled:Z

    .line 86
    iput-boolean v2, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->mMainIsResume:Z

    .line 87
    iput-object v1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->mGuiHandler:Landroid/os/Handler;

    .line 88
    new-instance v0, Lcom/sec/android/app/kieswifi/UpnpConstants;

    invoke-direct {v0}, Lcom/sec/android/app/kieswifi/UpnpConstants;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->upnpConstants:Lcom/sec/android/app/kieswifi/UpnpConstants;

    .line 90
    iput-object v1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 91
    iput-object v1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 93
    iput-boolean v2, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->mainPause:Z

    .line 97
    iput-object v1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->mMotionListener:Landroid/hardware/motion/MRListener;

    .line 274
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/kieswifi/ui/MainActivity;)Lcom/samsung/api/DeviceItem;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->selectedServer:Lcom/samsung/api/DeviceItem;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/kieswifi/ui/MainActivity;Lcom/samsung/api/DeviceItem;)Lcom/samsung/api/DeviceItem;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->selectedServer:Lcom/samsung/api/DeviceItem;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/kieswifi/ui/MainActivity;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->deviceList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/kieswifi/ui/MainActivity;)Landroid/widget/RelativeLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->enterwpa:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/kieswifi/ui/MainActivity;)Lcom/sec/android/app/kieswifi/view/UPNPContentsAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->deviceAdapter:Lcom/sec/android/app/kieswifi/view/UPNPContentsAdapter;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/kieswifi/ui/MainActivity;)Landroid/widget/RelativeLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->server_header:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/kieswifi/ui/MainActivity;)Landroid/widget/RelativeLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->server_search_header:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/android/app/kieswifi/ui/MainActivity;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->mGuiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/kieswifi/ui/MainActivity;)Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->mRefreshButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/kieswifi/ui/MainActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/sec/android/app/kieswifi/ui/MainActivity;->destroyKiesWifi()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/kieswifi/ui/MainActivity;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->headerText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/kieswifi/ui/MainActivity;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->headerText_search:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/kieswifi/ui/MainActivity;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->headerText_search_h:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/kieswifi/ui/MainActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->mStopAnimation:Z

    return v0
.end method

.method static synthetic access$702(Lcom/sec/android/app/kieswifi/ui/MainActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->mStopAnimation:Z

    return p1
.end method

.method static synthetic access$800(Lcom/sec/android/app/kieswifi/ui/MainActivity;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->emptyview:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/kieswifi/ui/MainActivity;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->emptytext:Landroid/widget/TextView;

    return-object v0
.end method

.method private destroyKiesWifi()V
    .registers 3

    .prologue
    .line 454
    const/4 v0, 0x1

    const-string v1, "destroyKiesWifi"

    invoke-static {v0, v1}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 455
    invoke-direct {p0}, Lcom/sec/android/app/kieswifi/ui/MainActivity;->terminateDmc()Z

    .line 456
    invoke-static {}, Lcom/sec/android/app/kieswifi/UpnpManager;->getInstance()Lcom/sec/android/app/kieswifi/UpnpManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/kieswifi/UpnpManager;->terminate()V

    .line 458
    return-void
.end method

.method private fillDeviceList()V
    .registers 5

    .prologue
    .line 536
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->mGuiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_d

    .line 537
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->mGuiHandler:Landroid/os/Handler;

    const/16 v1, 0x6e

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 538
    :cond_d
    return-void
.end method

.method private setView()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 390
    const/4 v0, 0x0

    .line 391
    .local v0, orientation:I
    invoke-virtual {p0}, Lcom/sec/android/app/kieswifi/ui/MainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 393
    if-eq v0, v5, :cond_16

    const/4 v1, 0x3

    if-ne v0, v1, :cond_59

    .line 395
    :cond_16
    const v1, 0x7f050031

    invoke-virtual {p0, v1}, Lcom/sec/android/app/kieswifi/ui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->emptyview:Landroid/widget/ImageView;

    .line 396
    const v1, 0x7f050032

    invoke-virtual {p0, v1}, Lcom/sec/android/app/kieswifi/ui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->emptytext:Landroid/widget/TextView;

    .line 397
    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->headerText_search:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 398
    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->headerText_search_h:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 400
    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->enterwpa:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 402
    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->deviceList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4e

    .line 404
    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->emptyview:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 405
    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->emptytext:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 438
    :cond_4d
    :goto_4d
    return-void

    .line 409
    :cond_4e
    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->emptyview:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 410
    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->emptytext:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4d

    .line 415
    :cond_59
    const v1, 0x7f050024

    invoke-virtual {p0, v1}, Lcom/sec/android/app/kieswifi/ui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->emptyview:Landroid/widget/ImageView;

    .line 416
    const v1, 0x7f050025

    invoke-virtual {p0, v1}, Lcom/sec/android/app/kieswifi/ui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->emptytext:Landroid/widget/TextView;

    .line 417
    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->headerText_search:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 418
    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->headerText_search_h:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 420
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deviceList.size() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->deviceList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 422
    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->deviceList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_a8

    .line 424
    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->emptyview:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 425
    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->emptytext:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4d

    .line 429
    :cond_a8
    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->emptyview:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 430
    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->emptytext:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 432
    iget-boolean v1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->wifiApEnabled:Z

    if-eqz v1, :cond_4d

    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_cb

    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 434
    :cond_cb
    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->enterwpa:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_4d
.end method

.method private startDmc()Z
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 300
    const-string v3, "startDmc"

    invoke-static {v2, v3}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 301
    invoke-static {}, Lcom/samsung/api/SyncControllerAPI;->getInstance()Lcom/samsung/api/SyncControllerAPI;

    move-result-object v0

    .line 303
    .local v0, dmc:Lcom/samsung/api/SyncControllerAPI;
    :try_start_a
    invoke-virtual {v0}, Lcom/samsung/api/SyncControllerAPI;->startDMC()V
    :try_end_d
    .catch Lcom/samsung/api/DMCAPIException; {:try_start_a .. :try_end_d} :catch_e

    .line 308
    :goto_d
    return v2

    .line 304
    :catch_e
    move-exception v1

    .line 305
    .local v1, e:Lcom/samsung/api/DMCAPIException;
    invoke-virtual {v1}, Lcom/samsung/api/DMCAPIException;->printStackTrace()V

    .line 306
    const/4 v2, 0x0

    goto :goto_d
.end method

.method private terminateDmc()Z
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 312
    const-string v3, "terminateDmc"

    invoke-static {v2, v3}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 313
    invoke-static {}, Lcom/samsung/api/SyncControllerAPI;->getInstance()Lcom/samsung/api/SyncControllerAPI;

    move-result-object v0

    .line 315
    .local v0, dmc:Lcom/samsung/api/SyncControllerAPI;
    :try_start_a
    invoke-virtual {v0}, Lcom/samsung/api/SyncControllerAPI;->terminateDMC()V
    :try_end_d
    .catch Lcom/samsung/api/DMCAPIException; {:try_start_a .. :try_end_d} :catch_e

    .line 320
    :goto_d
    return v2

    .line 316
    :catch_e
    move-exception v1

    .line 317
    .local v1, e:Lcom/samsung/api/DMCAPIException;
    invoke-virtual {v1}, Lcom/samsung/api/DMCAPIException;->printStackTrace()V

    .line 318
    const/4 v2, 0x0

    goto :goto_d
.end method


# virtual methods
.method public deviceAdded(Lcom/samsung/api/DeviceItem;)V
    .registers 4
    .parameter "dev"

    .prologue
    .line 441
    const/4 v0, 0x1

    const-string v1, "deviceAdded"

    invoke-static {v0, v1}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 442
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->deviceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_13

    .line 443
    invoke-direct {p0}, Lcom/sec/android/app/kieswifi/ui/MainActivity;->fillDeviceList()V

    .line 444
    :cond_13
    return-void
.end method

.method public deviceRemoved(Lcom/samsung/api/DeviceItem;)V
    .registers 4
    .parameter "dev"

    .prologue
    .line 447
    const/4 v0, 0x1

    const-string v1, "deviceRemoved"

    invoke-static {v0, v1}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 448
    invoke-direct {p0}, Lcom/sec/android/app/kieswifi/ui/MainActivity;->fillDeviceList()V

    .line 451
    return-void
.end method

.method public notifyActivityEvent(I)V
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MainActivity notifyActivityEvent:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 462
    const/16 v0, 0x2f3

    if-ne p1, v0, :cond_22

    .line 464
    invoke-virtual {p0}, Lcom/sec/android/app/kieswifi/ui/MainActivity;->refreshList()V

    .line 510
    :cond_1e
    :goto_1e
    invoke-super {p0, p1}, Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity;->notifyActivityEvent(I)V

    .line 511
    :cond_21
    return-void

    .line 466
    :cond_22
    const/16 v0, 0x2f1

    if-ne p1, v0, :cond_38

    .line 468
    const-string v0, "ALL_ACTIVITY_KILL_CODE"

    invoke-static {v1, v0}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 469
    invoke-virtual {p0}, Lcom/sec/android/app/kieswifi/ui/MainActivity;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 471
    invoke-direct {p0}, Lcom/sec/android/app/kieswifi/ui/MainActivity;->destroyKiesWifi()V

    .line 472
    invoke-virtual {p0}, Lcom/sec/android/app/kieswifi/ui/MainActivity;->finish()V

    goto :goto_1e

    .line 475
    :cond_38
    const/16 v0, 0x2f2

    if-ne p1, v0, :cond_1e

    .line 477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "this :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 478
    const/4 v0, 0x0

    .line 480
    :goto_57
    if-nez v0, :cond_21

    .line 482
    const-string v2, "START_WARNING_ACTIVITY : !showThePopup"

    invoke-static {v1, v2}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 483
    iget-boolean v2, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->mainPause:Z

    if-nez v2, :cond_21

    .line 487
    invoke-virtual {p0}, Lcom/sec/android/app/kieswifi/ui/MainActivity;->hasWindowFocus()Z

    move-result v2

    if-eqz v2, :cond_96

    .line 489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "START_WARNING_ACTIVITY :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/kieswifi/ui/MainActivity;->hasWindowFocus()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 491
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/kieswifi/warningview/NetworkWarningActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 492
    const/16 v2, 0x3e9

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/kieswifi/ui/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v0, v1

    .line 493
    goto :goto_57

    .line 494
    :cond_96
    iget-boolean v2, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->mMainIsResume:Z

    if-nez v2, :cond_9c

    move v0, v1

    .line 496
    goto :goto_57

    .line 500
    :cond_9c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "START_WARNING_ACTIVITY :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/kieswifi/ui/MainActivity;->hasWindowFocus()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 502
    const-wide/16 v2, 0x1f4

    :try_start_b8
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_bb
    .catch Ljava/lang/InterruptedException; {:try_start_b8 .. :try_end_bb} :catch_bc

    goto :goto_57

    .line 503
    :catch_bc
    move-exception v2

    .line 504
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_57
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 527
    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult - Result Code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 529
    const/4 v0, -0x1

    if-ne p2, v0, :cond_20

    .line 530
    invoke-direct {p0}, Lcom/sec/android/app/kieswifi/ui/MainActivity;->destroyKiesWifi()V

    .line 531
    invoke-virtual {p0}, Lcom/sec/android/app/kieswifi/ui/MainActivity;->finish()V

    .line 533
    :cond_20
    return-void
.end method

.method public onBackPressed()V
    .registers 3

    .prologue
    .line 520
    invoke-super {p0}, Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity;->onBackPressed()V

    .line 521
    invoke-static {}, Lcom/sec/android/app/kieswifi/UpnpManager;->getInstance()Lcom/sec/android/app/kieswifi/UpnpManager;

    move-result-object v0

    const/16 v1, 0x2f1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/kieswifi/UpnpManager;->notifyToActivity(I)V

    .line 522
    invoke-direct {p0}, Lcom/sec/android/app/kieswifi/ui/MainActivity;->destroyKiesWifi()V

    .line 523
    invoke-virtual {p0}, Lcom/sec/android/app/kieswifi/ui/MainActivity;->finish()V

    .line 524
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .parameter "newConfig"

    .prologue
    const/16 v2, 0x8

    .line 375
    invoke-super {p0, p1}, Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 376
    const/4 v0, 0x1

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 377
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->emptyview:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 378
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->emptytext:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 379
    invoke-direct {p0}, Lcom/sec/android/app/kieswifi/ui/MainActivity;->setView()V

    .line 380
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 102
    invoke-super {p0, p1}, Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 104
    invoke-virtual {p0}, Lcom/sec/android/app/kieswifi/ui/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 106
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/sec/android/app/kieswifi/ui/MainActivity;->setContentView(I)V

    .line 112
    sput-boolean v4, Lcom/sec/android/app/kieswifi/ui/MainActivity;->appStart:Z

    .line 114
    const v0, 0x7f050028

    invoke-virtual {p0, v0}, Lcom/sec/android/app/kieswifi/ui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->deviceListView:Landroid/widget/ListView;

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->deviceList:Ljava/util/List;

    .line 116
    new-instance v0, Lcom/sec/android/app/kieswifi/view/UPNPContentsAdapter;

    const v1, 0x7f030005

    iget-object v2, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->deviceList:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/android/app/kieswifi/view/UPNPContentsAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->deviceAdapter:Lcom/sec/android/app/kieswifi/view/UPNPContentsAdapter;

    .line 117
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->deviceListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->deviceAdapter:Lcom/sec/android/app/kieswifi/view/UPNPContentsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 118
    const v0, 0x7f050021

    invoke-virtual {p0, v0}, Lcom/sec/android/app/kieswifi/ui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->headerText:Landroid/widget/TextView;

    .line 119
    const v0, 0x7f05002c

    invoke-virtual {p0, v0}, Lcom/sec/android/app/kieswifi/ui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->headerText_search:Landroid/widget/TextView;

    .line 120
    const v0, 0x7f05002d

    invoke-virtual {p0, v0}, Lcom/sec/android/app/kieswifi/ui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->headerText_search_h:Landroid/widget/TextView;

    .line 121
    const v0, 0x7f05002b

    invoke-virtual {p0, v0}, Lcom/sec/android/app/kieswifi/ui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->server_search_header:Landroid/widget/RelativeLayout;

    .line 122
    const v0, 0x7f050020

    invoke-virtual {p0, v0}, Lcom/sec/android/app/kieswifi/ui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->server_header:Landroid/widget/RelativeLayout;

    .line 123
    const v0, 0x7f050027

    invoke-virtual {p0, v0}, Lcom/sec/android/app/kieswifi/ui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->wpa:Landroid/widget/TextView;

    .line 124
    const v0, 0x7f050026

    invoke-virtual {p0, v0}, Lcom/sec/android/app/kieswifi/ui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->enterwpa:Landroid/widget/RelativeLayout;

    .line 126
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/kieswifi/ui/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 127
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->wifiApEnabled:Z

    .line 128
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 130
    iget-boolean v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->wifiApEnabled:Z

    if-eqz v0, :cond_dc

    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_bb

    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_dc

    .line 132
    :cond_bb
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->wpa:Landroid/widget/TextView;

    const v1, 0x7f070012

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/kieswifi/ui/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->enterwpa:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 136
    :cond_dc
    const v0, 0x7f05002a

    invoke-virtual {p0, v0}, Lcom/sec/android/app/kieswifi/ui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    iput-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->mRefreshButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 138
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->deviceListView:Landroid/widget/ListView;

    new-instance v1, Lcom/sec/android/app/kieswifi/ui/MainActivity$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/kieswifi/ui/MainActivity$1;-><init>(Lcom/sec/android/app/kieswifi/ui/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 153
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->mRefreshButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    new-instance v1, Lcom/sec/android/app/kieswifi/ui/MainActivity$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/kieswifi/ui/MainActivity$2;-><init>(Lcom/sec/android/app/kieswifi/ui/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    const-string v0, "motion_recognition"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/kieswifi/ui/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/motion/MotionRecognitionManager;

    sput-object v0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 163
    new-instance v0, Lcom/sec/android/app/kieswifi/ui/MainActivity$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/kieswifi/ui/MainActivity$3;-><init>(Lcom/sec/android/app/kieswifi/ui/MainActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->mMotionListener:Landroid/hardware/motion/MRListener;

    .line 177
    new-instance v0, Lcom/sec/android/app/kieswifi/ui/MainActivity$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/kieswifi/ui/MainActivity$4;-><init>(Lcom/sec/android/app/kieswifi/ui/MainActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->mGuiHandler:Landroid/os/Handler;

    .line 259
    iput-boolean v4, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->mStopAnimation:Z

    .line 260
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 514
    const/4 v0, 0x1

    const-string v1, "KiesWifi Main onDertroy"

    invoke-static {v0, v1}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 515
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->appStart:Z

    .line 516
    invoke-super {p0}, Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity;->onDestroy()V

    .line 517
    return-void
.end method

.method public onLowMemory()V
    .registers 1

    .prologue
    .line 343
    invoke-super {p0}, Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity;->onLowMemory()V

    .line 344
    invoke-direct {p0}, Lcom/sec/android/app/kieswifi/ui/MainActivity;->destroyKiesWifi()V

    .line 345
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 383
    invoke-direct {p0}, Lcom/sec/android/app/kieswifi/ui/MainActivity;->destroyKiesWifi()V

    .line 384
    invoke-virtual {p0}, Lcom/sec/android/app/kieswifi/ui/MainActivity;->finish()V

    .line 385
    const/4 v0, 0x1

    return v0
.end method

.method protected onPause()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 328
    const-string v0, "onPause_mainactivity"

    invoke-static {v2, v0}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 331
    sget-object v0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_11

    .line 332
    sget-object v0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 335
    :cond_11
    iput-boolean v2, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->mainPause:Z

    .line 337
    invoke-static {}, Lcom/sec/android/app/kieswifi/UpnpManager;->getInstance()Lcom/sec/android/app/kieswifi/UpnpManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/kieswifi/UpnpManager;->removeActivityDestroyListener(Lcom/sec/android/app/kieswifi/ui/IActivityListener;)V

    .line 339
    invoke-super {p0}, Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity;->onPause()V

    .line 340
    return-void
.end method

.method protected onResume()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 348
    invoke-super {p0}, Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity;->onResume()V

    .line 349
    const-string v0, "onResume"

    invoke-static {v4, v0}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 351
    invoke-direct {p0}, Lcom/sec/android/app/kieswifi/ui/MainActivity;->setView()V

    .line 353
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->mGuiHandler:Landroid/os/Handler;

    const/16 v1, 0x3f1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 356
    sget-object v0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_20

    .line 357
    sget-object v0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->mMotionListener:Landroid/hardware/motion/MRListener;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    .line 361
    :cond_20
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->mRefreshButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setClickable(Z)V

    .line 362
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->mRefreshButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    .line 364
    iput-boolean v3, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->mainPause:Z

    .line 366
    invoke-static {}, Lcom/sec/android/app/kieswifi/UpnpManager;->getInstance()Lcom/sec/android/app/kieswifi/UpnpManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/kieswifi/UpnpManager;->init(Landroid/content/Context;)V

    .line 367
    invoke-static {}, Lcom/sec/android/app/kieswifi/UpnpManager;->getInstance()Lcom/sec/android/app/kieswifi/UpnpManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/kieswifi/UpnpManager;->addActivityDestroyListener(Lcom/sec/android/app/kieswifi/ui/IActivityListener;)V

    .line 368
    invoke-static {}, Lcom/samsung/api/SyncControllerAPI;->getInstance()Lcom/samsung/api/SyncControllerAPI;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/api/SyncControllerAPI;->addDeviceChangeListener(Lcom/samsung/api/DeviceChangeListener;)V

    .line 370
    iput-boolean v4, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->mMainIsResume:Z

    .line 371
    return-void
.end method

.method protected onStop()V
    .registers 1

    .prologue
    .line 324
    invoke-super {p0}, Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity;->onStop()V

    .line 325
    return-void
.end method

.method public refreshList()V
    .registers 4

    .prologue
    .line 263
    const/4 v1, 0x1

    const-string v2, "refreshList"

    invoke-static {v1, v2}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 264
    invoke-direct {p0}, Lcom/sec/android/app/kieswifi/ui/MainActivity;->terminateDmc()Z

    .line 265
    invoke-direct {p0}, Lcom/sec/android/app/kieswifi/ui/MainActivity;->startDmc()Z

    .line 267
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->mStopAnimation:Z

    .line 268
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/kieswifi/ui/MainActivity$AnimationThread;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/kieswifi/ui/MainActivity$AnimationThread;-><init>(Lcom/sec/android/app/kieswifi/ui/MainActivity;Lcom/sec/android/app/kieswifi/ui/MainActivity$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 269
    .local v0, animationThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 271
    invoke-direct {p0}, Lcom/sec/android/app/kieswifi/ui/MainActivity;->fillDeviceList()V

    .line 272
    return-void
.end method
